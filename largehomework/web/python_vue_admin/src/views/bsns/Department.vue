<template>
  <div class="login">

    <el-form ref="loginRef" :model="loginForm" :rules="loginRules" class="login-form">
      <h3 class="title">Django后台管理系统</h3>

      <el-form-item prop="username">

        <el-input
            v-model="loginForm.username"
            type="text"
            size="large"
            auto-complete="off"
            placeholder="账号"
        >
          <template #prefix>
            <svg-icon icon="user"/>
          </template>
        </el-input>
      </el-form-item>
      <el-form-item prop="password">
        <el-input
            v-model="loginForm.password"
            type="password"
            size="large"
            auto-complete="off"
            placeholder="密码"
        >
          <template #prefix>
            <svg-icon icon="password"/>
          </template>
        </el-input>
      </el-form-item>

    </el-form>
    <!--  底部  -->
    <div class="el-login-footer">
      <span>Copyright © 1997-2025 <a href="http://www.python.org" target="_blank">python.org</a> 版权所有.</span>
    </div>
  </div>
</template>
<script setup>

</script>

<style scoped lang="scss">

</style>