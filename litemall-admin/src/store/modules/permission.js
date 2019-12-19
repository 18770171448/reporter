import { asyncRouterMap, constantRouterMap } from '@/router'

/**
 * @param {这里的代码说白了就是干了一件事，通过用户的权限和之前在router.js里面asyncRouterMap的每一个页面所需要的权限做匹配，最后返回一个该用户能够访问路由有哪些
 * @param {*} route
 */

/**
 * 通过meta.perms判断是否与当前用户权限匹配
 * @param perms
 * @param route
 */
function hasPermission(perms, route) {
  if (route.meta && route.meta.perms) {
    return perms.some(perm => route.meta.perms.includes(perm))
  } else {
    return true
  }
}

/**
 * 递归过滤异步路由表，返回符合用户角色权限的路由表
 * @param routes asyncRouterMap
 * @param perms
 */
function filterAsyncRouter(routes, perms) {
  const res = []

  routes.forEach(route => {
    const tmp = { ...route }
    if (tmp.children) {
      tmp.children = filterAsyncRouter(tmp.children, perms)
      if (tmp.children && tmp.children.length > 0) {
        res.push(tmp)
      }
    } else {
      if (hasPermission(perms, tmp)) {
        res.push(tmp)
      }
    }
  })

  return res
}

const permission = {
  state: {
    routers: constantRouterMap,
    addRouters: []
  },
  mutations: {
    SET_ROUTERS: (state, routers) => {
      state.addRouters = routers
      state.routers = constantRouterMap.concat(routers) // concat() 方法用于连接两个或多个数组。该方法不会改变现有的数组，而仅仅会返回被连接数组的一个副本。
    }
  },
  actions: {
    GenerateRoutes({ commit }, data) {
      return new Promise(resolve => {
        const { perms } = data
        let accessedRouters
        if (perms.includes('*')) {
          accessedRouters = asyncRouterMap
        } else {
          accessedRouters = filterAsyncRouter(asyncRouterMap, perms)
        }
        commit('SET_ROUTERS', accessedRouters) // 保存用户权限标识集合
        resolve()
      })
    }
  }
}

export default permission
