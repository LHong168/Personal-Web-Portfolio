<template>
  <div>
    <div>
      <Profile></Profile>
    </div>

    <div class="w-100 secondary-bg hr-h my-5"></div>

    <div id="Project" class="scroll-margin-top">
      <Project></Project>
    </div>

    <div class="w-100 secondary-bg hr-h my-5"></div>

    <div id="About" class="scroll-margin-top">
      <About></About>
    </div>

    <div class="w-100 secondary-bg hr-h my-5"></div>

    <div id="Contact" class="scroll-margin-top">
      <Contact></Contact>
    </div>

    <div class="w-100 secondary-bg hr-h my-5"></div>

    <div class="text-light mt-5 text-center fs-5">
      <p>&copy; 2023 Ly Hong</p>
    </div>

  </div>
</template>

<script>
import Profile from "./Main/Profile.vue";
import About from "./Main/About.vue";
import Project from "./Main/Project.vue";
import Contact from "./Main/Contact.vue";

export default {
  components: {
    Profile,
    About,
    Project,
    Contact
  }
}

</script>

<style>
.secondary-bg {
  background-color: #222222;
}
.color-yellow {
  background-color: #D3E97A;
}

.hr-h {
  height: 0.2em;
}

.icon:hover {
  opacity: 80%;
}

.scroll-margin-top {
  scroll-margin-top: 200px; /* Adjust the value as needed */
}
</style>