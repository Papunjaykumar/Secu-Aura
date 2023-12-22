//On clicking the REgistration page
$().ready(function(){
	
			console.log("loaded ...");
			$('#reg-form').on('submit',function(event){
				event.preventDefault();
				let form=new FormData(this);
				$('#submit-button').hide();
				$('#loader').show();
				//send to the register servlet
				$.ajax({
					url:"registerHandler",
					type:"POST",
					data:form,
					success:function(data,textStatus,jqXHR){
						console.log(data);
						
						$('#submit-button').show();
						$('#loader').hide();
						if(data.trim()==='Done'){
							swal("Your Registration has been successfull","","success")
							.then((value) => {
								//console.log(window.location.href.replace("registration","login"));
							  window.location=window.location.href.replace("registration","login");
							});
						}else{
							swal(data);
						}
						
						
						
					},
					error:function(jqXHR,textStatus,errorThrown){
						console.log(jqXHR);
						
						$('#submit-button').show();
						$('#loader').hide();
						swal("Something went wrong ... try again","","danger")
						
					},
					processData:false,
					contentType:false
					
				})
			})
		})
		
		
		//password validation
		function validate_password() {

			var pass = document.getElementById('pass').value;
			var confirm_pass = document.getElementById('cnf_pass').value;
			console.log(confirm_pass);
			console.log(pass);
			
			if (pass != confirm_pass) {
				document.getElementById('wrong_pass_alert').style.color = 'red';
				document.getElementById('wrong_pass_alert').innerHTML
					= '☒ Use same password';
				document.getElementById('submit-button').disabled = true;
				document.getElementById('submit-button').style.opacity = (0.4);
			} else {
				document.getElementById('wrong_pass_alert').style.color = 'green';
				document.getElementById('wrong_pass_alert').innerHTML =
					'🗹 Password Matched';
				document.getElementById('submit-button').disabled = false;
				document.getElementById('submit-button').style.opacity = (1);
			}
		}

		