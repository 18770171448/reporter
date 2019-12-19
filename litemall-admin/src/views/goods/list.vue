<template>
  <div class="app-container">

    <!-- 查询和其他操作 -->
    <div class="filter-container">
      <el-input v-model="listQuery.goodsSn" clearable class="filter-item" style="width: 200px;" placeholder="请输入文章编号"/>
      <el-input v-model="listQuery.name" clearable class="filter-item" style="width: 200px;" placeholder="请输入文章标题"/>
      <el-button class="filter-item" type="primary" icon="el-icon-search" @click="handleFilter">查找</el-button>
      <el-button class="filter-item" type="primary" icon="el-icon-edit" @click="handleCreate">添加</el-button>
      <el-button :loading="downloadLoading" class="filter-item" type="primary" icon="el-icon-download" @click="handleDownload">导出</el-button>
    </div>

    <!-- 查询结果 -->
    <el-table v-loading="listLoading" :data="list" element-loading-text="正在查询中。。。" border fit highlight-current-row>

      <el-table-column type="expand">
        <template slot-scope="props">
          <el-form label-position="left" class="table-expand">
            <el-form-item label="文章介绍">
              <span>{{ props.row.brief }}</span>
            </el-form-item>
            <el-form-item label="文章作者">
              <span>{{ props.row.unit }}</span>
            </el-form-item>
            <el-form-item label="关键字">
              <span>{{ props.row.keywords }}</span>
            </el-form-item>
            <el-form-item label="类型编号">
              <span>{{ props.row.categoryId }}</span>
            </el-form-item>
            <el-form-item label="作者编号">
              <span>{{ props.row.brandId }}</span>
            </el-form-item>
          </el-form>
        </template>
      </el-table-column>

      <el-table-column align="center" label="文章编号" prop="goodsSn"/>

      <el-table-column align="center" min-width="100" label="标题" prop="name"/>

      <el-table-column align="center" property="iconUrl" label="图片">
        <template slot-scope="scope">
          <img :src="scope.row.picUrl" width="40">
        </template>
      </el-table-column>

      <!-- <el-table-column align="center" property="iconUrl" label="分享图">  // 小程序端用
        <template slot-scope="scope">
          <img :src="scope.row.shareUrl" width="40">
        </template>
      </el-table-column> -->

      <el-table-column align="center" label="详情" prop="detail">
        <template slot-scope="scope">
          <el-dialog :visible.sync="detailDialogVisible" title="文章详情">
            <div v-html="goodsDetail"/>
          </el-dialog>
          <el-button type="primary" size="mini" @click="showDetail(scope.row.detail)">查看</el-button>
        </template>
      </el-table-column>

      <el-table-column align="center" label="评分" prop="counterPrice" /> //专柜价格
      <el-table-column align="center" label="作者" prop="unit" /> //单位
      

    <el-table-column label="文章类型" align="center">
     <template slot-scope="scope" prop="categoryId">
        <span v-if="scope.row.categoryId==1005000" >新闻稿</span>
        <span v-if="scope.row.categoryId==1005007" >新闻稿</span>
        <span v-if="scope.row.categoryId==1005008" >新闻稿</span>
        <span v-if="scope.row.categoryId==1005009" >新闻稿</span>
        <span v-if="scope.row.categoryId==1005010" >新闻稿</span>
        <span v-if="scope.row.categoryId==1005001" >文学稿</span>
        <span v-if="scope.row.categoryId==1005011" >文学稿</span>
        <span v-if="scope.row.categoryId==1007000" >文学稿</span>
        <span v-if="scope.row.categoryId==1005013" >文学稿</span>
        <span v-if="scope.row.categoryId==1005012" >文学稿</span>

        <span v-if="scope.row.categoryId==1005002" >微信推文</span>
        <span v-if="scope.row.categoryId==1008002" >微信推文</span>
        <span v-if="scope.row.categoryId==1008011" >微信推文</span>
        <span v-if="scope.row.categoryId==1008012" >微信推文</span>
        <span v-if="scope.row.categoryId==1008013" >微信推文</span>
     </template>
  </el-table-column>
     

      <el-table-column align="center" label="是否热文" prop="isHot">
        <template slot-scope="scope">
          <el-tag :type="scope.row.isHot ? 'success' : 'error' ">{{ scope.row.isHot ? '热文' : '普通' }}</el-tag>
        </template>
      </el-table-column>

      <el-table-column align="center" label="是否发布" prop="isOnSale">
        <template slot-scope="scope">
          <el-tag :type="scope.row.isOnSale ? 'success' : 'error' ">{{ scope.row.isOnSale ? '已发布' : '未发布' }}</el-tag>
        </template>
      </el-table-column>

      <el-table-column align="center" label="操作" width="200" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button type="primary" size="mini" @click="handleUpdate(scope.row)">编辑</el-button>
          <el-button type="danger" size="mini" @click="handleDelete(scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total>0" :total="total" :page.sync="listQuery.page" :limit.sync="listQuery.limit" @pagination="getList" />

    <el-tooltip placement="top" content="返回顶部">
      <back-to-top :visibility-height="100" />
    </el-tooltip>

  </div>
