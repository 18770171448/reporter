(window.webpackJsonp=window.webpackJsonp||[]).push([["chunk-2c39"],{npD1:function(t,n,a){"use strict";a.d(n,"b",function(){return r}),a.d(n,"a",function(){return c});var e=a("t3Un");function r(t){return Object(e.a)({url:"/stat/user",method:"get",params:t})}function c(t){return Object(e.a)({url:"/stat/order",method:"get",params:t})}},sye3:function(t,n,a){"use strict";a.r(n);var e=a("npD1"),r=a("uhpB"),c={components:{VeLine:a.n(r).a},data:function(){return{chartData:{},chartSettings:{},chartExtend:{}}},created:function(){var t=this;Object(e.a)().then(function(n){t.chartData=n.data.data,t.chartSettings={labelMap:{orders:"阅读总量",customers:"文学稿",amount:"新闻稿",pcr:"微信推文"}},t.chartExtend={xAxis:{boundaryGap:!0}}})}},s=a("KHd+"),i=Object(s.a)(c,function(){var t=this.$createElement,n=this._self._c||t;return n("div",{staticClass:"app-container"},[n("ve-line",{attrs:{extend:this.chartExtend,data:this.chartData,settings:this.chartSettings}})],1)},[],!1,null,null,null);i.options.__file="order.vue";n.default=i.exports}}]);