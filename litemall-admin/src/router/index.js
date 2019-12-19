import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

/* Layout */
import Layout from '@/views/layout/Layout'

/** note: Submenu only appear when children.length>=1
 *  detail see  https://panjiachen.github.io/vue-element-admin-site/guide/essentials/router-and-nav.html
 **/

/**
* hidden: true                   if `hidden:true` will not show in the sidebar(default is false)
* alwaysShow: true               if set true, will always show the root menu, whatever its child routes length
*                                if not set alwaysShow, only more than one route under the children
*                                it will becomes nested mode, otherwise not show the root menu
* redirect: noredirect           if `redirect:noredirect` will no redirect in the breadcrumb
* name:'router-name'             the name is used by <keep-alive> (must set!!!)
* meta : {
    perms: ['GET /aaa','POST /bbb']     will control the page perms (you can set multiple perms)
    title: 'title'               the name show in submenu and breadcrumb (recommend set)
    icon: 'svg-name'             the icon show in the sidebar,
    noCache: true                if true ,the page will no be cached(default is false)
  }
**/
export const constantRouterMap = [
  {
    path: '/redirect',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '/redirect/:path*',
        component: () => import('@/views/redirect/index')
      }
    ]
  },
  {
    path: '/login',
    component: () => import('@/views/login/index'),
    hidden: true
  },
  {
    path: '/auth-redirect',
    component: () => import('@/views/login/authredirect'),
    hidden: true
  },
  {
    path: '/404',
    component: () => import('@/views/errorPage/404'),
    hidden: true
  },
  {
    path: '/401',
    component: () => import('@/views/errorPage/401'),
    hidden: true
  },
  {
    path: '',
    component: Layout,
    redirect: 'dashboard',
    children: [
      {
        path: 'dashboard',
        component: () => import('@/views/dashboard/index'),
        name: 'Dashboard',
        meta: { title: '首页', icon: 'dashboard', noCache: true }
      }
    ]
  }
]

export default new Router({
  // mode: 'history', // require service support
  scrollBehavior: () => ({ y: 0 }),
  routes: constantRouterMap
})

