@if ($message = Session::get('success'))
    <div class="alert alert-solid-success alert-dismissible d-flex align-items-center" role="alert">
        <i class="bx bx-xs bx-store me-2"></i>
        {{ $message }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
        </button>
    </div>
@endif


@if ($message = Session::get('error'))
    <div class="alert alert-solid-danger alert-dismissible d-flex align-items-center" role="alert">
        <i class="bx bx-xs bx-store me-2"></i>
        {{ $message }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
        </button>
    </div>
@endif


@if ($message = Session::get('warning'))
    <div class="alert alert-solid-warning alert-dismissible d-flex align-items-center" role="alert">
        <i class="bx bx-xs bx-store me-2"></i>
        {{ $message }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
        </button>
    </div>
@endif


@if ($message = Session::get('info'))
    <div class="alert alert-solid-info alert-dismissible d-flex align-items-center" role="alert">
        <i class="bx bx-xs bx-store me-2"></i>
        {{ $message }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
        </button>
    </div>
@endif


@if ($errors->any())
    <!-- <div class="alert alert-solid-danger alert-dismissible d-flex align-items-center" role="alert">
    <i class="bx bx-xs bx-store me-2"></i>
    Please check the form below for errors
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
    </button>
</div> -->
@endif

@if (count($errors) > 0)
    <div class="alert alert-danger alert-dismissible">
        @foreach ($errors->all() as $error)
            {{ $error }} <br>
        @endforeach
    </div>
@endif
