<!--官网首页-->

<template>
  <div>
    <div class="topnavAndBanner">
      <div class="banner">
        <svg class="flagIcon">
          <use xlink:href="#icon-flag"></use>
        </svg>
        <h1>Flag UI</h1>
        <h2>尝鲜使用 Vue3 开发的 UI框架</h2>
        <p class="actions">
          <a href="https://github.com/heycn/flag-ui" class="github">
            <svg class="icon">
              <use xlink:href="#icon-github"></use>
            </svg>
            GitHub</a>
          <router-link to="/doc">
            <svg class="icon">
              <use xlink:href="#icon-start"></use>
            </svg>
            开始使用
          </router-link>
        </p>
      </div>
    </div>
    <div class="feature">
      <ul>
        <li>
          <svg>
            <use xlink:href="#icon-vue"></use>
          </svg>
          <h3>基于 Vue 3</h3>
          <p>尝鲜使用 Vue 3 API</p>
        </li>
        <li>
          <svg>
            <use xlink:href="#icon-ts"></use>
          </svg>
          <h3>基于 TypeScript </h3>
          <p>源代码采用 TypeScript 书写</p>
        </li>
        <li>
          <svg>
            <use xlink:href="#icon-happy"></use>
          </svg>
          <h3>代码易读</h3>
          <p>每个组件都极其简洁</p>
        </li>
      </ul>
    </div>
  </div>

</template>

<style lang="scss" scoped>
.topnavAndBanner {
  background: linear-gradient(145deg, rgba(51, 9, 103, 1) 0%, rgba(48, 207, 208, 1) 100%);
  clip-path: ellipse(80% 60% at 50% 40%);
}

.feature {
  margin: 64px auto;
  padding: 0 16px;
  @media (min-width: 800px) {
    width: 800px;
    > ul {
      > li {
        width: 50%;
      }
    }
  }
  @media (min-width: 1200px) {
    width: 1200px;
    > ul {
      > li {
        width: 33.3333%;
      }
    }
  }

  > ul {
    display: flex;
    flex-wrap: wrap;

    > li {
      margin: 16px 0;
      display: grid;
      justify-content: start;
      align-content: space-between;
      grid-template-areas:
        "icon title"
        "icon text";
      grid-template-columns: 80px auto;
      grid-template-rows: 1fr auto;

      > svg {
        grid-area: icon;
        width: 64px;
        height: 64px;
      }

      > h3 {
        grid-area: title;
        font-size: 28px;
      }

      > p {
        grid-area: text
      }
    }
  }
}

.banner {
  color: #eef8fe;
  padding: 100px 0;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;

  > .icon {
    width: 96px;
    height: 96px;
  }

  > .actions {
    padding: 8px 0;

    .icon {
      width: 28px;
      height: 28px;
    }

    a {
      margin: 0 8px;
      background: #5eb95f;
      color: white;
      display: inline-block;
      padding: 8px 24px;
      border-radius: 26px;
      font-size: 20px;

      &:hover {
        text-decoration: none;
      }
    }
  }
}
</style>
