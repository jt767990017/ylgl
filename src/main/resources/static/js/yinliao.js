$(function () {

    var windowHeight = $(window).height();
    var windowWidth = $(window).width();

    $('.grey-background').css('min-height', windowHeight-75);


    $(".step-boxs ul li>p").mouseover(function(){
        $(this).parent().find('.content').show();

    });
    $(".step-boxs ul li>p").mouseout(function(){
        $(this).parent().find('.content').hide();

    });



    $('.buy-tab-content .goods-info .row a').click(function(){
        var showContentClass = $(this).attr('id');
        $('.buy-tab-content .goods-info .tab-content').hide();
        $('.'+showContentClass).show();

        $('.buy-tab-content .goods-info .row .col-xs-6').removeClass('active');
        $(this).parent().addClass('active');
    });


});