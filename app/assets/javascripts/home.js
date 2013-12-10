	

$( document ).ready(function() {
		teste();
		get_tamanho();
		update();
	 $('.datepicker').datepicker();
	});


	function get_tamanho(){
		var height = ($(window).height() /100) * 70;
		$(".row").css({
			'height' : height,

		});	
	}
	get_tamanho();
	$( window ).resize(function() {
		get_tamanho();
	});

	
	function teste(){
		$(document).on('click', '.title-list', function(){ 

			var str1 = $(this).html();
			var str2 = "<input";
			if(str1.indexOf(str2) != -1){

			}else{
				$(this).html('<input id="list_title" list='+$(this).attr("lista")+' class="form-control" name="list[title]" type="text" value="'+$.trim($(this).html())+'">');
				$("#list_title").focus();
				update();
			}
		});
	}

	function update(){
		$(document).on('blur', '#list_title', function(){  	
			$('#edit_list_'+$(this).attr("list")).submit();
			$("#title").html($(this).val());		
		});

		$(document).on('keydown', '#list_title', function(ev){ 
			if(ev.which === 13) {
        // Will change backgroundColor to blue as example       
        $('#edit_list_'+$(this).attr("list")).submit(); 
        $("#title").html($(this).val());      
        // Avoid form submit
        return false;
    }
});
	}