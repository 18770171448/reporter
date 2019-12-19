<template>
  <div class="components-container board">
    <Kanban :key="1" :list="list1" :group="group" class="kanban todo" header-text="星期一" />
    <Kanban :key="2" :list="list2" :group="group" class="kanban working" header-text="星期二" />
    <Kanban :key="3" :list="list3" :group="group" class="kanban done" header-text="星期三" />
    <Kanban :key="4" :list="list4" :group="group" class="kanban working" header-text="星期四" />
    <Kanban :key="5" :list="list5" :group="group" class="kanban done" header-text="星期天" />
  </div>
</template>
<script>
import Kanban from '@/components/Kanban'

export default {
  name: 'DragKanbanDemo',
  components: {
    Kanban
  },
  data() {
    return {
      group: 'mission',
      list1: [
        { name: '黄睿'},
        { name: '小睿'},
        { name: '大睿'},
        { name: '中睿'},
      ],
      list2: [
        { name: '胖睿'},
        { name: '瘦睿'},
        { name: '大睿哥'}
      ],
      list3: [
        { name: '黄小睿'},
        { name: '黄大睿',},
        { name: '睿',}
      ],
      list4: [
        { name: '黄大睿'},
        { name: '黄睿',},
        { name: '黄小睿',}
      ],
      list5: [
        { name: '马克'},
        { name: '赵云'},
        { name: '孙权'},
        { name: '中睿'},
        { name: '孙策'},
        { name: '曹操'},
        { name: '刘备'},
        { name: '干将'},
      ]
    }
  }
}
</script>
<style lang="scss">
.board {
  width: 1350px;
  margin-left: 0px;
  display: flex;
  justify-content: space-around;
  flex-direction: row;
  align-items: flex-start;
}
.kanban {
  &.todo {
    .board-column-header {
      background: #4A9FF9;
    }
  }
  &.working {
    .board-column-header {
      background: #f9944a;
    }
  }
  &.done {
    .board-column-header {
      background: #2ac06d;
    }
  }
}
</style>

