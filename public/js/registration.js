// document.getElementById("tema").addEventListener("change", update);
// document.getElementById("status").addEventListener("change", update);


// function update() {
//     $.get("tema.json", function(tema) {
//         var tmp = tema;
//         $('.harga-tiket').empty();
//         var tmp2 = $('#tema').val();
//         var tmp3 = 0;
//         for (var i = 0; i < tmp.totalTema; i++) {

//             if (tmp2 == tmp.tema[i].nama) {
//                 tmp3 = tmp.tema[i].tiket;
//                 if ($('#status').val() == "pelajar") { tmp3 = tmp3 / 2; }
//                 $('.harga-tiket').append(' ' + tmp3);
//             }
//         }
//     });
// }

$(document).ready(function() {
    $('#tema').on('change', function() {
        var tema = $(this).val();
        if (tema) {
            $.ajax({
                url: 'registration/ajax/' + tema,
                type: "GET",
                dataType: "json",
                success: function(data) {

                    $('#harga').empty();
                    // $.each(data, function(k, v) {
                    //     $('.harga-tiket').append(" " + v);
                    // });
                    var harga_skrg = data;
                    if ($('#status').val() == "pelajar") {
                        harga_skrg = harga_skrg / 2;
                    }
                    $('.harga-tiket').append(" " + harga_skrg);
                }
            });
        } else {
            $('#harga').empty();
        }
    });

});