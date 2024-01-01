<template>
    <div class="row my-5">

        <CardImg
            :project="project"
        ></CardImg>

        <div class="col-12 col-md-1"></div>

        <CardDesc
            :project="project"
        >
        </CardDesc>

    </div>
      
</template>

<script>
import CardImg from "./card-img.vue";
import CardDesc from "./card-desc.vue";
export default {
    props: ['project'],
    components: {
        CardImg,
        CardDesc
    },
}
</script>

<style>
.card-bg {
    background-color: #2D2D2D;
}

.card-body {
    opacity: 0; /* Initially hidden, but still interactive */
    transition: opacity 0.3s ease-in-out; /* Smooth transition for opacity */
}

.card:hover .card-body {
    background-color: rgba(0, 0, 0, 0.6); /* Half-transparent dark background on hover */
    opacity: 1; /* Show card-body on hover */
}

.zoom {
    overflow: hidden;
}

.zoom img {
    transition: all 0.5s ease;
}

.zoom:hover img {
    transform: scale(1.2);
}

</style>