<template>
  <div class="components-container">
    <div class="editor-container">
      <dropzone id="myVueDropzone" url="https://httpbin.org/post" @dropzone-removedFile="dropzoneR" @dropzone-success="dropzoneS" @click='fileupload'/>
    </div>
 </div>
</template>

<script>
import Dropzone from '@/components/Dropzone'
import { createStorage, uploadPath } from '@/api/storage'
import { getToken } from '@/utils/auth'
export default {
  name: 'DropzoneDemo',
  components: { Dropzone },


  methods: {
    dropzoneS(file) {
      console.log(file)
      this.$message({ message: 'Upload success', type: 'success' })
    },
    dropzoneR(file) {
      console.log(file)
      this.$message({ message: 'Delete success', type: 'success' })
    },
    // fileupload(file){
    //   this.$http({
    //         url: '/strage/creat',
    //         data: this.$qs.stringify(this.file,{arrayFormat: 'brackets'})
    //       })
    // }
  }
}
</script>

