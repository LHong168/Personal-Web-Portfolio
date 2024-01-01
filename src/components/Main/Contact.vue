<template>
    <div class="row text-light">
        <div class="col-12 col-md-4">
            <h1 class="mb-3 text-uppercase title-font">Let's Connect!</h1>
            <div class="secondary-text">
                <p>Please contact me at <a href="mailto:lyhong1224@gmail.com" class="text-light border-bottom border-warning text-decoration-none">lyhong1224@gmail.com</a></p>
                <p>or connect me through this platform below: </p>
            </div>
            <div class="d-flex align-items-center mb-3 text-center fs-1">
                <a href="https://www.linkedin.com/in/hong-ly-805737225/" target="_blank" class="icon mx-2 text-warning">
                    <fa :icon="['fab', 'linkedin-in']"/>
                </a>
                <a href="https://github.com/LHong168" target="_blank" class="icon mx-2 text-warning">
                    <fa :icon="['fab', 'github']"/>
                </a>
            </div>
        </div>
        <div class="col-12 col-md-2">

        </div>
        <div class="col-12 col-md-6">
            <form class="form-group label-color fs-5">
                <div class="form-group mb-4">
                  <label for="exampleInputEmail1" class="form-label">Email</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="form-group mb-4">
                    <label for="exampleInputEmail1" class="form-label">Subject</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                  </div>
                <div class="form-group mb-4">
                    <label for="exampleFormControlTextarea1" class="form-label">Message</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                </div>
                <button type="submit" class="btn btn-warning btn-lg rounded">Submit</button>
            </form>
        </div>
    </div>
</template>

<script>

</script>

<style>
.color-yellow {
    border-color: #D3E97A;
}

</style>