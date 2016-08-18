jQuery(document).ready(function($){

	//open/close lateral filter
	$('.cd-filter-trigger').on('click', function(){
		triggerFilter(true);
	});
	$('.cd-filter .cd-close').on('click', function(){
		triggerFilter(false);
	});

	function triggerFilter($bool) {
		var elementsToTrigger = $([$('.cd-filter-trigger'), $('.cd-filter'), $('.cd-tab-filter'), $('.cd-gallery')]);
		elementsToTrigger.each(function(){
			$(this).toggleClass('filter-is-visible', $bool);
		});
	}

	//mobile version - detect click event on filters tab
	var filter_tab_placeholder = $('.cd-tab-filter .placeholder a'),
		filter_tab_placeholder_default_value = 'Select',
		filter_tab_placeholder_text = filter_tab_placeholder.text();
	
	$('.cd-tab-filter li').on('click', function(event){
		//detect which tab filter item was selected
		var selected_filter = $(event.target).data('type');
			
		//check if user has clicked the placeholder item
		if( $(event.target).is(filter_tab_placeholder) ) {
			(filter_tab_placeholder_default_value == filter_tab_placeholder.text()) ? filter_tab_placeholder.text(filter_tab_placeholder_text) : filter_tab_placeholder.text(filter_tab_placeholder_default_value) ;
			$('.cd-tab-filter').toggleClass('is-open');

		//check if user has clicked a filter already selected 
		} else if( filter_tab_placeholder.data('type') == selected_filter ) {
			filter_tab_placeholder.text($(event.target).text());
			$('.cd-tab-filter').removeClass('is-open');	

		} else {
			//close the dropdown and change placeholder text/data-type value
			$('.cd-tab-filter').removeClass('is-open');
			filter_tab_placeholder.text($(event.target).text()).data('type', selected_filter);
			filter_tab_placeholder_text = $(event.target).text();
			
			//add class selected to the selected filter item
			$('.cd-tab-filter .selected').removeClass('selected');
			$(event.target).addClass('selected');
		}
	});
	
	//close filter dropdown inside lateral .cd-filter 
	$('.cd-filter-block h4').on('click', function(){
		$(this).toggleClass('closed').siblings('.cd-filter-content').slideToggle(300);
	})

	//fix lateral filter and gallery on scrolling
	$(window).on('scroll', function(){
		(!window.requestAnimationFrame) ? fixGallery() : window.requestAnimationFrame(fixGallery);
	});

	function fixGallery() {
		var offsetTop = $('.cd-main-content').offset().top,
			scrollTop = $(window).scrollTop();
		( scrollTop >= offsetTop ) ? $('.cd-main-content').addClass('is-fixed') : $('.cd-main-content').removeClass('is-fixed');
	}

	/************************************
		MitItUp filter settings
		More details:
		https://mixitup.kunkalabs.com/
		or:
		http://codepen.io/patrickkunka/
	*************************************/

	//buttonFilter.init();
	$('.cd-gallery ul').mixItUp({
	    controls: {
	    	enable: false
	    },
	    callbacks: {
	    	onMixStart: function(){
	    		$('.cd-fail-message').fadeOut(200);
	    	},
	      	onMixFail: function(){
	      		$('.cd-fail-message').fadeIn(200);
	    	}
	    }
	});



	//search filtering
	//credits http://codepen.io/edprats/pen/pzAdg
	var inputText;
	var $matching = $();

	var delay = (function(){
		var timer = 0;
		return function(callback, ms){
			clearTimeout (timer);
		    timer = setTimeout(callback, ms);
		};
	})();


});

/*****************************************************
	MixItUp - Define a single object literal
	to contain all filter custom functionality
*****************************************************/
var selectedCategory="";
var selectedPointure="";
var filterString="";
var $container=$('.cd-gallery ul');





