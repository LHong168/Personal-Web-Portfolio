<template>
    <div class="col-12 col-md-6 m-auto">
        <div class="col-12 row">
            <p class="text-white fs-3 fw-bolder col-12 m-0 px-3 py-2">
                {{ project.title }}
            </p>
            <p class="secondary-text fs-6 col-12 m-0 px-3 py-2 my-3">
                {{ project.description }}
            </p>
        </div>
        <div class="col-12 row px-4">
            <div class="py-1 col-12">
                <p class="text-white fs-6 fw-bolder col-6 m-0 py-2">
                Project Info
                </p>
            </div>
            <div class="py-2 border-bottom border-top border-dark-50 col-12 d-flex">
                <p class="text-light col-6 m-0 py-2">
                Year
                </p>
                <p class="secondary-text text-end col-6 m-0 py-2">
                    {{ project.year }}
                </p>
            </div>
            <div class="py-2 border-bottom border-dark-50 col-12 d-flex">
                <p class="text-white col-6 m-0 py-2">
                Role
                </p>
                <p class="secondary-text text-end col-6 m-0 py-2">
                    {{ project.role }}
                </p>
            </div>
        </div>
        <div class="col-12">
            <div class="d-flex mt-5">
                <a v-if="project.gitLink != null" target="_blank" :href="project.gitLink" class="icon text-warning border-bottom border-warning text-decoration-none me-4 fs-5">
                    View Code
                    <fa :icon="['fas', 'arrow-right']" style="transform: rotate(-45deg);"/>
                </a>
                <a v-if="project.hostLink != null" target="_blank" :href="project.hostLink" class="icon text-warning border-bottom border-warning text-decoration-none fs-5">
                    Live Demo
                    <fa :icon="['fab', 'github']"/>
                </a>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ["project"]
}
</script>