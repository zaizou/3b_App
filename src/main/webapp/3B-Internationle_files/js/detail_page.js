/**
 * Created by Yazid on 12/07/2016.
 */

$(document).ready(function ($) {



    $('.fotorama').on('fotorama:ready', function (e, fotorama) {
        console.log(e.type, fotorama.activeIndex);
        $("img").blowup();



    });






});

