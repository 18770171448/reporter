<template>
  <div class="app-container">
    <ve-line :extend="chartExtend" :data="chartData" :settings="chartSettings"/>
  </div>
</template>

<script>
import { statOrder } from '@/api/stat'
import VeLine from 'v-charts/lib/line'
export default {
  components: { VeLine },
  data() {
    return {
      chartData: {},
      chartSettings: {},
      chartExtend: {}
    }
  },
  created() {
    statOrder().then(response => {
      this.chartData = response.data.data
      this.chartSettings = {
        labelMap: {
          'orders': '阅读总量',
          'customers': '文学稿',
          'amount': '新闻稿',
          'pcr': '微信推文'
        }
      }
      this.chartExtend = {
        xAxis: { boundaryGap: true }
      }
    })
  }

}
</script>
