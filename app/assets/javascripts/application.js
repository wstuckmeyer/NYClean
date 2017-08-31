// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.




//= require jquery-3.2.1.js
//= require isotope.js
//= require maps.js
//= require rails-ujs

//= require turbolinks
//= require materialize-sprockets
//= require_tree .
$( document ).ready(function(){
	 $(".button-collapse").sideNav();
	 $('select').material_select();
	 $('.grid').isotope({
  // options
  itemSelector: '.grid-item',
  layoutMode: 'fitRows'
});
	 var $grid = $('.grid').isotope({
  // options
});
	 $('.filter-button-group').on( 'click', 'button', function() {
  		var filterValue = $(this).attr('data-filter');
  		$grid.isotope({ filter: filterValue });
});

$(function() {

    var $container = $('#container'),
        $select = $('#filters select');

    $container.isotope({
        itemSelector: '.item'
    });

    $select.change(function() {
        var filters = $(this).val();
;
        $container.isotope({
            filter: filters
        });
    });

});

})