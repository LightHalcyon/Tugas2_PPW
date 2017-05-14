<?php

namespace App\Http\Controllers;

use App\Tema;
use App\Peserta;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;

class PesertaTemaController extends Controller
{
    public function show()
    {
        $temas = Tema::all();
        $temass = Tema::all();
        $pesertas = Peserta::all();
        $total = 0;
        return view('registration', compact('temas','pesertas','total','temass'));
    }

    public function getHarga($tema)
    {
        $harga = Tema::where('nama','=',$tema)->first()->harga_tiket;
        return json_encode($harga);
    }

    public function insert(){
        $peserta = new Peserta;
        $peserta->nama = Input::get('nama');
        $peserta->id_tema = Input::get('tema');
        $peserta->status = Input::get('status');
        $peserta->bukti_bayar = Input::get('image');
        $peserta->save();
        return Redirect::back();
    }
}