<?php

use App\Http\Controllers\AgentListController;
use App\Http\Controllers\CountryController;
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
Route::resource('passport', PassportController::class);
Route::get('/reject_passport/{id}', [PassportController::class, 'rejectPassport'])->name('reject_passport');
Route::get('/reject_passport_list', [PassportController::class, 'rejectPassportList'])->name('reject_passport_list');