$("li.filter").on("click",function () {
	if($container.mixItUp('isLoaded')){
		filterString="."+$(this).attr('id');
		$('.cd-gallery ul').mixItUp('filter',filterString);
		console.log(filterString);
	}
});


	$("#categoryFilterSelect").on('change',function () {

		if($container.mixItUp('isLoaded')){
			if(selectedCategory!=""){
				console.log("previously selected cat is :  "+selectedCategory);
				filterString=filterString.replace(selectedCategory,'');
			}
			if($(this).val() !="all"){
				selectedCategory=$(this).val();
				filterString+=selectedCategory;
			}

			console.log("Current filter String is :  "+filterString);
			applyFilter();

		}

	});


	$("#pointureFilterSelect").on('change',function () {

		if($container.mixItUp('isLoaded')){
			if(selectedPointure!=""){
				console.log("previously selected cat is :  "+selectedPointure);
				filterString=filterString.replace(selectedPointure,'');
			}
			if($(this).val() !="all") {
				selectedPointure="."+$(this).val();
				filterString+=selectedPointure;
			}

			console.log("Current filter String is :  "+filterString);
			applyFilter();

		}

	});





	function applyFilter(){
		if(filterString=="")
			filterString="all";
		$container.mixItUp('filter',filterString);
	}


























var buttonFilter = {
  	// Declare any variables we will need as properties of the object
  	$filters: null,
  	groups: [],
  	outputArray: [],
  	outputString: '',

  	// The "init" method will run on document ready and cache any jQuery objects we will need.
  	init: function(){
    	var self = this; // As a best practice, in each method we will asign "this" to the variable "self" so that it remains scope-agnostic. We will use it to refer to the parent "buttonFilter" object so that we can share methods and properties between all parts of the object.

    	self.$filters = $('.cd-main-content');
    	self.$container = $('.cd-gallery ul');

	    self.$filters.find('.cd-filters').each(function(){
	      	var $this = $(this);

		    self.groups.push({
		        $inputs: $this.find('.filter'),
		        active: '',
		        tracker: false
		    });
	    });

/*

		$("li.filter").on("click",function () {
			filterString=$(this).attr('id');
			//alert(filterString);
			//$('.cd-gallery ul').mixItUp('filter',"all");
			$('.cd-gallery ul').mixItUp('filter',filterString);

		});
*/




		//self.bindHandlers();
  	},

  	// The "bindHandlers" method will listen for whenever a button is clicked.
  	bindHandlers: function(){
    	var self = this;

		$("li.filter").on("click",function () {
			//filterString=$(this).attr('id');
			//alert(filterString);
			//$('.cd-gallery ul').mixItUp('filter',"all");
			//$('.cd-gallery ul').mixItUp('filter',filterString);
			self.parseFilters();

		});
    	/*self.$filters.on('click', 'a', function(e){
			alert("click");
	      	self.parseFilters();
    	});*/
	    self.$filters.on('change', function(){
	    	 self.parseFilters();
	    });
  	},

  	parseFilters: function(){
	    var self = this;
	    // loop through each filter group and grap the active filter from each one.
	    for(var i = 0, group; group = self.groups[i]; i++){
	    	group.active = [];
	    	group.$inputs.each(function(){
	    		var $this = $(this);
					 if( $this.find('.selected').length > 0 )
					group.active.push($this.attr('data-filter'));


	    	});
	    }

		$("#categoryFilterSelect").on('change',function () {
			if(selectedCategory!=""){
				console.log("previously selected cat is :  "+selectedCategory);
				console.log("previously self was :  "+filterString);
				//filterString=filterString.replace(selectedCategory,'');
				console.log("after selected cat is :  "+filterString);
			}
			selectedCategory=$(this).val();
			//self.outputString+=$(this).val();
			group.active.push($this.val());
		});




	    self.concatenate();
  	},

  	concatenate: function(){
    	var self = this;

    	self.outputString = ''; // Reset output string

	   for(var i = 0, group; group = self.groups[i]; i++){
	      	self.outputString += group.active;
	    }


		console.log(self.outputString);


		// If the output string is empty, show all rather than none:
	    !self.outputString.length && (self.outputString = 'all');

    	// Send the output string to MixItUp via the 'filter' method:
		if(self.$container.mixItUp('isLoaded')){
	    	self.$container.mixItUp('filter', self.outputString);
		}
  	}






};




