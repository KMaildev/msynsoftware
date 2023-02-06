@extends('layouts.main')
@section('content')
    <div class="row justify-content-center">
        <div class="col-xl-6">
            <div class="card mb-4">
                <h5 class="card-header">
                    Add New Passport
                </h5>
                <div class="card-body">

                    <form action="{{ route('passport.store') }}" method="POST" autocomplete="off" id="create-form"
                        role="form" enctype="multipart/form-data">
                        @csrf

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">Name</label>
                            <div class="col-md-9">
                                <input class="form-control @error('name') is-invalid @enderror" type="text"
                                    name="name" value="{{ old('name') }}" placeholder="Name" />
                                @error('name')
                                    <div class="invalid-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Father Name
                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="father_name" placeholder="Father Name">
                                @error('father_name')
                                    <div class="form-control-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                NRC
                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="nrc" placeholder="NRC">
                                @error('nrc')
                                    <div class="form-control-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Date of Birth
                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="date_of_birth" placeholder="Date of Birth">
                                @error('date_of_birth')
                                    <div class="form-control-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Passport
                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="passport" placeholder="Passport">
                                @error('passport')
                                    <div class="form-control-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Date of Passport
                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="passport_date"
                                    placeholder="Date of Passport">
                                @error('passport_date')
                                    <div class="form-control-feedback"> {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Place of Passport
                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="place_of_passport"
                                    placeholder="Place of Passport">
                                @error('place_of_passport')
                                    <div class="form-control-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Phone
                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="phone" placeholder="Phone">
                                @error('phone')
                                    <div class="form-control-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Address
                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="address" placeholder="Address">
                                @error('address')
                                    <div class="form-control-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Gender
                            </label>
                            <div class="col-md-9">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="male" value="male" name="gender"
                                        class="form-check-input" checked>
                                    <label class="form-check-label" for="male">Male</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="female" value="female" name="gender"
                                        class="form-check-input">
                                    <label class="form-check-label" for="female">Female</label>
                                </div>
                            </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Agents
                            </label>
                            <div class="col-md-9">
                                <select class="form-control form-select" name="agent_list_id">
                                    <option value="">--Select Agent--</option>
                                    @foreach ($agent_lists as $agent_list)
                                        <option value="{{ $agent_list->id }}">
                                            {{ $agent_list->name ?? '' }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('agent_list_id')
                                    <div class="form-control-feedback" style="color: red;">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-text-input" class="col-md-3 col-form-label">
                                Remark
                            </label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="remark" placeholder="Remark">
                                @error('remark')
                                    <div class="form-control-feedback">
                                        {{ $message }}
                                    </div>
                                @enderror
                            </div>
                        </div>


                        <div class="mb-3 row">
                            <label for="html5-search-input" class="col-md-3 col-form-label"></label>
                            <div class="col-md-9">
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
    {!! JsValidator::formRequest('App\Http\Requests\StorePassport', '#create-form') !!}
@endsection
