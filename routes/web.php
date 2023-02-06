<?php

use App\Http\Controllers\AgentListController;
use App\Http\Controllers\ContractController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\DemandController;
use App\Http\Controllers\OverseasAgentController;
use App\Http\Controllers\PassportController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('auth.login');
});
Auth::routes(['register' => false]);
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::resource('users', UserController::class);
Route::resource('country', CountryController::class);
Route::resource('agent_list', AgentListController::class);
Route::resource('overseas_agent', OverseasAgentController::class);
Route::get('overseas_agent_ajax/{id}', [OverseasAgentController::class, 'dependentAjax'])->name('overseas_agent_ajax');
Route::resource('passport', PassportController::class);
Route::get('/reject_passport/{id}', [PassportController::class, 'rejectPassport'])->name('reject_passport');
Route::get('/reject_passport_list', [PassportController::class, 'rejectPassportList'])->name('reject_passport_list');
Route::get('/cancel_reject_passport/{id}', [PassportController::class, 'cancelRejectPassport'])->name('cancel_reject_passport');
Route::resource('demand', DemandController::class);
Route::get('demand_ajax/{id}', [DemandController::class, 'demandAjax'])->name('demand_ajax');
Route::resource('contract', ContractController::class);