export const asyncRouterMap = [
  {
    path: '/user',
    component: Layout,
    redirect: 'noredirect',
    alwaysShow: true,
    name: 'userManage',
    meta: {
      title: '用户管理',
      icon: 'chart'
    },
    children: [
      {
        path: 'user',
        component: () => import('@/views/user/user'),
        name: 'user',
        meta: {
          perms: ['GET /admin/user/list'],
          title: '记者管理',
          noCache: true
        }
      },
      {
        path: 'history',
        component: () => import('@/views/user/history'),
        name: 'history',
        meta: {
          perms: ['GET /admin/history/list'],
          title: '搜索历史',
          noCache: true
        }
      },
      {
        path: 'admin',
        component: () => import('@/views/sys/admin'),
        name: 'admin',
        meta: {
          perms: ['GET /admin/admin/list', 'POST /admin/admin/create', 'POST /admin/admin/update', 'POST /admin/admin/delete'],
          title: '管理员',
          noCache: true
        }
      }
    ]
  },
  // {
  //   path: '/promotion',
  //   component: Layout,
  //   redirect: 'noredirect',
  //   alwaysShow: true,
  //   name: 'promotionManage',
  //   meta: {
  //     title: '文章管理',
  //     icon: 'chart'
  //   },
  //   children: [
  //     {
  //       path: 'topic',
  //       component: () => import('@/views/promotion/topic'),
  //       name: 'topic',
  //       meta: {
  //         perms: ['GET /admin/topic/list', 'POST /admin/topic/create', 'GET /admin/topic/read', 'POST /admin/topic/update', 'POST /admin/topic/delete'],
  //         title: '新闻稿',
  //         noCache: true
  //       }
  //     },
  //     {
  //       path: 'topic2',
  //       component: () => import('@/views/promotion/topic2'),
  //       name: 'topic2',
  //       meta: {
  //         perms: ['GET /admin/topic/list', 'POST /admin/topic/create', 'GET /admin/topic/read', 'POST /admin/topic/update', 'POST /admin/topic/delete'],
  //         title: '文学稿',
  //         noCache: true
  //       }
  //     },
  //     {
  //       path: 'topic3',
  //       component: () => import('@/views/promotion/topic3'),
  //       name: 'topic3',
  //       meta: {
  //         perms: ['GET /admin/topic/list', 'POST /admin/topic/create', 'GET /admin/topic/read', 'POST /admin/topic/update', 'POST /admin/topic/delete'],
  //         title: '微信推文',
  //         noCache: true
  //       }
  //     },
  //     {
  //       path: 'create',
  //       component: () => import('@/views/goods/create'),
  //       name: 'goodsCreate',
  //       meta: {
  //         perms: ['POST /admin/goods/create'],
  //         title: '发布文章',
  //         noCache: true
  //       }
  //     },
  //     {
  //       path: 'comment',
  //       component: () => import('@/views/goods/comment'),
  //       name: 'goodsComment',
  //       meta: {
  //         perms: ['GET /admin/comment/list', 'POST /admin/comment/delete'],
  //         title: '文章评论',
  //         noCache: true
  //       }
  //     },
  //     {
  //       path: 'topic-create',
  //       component: () => import('@/views/promotion/topicCreate'),
  //       name: 'topicCreate',
  //       meta: {
  //         perms: ['POST /admin/topic/create'],
  //         title: '发布文章',
  //         noCache: true
  //       },
  //       hidden: true
  //     },
  //     {
  //       path: 'topic-edit',
  //       component: () => import('@/views/promotion/topicEdit'),
  //       name: 'topicEdit',
  //       meta: {
  //         perms: ['GET /admin/topic/read', 'POST /admin/topic/update'],
  //         title: '文章编辑',
  //         noCache: true
  //       },
  //       hidden: true
  //     }
  //   ]
  // },
  {
    path: '/goods',
    component: Layout,
    redirect: 'noredirect',
    alwaysShow: true,
    name: 'goodsManage',
    meta: {
      title: '文章管理',
      icon: 'chart'
    },
    children: [
      {
        path: 'list',
        component: () => import('@/views/goods/list'),
        name: 'goodsList',
        meta: {
          perms: ['GET /admin/goods/list', 'POST /admin/goods/delete'],
          title: '文章列表',
          noCache: true
        }
      },
      {
        path: 'create',
        component: () => import('@/views/goods/create'),
        name: 'goodsCreate',
        meta: {
          perms: ['POST /admin/goods/create'],
          title: '发布文章',
          noCache: true
        }
      },
      {
        path: 'edit',
        component: () => import('@/views/goods/edit'),
        name: 'goodsEdit',
        meta: {
          perms: ['GET /admin/goods/detail', 'POST /admin/goods/update', 'POST /admin/goods/catAndBrand'],
          title: '文章编辑',
          noCache: true
        },
        hidden: true
      },
      {
        path: 'comment',
        component: () => import('@/views/goods/comment'),
        name: 'goodsComment',
        meta: {
          perms: ['GET /admin/comment/list', 'POST /admin/comment/delete'],
          title: '文章评论',
          noCache: true
        }
      }
    ]
  },
  {
    path: '/file',
    component: Layout,
    redirect: 'noredirect',
    alwaysShow: true,
    name: 'promotionManage',
    meta: {
      title: '团内文件',
      icon: 'chart'
    },
    children: [
      {
        path: 'duty',
        component: () => import('@/views/components-demo/drag-kanban'),
        name: 'DragKanbanDemo',
        meta: {
          perms: ['GET /admin/ad/list', 'POST /admin/ad/create', 'GET /admin/ad/read', 'POST /admin/ad/update', 'POST /admin/ad/delete'],
          title: '值班表',
          noCache: true
        }
      },
      // {
      //   path: 'coupon',
      //   component: () => import('@/views/promotion/coupon'),
      //   name: 'coupon',
      //   meta: {
      //     perms: ['GET /admin/coupon/list', 'POST /admin/coupon/create', 'POST /admin/coupon/update', 'POST /admin/coupon/delete'],
      //     title: '报纸发放',
      //     noCache: true
      //   }
      // }
    ]
  },
  {
    path: '/sys',
    component: Layout,
    redirect: 'noredirect',
    alwaysShow: true,
    name: 'sysManage',
    meta: {
      title: '系统管理',
      icon: 'chart'
    },
    children: [
      {
        path: 'log',
        component: () => import('@/views/sys/log'),
        name: 'log',
        meta: {
          perms: ['GET /admin/log/list'],
          title: '操作日志',
          noCache: true
        }
      },
      {
        path: 'role',
        component: () => import('@/views/sys/role'),
        name: 'role',
        meta: {
          perms: ['GET /admin/role/list', 'POST /admin/role/create', 'POST /admin/role/update', 'POST /admin/role/delete', 'GET /admin/role/permissions', 'POST /admin/role/permissions'],
          title: '角色管理',
          noCache: true
        }
      },
      {
        path: 'os',
        component: () => import('@/views/sys/os'),
        name: 'os',
        meta: {
          perms: ['GET /admin/storage/list', 'POST /admin/storage/create', 'POST /admin/storage/update', 'POST /admin/storage/delete'],
          title: '对象存储',
          noCache: true
        }
      }
    ]
  },

  {
    path: '/photo',
    component: Layout,
    name: 'DropzoneDemo',
    meta: {
      title: '相册',
      icon: 'picture'
    },
    children: [
      {
        path: 'dropzone',
        component: () => import('@/views/components-demo/dropzone'),
        name: 'DropzoneDemo',
        meta: { title: '17级', icon: 'peoples' }
      },
      {
        path: 'dropzone1',
        component: () => import('@/views/components-demo/dropzone'),
        name: 'DropzoneDemo',
        meta: { title: '18级', icon: 'peoples' }
      }
    ]
  },

  {
    path: '/stat',
    component: Layout,
    redirect: 'noredirect',
    alwaysShow: true,
    name: 'statManage',
    meta: {
      title: '统计报表',
      icon: 'chart'
    },
    children: [
      {
        path: 'user',
        component: () => import('@/views/stat/user'),
        name: 'statUser',
        meta: {
          perms: ['GET /admin/stat/user'],
          title: '记者统计',
          noCache: true
        }
      },
      {
        path: 'order',
        component: () => import('@/views/stat/order'),
        name: 'statOrder',
        meta: {
          perms: ['GET /admin/stat/order'],
          title: '阅读量统计',
          noCache: true
        }
      }
    ]
  },
  {
    path: 'external-link',
    component: Layout,
    redirect: 'noredirect',
    alwaysShow: true,
    name: 'externalLink',
    meta: {
      title: '外链',
      icon: 'link'
    },
    children: [
      {
        path: 'https://www.qiniu.com/products/kodo',
        meta: { title: '七牛云存储', icon: 'link' }
      },
      {
        path: 'http://pxxy.cuepa.cn/',
        meta: { title: '报纸', icon: 'link' }
      }
    ]
  },
  {
    path: '/profile',
    component: Layout,
    redirect: 'noredirect',
    alwaysShow: true,
    children: [
      {
        path: 'password',
        component: () => import('@/views/profile/password'),
        name: 'password',
        meta: { title: '修改密码', noCache: true }
      }
    ],
    hidden: true
  },

  { path: '*', redirect: '/404', hidden: true }
]
