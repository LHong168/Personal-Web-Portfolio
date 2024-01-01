<template>
    <nav class="navbar navbar-expand-lg navbar-dark px-5 custom-bg-dark-gray fixed-top">
        <a class="navbar-brand fs-2 title-font" href="#">Portfolio</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
            <div 
                class="navbar-nav fs-5 manrope-font" 
            >
                <a 
                    v-for="(list, index) in navList"
                    class="nav-item nav-link" 
                    :class="{active: activePage == index}" 
                    :href="`#${list}`"
                    @click="navClick(index);"
                >
                    {{list}}
                </a>
            </div>
        </div>
    </nav>

</template>

<script>
export default {
    data() {
        return {
            activePage: 0,
            navList: ["Home", "Project", "About", "Contact"]
        };
    },
    mounted() {
        window.addEventListener('scroll', this.handleScroll);
    },
    beforeDestroy() {
        window.removeEventListener('scroll', this.handleScroll);
    },
    methods: {
        navClick(index) {
            this.activePage = index;
        }, 
        handleScroll() {
            this.$nextTick(() => {
                const currentScroll = window.scrollY;

                for (let index in this.navList) {
                    const sectionElement = document.getElementById(this.navList[index]);
                    const sectionTop = sectionElement.offsetTop;

                    if (currentScroll >= sectionTop - 450) { // Adjust offset as needed
                        this.activePage = index;
                    }
                }
            });
        }
    }
}
</script>