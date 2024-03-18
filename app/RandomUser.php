<?php

namespace App;

use Illuminate\Support\Facades\Http;

class RandomUser
{
    public function getRandomUser()
    {
        $response = Http::get('https://randomuser.me/api/');
        return $response->body();
    }
}
