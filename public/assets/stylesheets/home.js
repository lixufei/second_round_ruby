$(document).ready(function(){
			$(".clickMe").click(function(){
					$.ajax({
						url:"/home/lixufei",
						type: "post", 
						data: {name: $('input[name="myName"]').val()},
						success:function(data){
							$(".getDataFromInput").text(data);
							}});
				})
		});