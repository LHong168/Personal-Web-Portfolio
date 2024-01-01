<template>
  <div class="custom-bg-dark-gray manrope-font">
    <div class="title-font">
      <Navbar></Navbar>
    </div>
    <div class="w-75 m-auto pt-5 pb-3" id="#Home">
      <Main></Main>
    </div>
  </div>
</template>

<script>
import Navbar from "./components/Navbar.vue";
import Main from "./components/Main.vue"

export default {
  components: {
    Navbar,
    Main
  }
}

</script>

<style local>
.custom-bg-dark-gray {
    background-color: #0A0A0A;
}

.manrope-font {
  font-family: 'Manrope', sans-serif;
}

.title-font {
  font-family: 'Bebas Neue', sans-serif;
  font-size: 5em;
}

.secondary-text {
  color: #C7C7C7;
}
</style>
