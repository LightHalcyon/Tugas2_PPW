<?php

namespace App\Http\Controllers;

use App\Event;
use App\Http\Controllers\Controller;

class EventController extends Controller
{
    public function show()
    {
        $events = Event::all();
        return view('event', compact('events'));
    }
}