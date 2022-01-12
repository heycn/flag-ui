# 开始使用

请先[安装](#/doc/install)本组件库。

然后引入我的组件库

```
import { ... } from "flag-ui"
```

就可以使用我提供的组件了。

## Vue 单文件组件

代码示例：

```
<template>
  <Switch v-model:value="switchValue" />
</template>

<script>
  import { Switch } from 'flag-ui'
  import 'flag-ui/dist/lib/flag.css'
  export default {
    components: { Switch },
    data() {
      return { switchValue: false }
    }
  }
</script>
```