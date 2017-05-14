<!doctype html>
<html lang="{{ config('app.locale') }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Computer Festival 2017</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
        </style>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
        <script src="js/registration.js"></script>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            <!--@if (Route::has('login'))
                <div class="top-right links">
                    @if (Auth::check())
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ url('/login') }}">Login</a>
                        <a href="{{ url('/register') }}">Register</a>
                    @endif
                </div>
            @endif-->

            <div class="top-right links">
                <a href="{{ url('/') }}">Home</a>
                <a href="{{ url('/event') }}">Event</a>
                <a href="{{ url('/registration') }}">Registration</a>
                <a href="{{ url('/contactus') }}">Contact Us</a>
            </div>

            <div class="content">
                <div class="title m-b-md">
                    Registrasi
                </div>

                <form class="pesan" action="registration/send" method="post">
                    {{csrf_field()}} 
                    Form Pendaftaran <br> Nama: <input type="Text" name="nama" id="nama"><br> Tema:
                    <select id="tema" name="tema">
                        <option value=""></option>
                        @foreach($temas as $tema)
                            <option value="{{$tema->id_tema}}">{{$tema->nama}}</option>
                        @endforeach
                    </select>
                    <br> Status:
                    <select id="status" name="status">
                        <option value="pelajar">Pelajar</option>
                        <option value="profesional">Profesional</option>
                    </select> 
                    <br>Harga Tiket: 
                    <div class="harga-tiket" id="harga" name="harga"></div>
                    <input type="file" name="image" id="image"><br>
                    <input id="kirim" type="submit" value="Send" />
                </form>
                <br>

                <div class="title m-b-md">
                    Daftar Peserta Computer Festival 2017
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>Nama Peserta</th>
                            <th>Tema Acara</th>
                            <th>Status</th>
                            <th>Bukti Pembayaran</th>
                            <th>Total Pembayaran</th>
                        </tr>
                    </thead>
                    <tbody id="pemasukan">
                        @foreach($pesertas as $peserta)
                            @foreach($temass as $tem)
                            @if($peserta->id_tema===$tem->id_tema)
                            <tr>
                                <td>{{$peserta->nama}}</td>
                                <td>{{$tem->nama}}</td>
                                <td>{{$peserta->status}}</td>
                                <td>{{$peserta->bukti_bayar}}</td>
                                <td>{{strcmp($peserta->status,'pelajar') ? $tem->harga_tiket : ($tem->harga_tiket)/2 }}</td>
                            </tr>
                            @endif
                            @endforeach
                        @endforeach
                    </tbody>
                    <tfoot>
                        <tr>
                            
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </body>
</html>
