<template>
  <nav class="navbar navbar-expand-lg bg-light">
  <div class="container">
    <router-link class="navbar-brand text-style" to="/">Ghost Project</router-link>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item mx-2">
          <router-link class="btn btn-outline-success" to="/">Home</router-link>
        </li>
        <li class="nav-item">
          <router-link class="btn btn-outline-secondary" to="/createcourse">New</router-link>
        </li> 
      </ul>
    </div>
  </div>
</nav>
</template>

<script>
export default {

}
</script>

<style>
.text-style{
  font-size: 30px !important;
  font-family:'Courier New', Courier, monospace !important;
  color: brown !important;
}
</style>