</template>

<style>
  .table-expand {
    font-size: 0;
  }
  .table-expand label {
    width: 100px;
    color: #99a9bf;
  }
  .table-expand .el-form-item {
    margin-right: 0;
    margin-bottom: 0;
  }
  .gallery {
    width: 80px;
    margin-right: 10px;
  }
</style>

<script>
import { listBrand, createBrand, updateBrand, deleteBrand } from '@/api/brand'
import { listGoods, deleteGoods } from '@/api/goods'
import BackToTop from '@/components/BackToTop'
import Pagination from '@/components/Pagination' // Secondary package based on el-pagination

export default {
  name: 'GoodsList',
  components: { BackToTop, Pagination },
  data() {
    return {
      list: [],
      brandList: [],
      total: 0,
      listLoading: true,
      listQuery: {
        page: 1,
        limit: 20,
        goodsSn: undefined,
        name: undefined,
        sort: 'add_time',
        order: 'desc'
      },
      goodsDetail: '',
      detailDialogVisible: false,
      downloadLoading: false
    }
  },
  created() {
    this.getList()
  },
  methods: {
    getList() {
      this.listLoading = true
      listGoods(this.listQuery).then(response => {
        this.list = response.data.data.list
        this.total = response.data.data.total
        this.listLoading = false
      }).catch(() => {
        this.list = []
        this.total = 0
        this.listLoading = false
      })
    },
    handleFilter() {
      this.listQuery.page = 1
      this.getList()
    },
    handleCreate() {
      this.$router.push({ path: '/goods/create' })
    },
    handleUpdate(row) {
      this.$router.push({ path: '/goods/edit', query: { id: row.id }})
    },
    showDetail(detail) {
      this.goodsDetail = detail
      this.detailDialogVisible = true
    },
    handleDelete(row) {
      deleteGoods(row).then(response => {
        this.$notify.success({
          title: '成功',
          message: '删除成功'
        })
        const index = this.list.indexOf(row)
        this.list.splice(index, 1)
      }).catch(response => {
        this.$notify.error({
          title: '失败',
          message: response.data.errmsg
        })
      })
    },
    handleDownload() {
      this.downloadLoading = true
      import('@/vendor/Export2Excel').then(excel => {
        const tHeader = ['文章ID', '文章编号', '标题', '文章评分', '当前价格', '是否热文', '是否发布', '首页主图', '宣传图片列表', '文章介绍', '作者' ,'详细介绍', '文章图片', '文章单位', '关键字', '类型ID', '作者ID']
        const filterVal = ['id', 'goodsSn', 'name', 'counterPrice', 'retailPrice', 'isHot', 'isOnSale', 'listPicUrl', 'gallery', 'brief', 'author','detail', 'picUrl', 'goodsUnit', 'keywords', 'categoryId', 'brandId']
        excel.export_json_to_excel2(tHeader, this.list, filterVal, '文章信息')
        this.downloadLoading = false
      })
    }
  }
}
</script>
