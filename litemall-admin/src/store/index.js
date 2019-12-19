import Vue from 'vue'
import Vuex from 'vuex'
import app from './modules/app'
import permission from './modules/permission'
import tagsView from './modules/tagsView'
import user from './modules/user'
import getters from './getters'

Vue.use(Vuex)

const store = new Vuex.Store({ // 在store中注册自定义插件
  modules: {
    app,
    permission,
    tagsView,
    user
  },
  getters
})

export default store // 仓库store的构造函数
