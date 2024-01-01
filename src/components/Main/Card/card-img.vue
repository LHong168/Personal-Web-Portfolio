<template>
    <div class="col-12 col-md-5 secondary-bg rounded p-4 shadow-sm">
        <div class="card zoom border-0 w-100 h-100 bg-dark">
            <div class="d-flex justify-content-centers align-items-center m-auto">
                <img :src="project.img" class="card-img" alt="project-img">
            </div>
            <div class="card-body card-img-overlay d-flex justify-content-centers align-items-center">
                <div class="text-center w-100 m-auto">
                    <div class="d-flex justify-content-around flex-wrap">
                        <div 
                            v-for="(tag, index) in project.tech" :key="index"
                            class="badge text-black p-3 my-md-3 my-1 color-yellow fs-6 d-inline"
                        >
                            {{ tag }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>

export default {
    props: ["project"],
}
</script>