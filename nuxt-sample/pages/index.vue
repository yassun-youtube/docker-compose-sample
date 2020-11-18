<template>
  <div style="padding: 34px;">
    <h1>ユーザ一覧</h1>
    <div>
      <div v-for="user of users" style="">
        <div>{{  user.id }} : {{ user.name }}</div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      users: [],
    }
  },
  async mounted() {
    const { users } = await this.$axios.$get('/api/users')
    this.users = users;
  }
}
</script>
