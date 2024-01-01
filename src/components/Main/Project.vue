<template>
    <div class="text-light mb-5">
        <h1 class="text-center mb-3 title-font">MY PROJECTS</h1>
        <p class="text-center secondary-text">Here are some of my projects that showcase my passion for software development.</p>    
    </div>
    <div
      v-for="(project, index) in projects" :key="index"
    >
      <Card
        v-if="projects.length > 0"
        :project="project"
      ></Card>
    </div>
</template>

<script>
import Card from "./Card/Project-Card.vue";

export default {
  components: {
    Card
  },
  created() {
    this.getProjects();
  },
  data() {
    return {
      projects: []
    };
  },
  methods: {
    async getProjects() {
      let res = await fetch("cards.json");
      let data = await res.json();

      this.projects = data;
    }
  }
}

</script>