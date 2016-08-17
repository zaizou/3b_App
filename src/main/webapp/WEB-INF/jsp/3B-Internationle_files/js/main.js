jQuery(document).ready(function($){

	$("#prix_range").ionRangeSlider({
		type: "double",
		grid: true,
		min: 0,
		max: 20000,
		from: 1000,
		step: 1000,
		prefix: "DZ"
	});

	$('select').material_select();


	var rangeSlider=document.getElementById('prix_range_slider');



	noUiSlider.create(rangeSlider, {
		range:{
			min:0,
			max:30000
		},
		behaviour: 'drag',
		start:[10000,16000],
		connect: true,
		step:1000,
		format: wNumb({
			decimals: 0,
			thousand: '',
			postfix: ' DZ',
		})

	});

	rangeSlider.noUiSlider.on('update', function( values, handle ) {
		$("#inf_prix_range").val(rangeSlider.noUiSlider.get()[0]);
		$("#inf_prix_range").text(rangeSlider.noUiSlider.get()[0]);
		$("#sup_prix_range").val(rangeSlider.noUiSlider.get()[1]);
		$("#sup_prix_range").text(rangeSlider.noUiSlider.get()[1]);
		//snapValues[handle].innerHTML = values[handle];
	});

	var selParent=$('select.categories').parent();
	selParent.find('input').css("font-size","13px");
	selParent=$('select.tailles').parent();
	selParent.find('input').css("font-size","13px");



	$("#FilterSelect").on('change', function(){
		//alert(this.value);
		//$container
			$(".cd-gallery ul").mixItUp('filter', this.value);

	});
















});




