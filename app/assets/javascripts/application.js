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
//= require bootstrap
//= require_tree .


$(document).ready(function(){
    $("select#product_plant_id").change(function(){
        var id_value_string = $(this).val();
        var ruta = "";
        ruta = "brands/for_plantid/";
        if (id_value_string == "") {
            // if the id is empty remove all the sub_selection options from being selectable and do not do any ajax
            $("select#product_brand_id option").remove();
            var row = "<option value=\"" + "" + "\">" + "" + "</option>";
            $(row).appendTo("select#product_brand_id");
        }
        else {
            // Send the request and update sub category dropdown
            $.ajax({
                dataType: "json",
                cache: false,
                url: "../" + application_root_path() + ruta + id_value_string,
                //url: application_root_path() + '/brands/for_plantid/' + id_value_string,
                timeout: 2000,
                error: function(XMLHttpRequest, errorTextStatus, error){
                    alert("Failed to submit : "+ errorTextStatus+" ;"+error);
                },
                success: function(data){
                    // Clear all options from sub category select
                    $("select#plant_brand_id option").remove();
                    //put in a empty default line
                    var row = "<option value=\"" + "0" + "\">" + "-- Seleciona una Marca --" + "</option>";
                    $(row).appendTo("select#product_brand_id");
                    // Fill sub category select
                    $.each(data, function(i, j){
                    row = "<option value=\"" + j.sub_section.id + "\">" + j.sub_section.name + "</option>";
                    $(row).appendTo("select#plant_brand_id");
                    });
                }
            });
        };
    });
});

