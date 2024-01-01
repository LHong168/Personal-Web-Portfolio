<template>
    <div class="mt-5 text-light row gy-3">
        <div class="col-12 mb-3 d-flex justify-content-center align-items-center">
            <img src="../../../public/assets/resume-profile.jpg" class="rounded-circle bg-light" alt="profile-img" width="150">
        </div>
        <h4 class="col-12 text-center fs-5">Greeting! I am Hong!</h4>
        <h1 class="col-12 text-center">Software Developer</h1>
        <h3 class="col-12 col-md-5 mt-3 secondary-text text-center fs-5 m-auto">Fresh graduate software developer with quality knowledge at both the front-end, and back-end.</h3>
        <div class="col-12 mt-4 d-flex flex-wrap justify-content-center align-items-center">
            <a 
                class="p-1 bg-warning rounded-5 d-flex justify-content-center align-items-center mx-2 text-decoration-none" 
                @mouseover="showArrow = true" 
                @mouseleave="showArrow = false"
                href="#Contact"
            >
                <p class="text-black fw-bold text-uppercase m-0 px-2 py-2">Contact Me</p>
              
                <div 
                    class="d-flex justify-content-center align-items-center bg-black rounded-circle p-1 text-light"
                    :class="{'display-icon': showArrow, 'hide-icon': !showArrow}"
                >
                    <fa :icon="['fas', 'arrow-right']" style="transform: rotate(-45deg); width:30; height:30" v-if="showArrow"/>
                </div>
            </a>
            <a 
                class="icon cursor-hand mt-3 mt-md-0 py-1 px-2 bg-secondary rounded-5 d-flex justify-content-center align-items-center mx-2 text-decoration-none" 
                href="./LHResume.pdf"
                download="Resume"
            >
                <p class="text-white fw-bold text-uppercase m-0 px-2 py-2">Download Resume</p>
            
                <div 
                    class="d-flex justify-content-center align-items-center p-1 text-dark"
                >
                    <fa :icon="['fas', 'download']" style="width:30; height:30"/>
                </div>
            </a>
            <div class="d-flex justify-content-center align-items-center text-center mt-3">
                <a href="https://www.linkedin.com/in/hong-ly-805737225/" target="_blank" class="icon mx-2 text-warning fs-3">
                    <fa :icon="['fab', 'linkedin-in']" class="secondary-bg rounded-circle p-3"/>
                </a>
                <a href="https://github.com/LHong168" target="_blank" class="icon mx-2 text-warning fs-3">
                    <fa :icon="['fab', 'github']" class="secondary-bg rounded-circle p-3"/>
                </a>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                showArrow: false,
            };
        },
        methods: {
            async downloadPdf() {
                const response = await fetch("../../assets/Ly Hong Resume.pdf");
                const blob = await response.blob();
                const url = URL.createObjectURL(blob);

                const link = document.createElement('a');
                link.href = url;
                link.download = 'LHResume.pdf';
                link.click();

                URL.revokeObjectURL(url);
            },
        }
    };
</script>

<style>
.max-w {
    max-width: 20em;
}

.display-icon {
    margin-right: 0.25rem; /* 4px margin for me-1 */
    font-size: 0.875rem; /* 14px for fs-3 */
    animation: grow 0.3s ease-in-out;
}

.hide-icon {
    margin-right: 0.75rem; /* 4px margin for me-1 */
    margin-left: 0.75rem; /* 4px margin for me-1 */
    animation: shrink 0.3s ease-in-out;
}

@keyframes grow {
    from {
        transform: scale(0);
    }
    to {
        transform: scale(1);
    }
}

@keyframes shrink {
    from {
        transform: scale(4);
    }
    to {
        transform: scale(1);
    }
}


</style>