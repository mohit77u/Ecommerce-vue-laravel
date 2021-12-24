<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Http;


class AuthenticationController extends Controller
{

    public function allusers(){
        return User::all();
    }

    public function user(){
        return  Auth::user();
    }

     public function usershow(User $user){
        return $user;
    }

    public function deleteuser(User $user){
        $user->delete();
        return response(['message' => 'User deleted Successfully !!'], 204);
    }

    public function updateuser(Request $request, User $user){
        $request->validate([
            'role' => 'required',
        ]);

        $user->update([
            'role' => $request->role,
        ]);

        return response(['message' => 'User updated Successfully !!'], 200);
    }


    public function register(Request $request){
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required|unique:users',
            'password' => 'required|confirmed',
        ]);
        $user = User::create([
            'name' => $request->name,
            'role' => 'user',
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        return response(['message' => 'User Successfully Register.'], 200);
    }

    public function newadmin(Request $request){
        $this->validate($request, [
            'name' => 'required',
            'role' => 'required',
            'email' => 'required|unique:users',
            'password' => 'required|confirmed',
        ]);
        $user = User::create([
            'name' => $request->name,
            'role' => $request->role,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        return response(['message' => 'Admin Successfully Register !!'], 200);
    }

    public function login(Request $request){
        $this->validate($request, [
            'email' => 'required|max:255',
            'password' => 'required'
        ]);

        $login = $request->only('email', 'password');

        if (!Auth::attempt($login)) {
            return response(['message' => 'Invalid login credential!!'], 401);
        }
        /**
         * @var User $user
         */
        $user = Auth::user();
        $token = $user->createToken($user->name);

        return response([
            'id' => $user->id,
            'name' => $user->name,
            'role' => $user->role,
            'email' => $user->email,
            'created_at' => $user->created_at,
            'updated_at' => $user->updated_at,
            'token' => $token->accessToken,
            'token_expires_at' => $token->token->expires_at,
        ], 200);
    }

    public function forgot(Request $request){
        $this->validate($request,[
            'email' => 'required|email'
        ]);
        $email = $request->email;

        if(User::where('email', $email)->doesntExist()){
            return response(['message'=>'User with this email does not exists!'], 200);
        }
        $token = Str::random(50);

        DB::table('password_resets')->insert([
            'email' => $email,
            'token' => $token,
            'created_at' => now()->addHours(6)
        ]);

        // Send Mail
        Mail::send('mail.password_reset', ['token'=>$token], function ($message) use($email){
            $message->to($email);
            $message->subject('Reset Your Password');
        });

        return response(['message' => 'Check your email.'], 200);
    }

    public function reset(Request $request){
        $this->validate($request, [
            'token' => 'required|string',
            'password' => 'required|string|confirmed',
        ]);

        $token = $request->token;
        $passwordRest = DB::table('password_resets')->where('token', $token)->first();

        // Verify
        if(!$passwordRest){
            return response(['message' => 'Token Not Found.'], 200);
        }

        // Validate exipire time
        if(!$passwordRest->created_at >= now()){
            return response(['message' => 'Token has expired.'], 200);
        }

        $user = User::where('email', $passwordRest->email)->first();

        if(!$user){
            return response(['message' => 'User does not exists.'], 200);
        }

        $user->password = Hash::make($request->password);
        $user->save();

        DB::table('password_resets')->where('token', $token)->delete();;

        return response(['message'=>'Password Successfully Updated.'], 200);
    }
}
