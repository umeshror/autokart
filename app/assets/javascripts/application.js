// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function checkout(){
    confirm("Are you sure?");
}

$(document).ready(function(){
//    alert('Hi Rails , I am jQuery')

    $('.panel-success').mouseover(function(){
        $(this).css('border-color', '#269abc');
    }).mouseout(function(){
        $(this).css('border-color', '');
    })

    cars = $('#dynamic_car_id').html();
    products = $('#dynamic_product_id').html();
    $('#dynamic_car_id').parent().hide();
    $('#dynamic_product_id').parent().hide();

    $('.vall').change(function(){
        brand_id = $('.vall :selected').val();
        if( brand_id!= '' )

        {


                    selected_b =  $('.vall :selected').text();

                    //alert("brand_id"+ brand_id);
            //        alert(selected_brand);
//            //        alert(cars);
//                    selected_b = selected_brand.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
//                    alert(selected_b);
                    options = $(cars).filter("optgroup[label="+selected_b+"]").html();
            //        alert(options);
                    if (options){
                        $('#dynamic_car_id').html(options);
                        $('#dynamic_car_id').parent().show();
                    }
                    else{
                        $('#dynamic_car_id').hide();
                        $('#dynamic_product_id').hide();
                    }

                    $('.vallcar').change(function(){
                        selected_car =    $('.vallcar :selected').text();
                        car_id = $('.vallcar :selected').val();
            //
            //            alert(selected_car);
            //            alert(products);
                        selected_c = selected_car.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
            //            alert(selected_c);
                        options = $(products).filter("optgroup[label="+selected_c+"]").html();
            //            alert(options);
                        if (options){
                            $('#dynamic_product_id').html(options);
                            $('#dynamic_product_id').parent().show();
                        }
                        else
                            $('#dynamic_product_id').empty();


                        $('.vallproduct').change(function(){
                            selected_product =    $('.vallproduct :selected').text();
                            product_id = $('.vallproduct :selected').val();

            //                alert(selected_product);
                            $('.submit').click(function(){
                                url =  "http://autokart.herokuapp.com/brands/"+brand_id+"/cars/"+car_id+"/products/"+product_id+"/types"
                                window.location.href = url;
            //                    alert(selected_b+"  "+selected_c+" "+selected_product  );
                            });
                        })


                    });
        }

    });

})

