@extends('layouts.main')
@section('content')
    <div class="row">
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="card-title header-elements">
                        <h5 class="m-0 me-2">
                            Agent Lists
                        </h5>
                        <div class="card-title-elements ms-auto">
                            <div class="card-header-elements ms-auto">
                                <form action="{{ route('agent_list.index') }}" method="get">
                                    <input type="text" class="form-control form-control-sm" placeholder="Search"
                                        name="search" />
                                </form>
                            </div>

                            <a href="{{ route('agent_list.create') }}" class="dt-button create-new btn btn-primary btn-sm">
                                <span>
                                    <i class="bx bx-plus me-sm-2"></i>
                                    <span class="d-none d-sm-inline-block">Create</span>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="table-responsive text-nowrap rowheaders table-scroll" role="region"
                    aria-labelledby="HeadersCol" tabindex="0">
                    <table class="table table-bordered main-table">
                        <thead class="tbbg">
                            <tr>
                                <th class="text-center text-white" style="width: 1%; background-color: #296166;">#</th>
                                <th class="text-center text-white" style="background-color: #296166;">
                                    Name</th>
                                <th class="text-center text-white" style="background-color: #296166;">
                                    Email</th>
                                <th class="text-center text-white" style="background-color: #296166;">
                                    Phone</th>
                                <th class="text-center text-white" style="background-color: #296166;">
                                    Address</th>
                                <th class="text-center text-white" style="background-color: #296166;">
                                    Total Worker
                                </th>
                                <th class="text-center text-white" style="background-color: #296166; width: 5%;">
                                    Action
                                </th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($agent_lists as $key => $agent_list)
                                <tr>
                                    <td>
                                        {{ $key + 1 }}
                                    </td>

                                    <td>
                                        {{ strtoupper($agent_list->name ?? '') }}
                                    </td>

                                    <td>
                                        {{ $agent_list->phone }}
                                    </td>

                                    <td>
                                        {{ $agent_list->email }}
                                    </td>

                                    <td>
                                        {{ $agent_list->address }}
                                    </td>

                                    <td class="text-center">
                                        <label class="btn btn-primary btn-sm" for="btnradio3">
                                            <a class="text-white"
                                                href="{{ route('passport.index', ['agent_list_id' => $agent_list->id]) }}">
                                                Total: {{ $agent_list->passport_table_count ?? 0 }}
                                            </a>
                                        </label>
                                    </td>

                                    <td>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-primary btn-sm dropdown-toggle"
                                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Action
                                            </button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item"
                                                    href="{{ route('agent_list.edit', $agent_list->id) }}">Edit</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
