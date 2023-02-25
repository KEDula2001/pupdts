function alert_error(message){
	Swal.fire(
		'Oops!',
		message,
		'error'
	  );
}

function alert_success(message){
	 Swal.fire(
	  'Success!',
	  message,
	  'success'
	);
}

function alert_warning(message){
	 Swal.fire(
	  'Warning!',
	  message,
	  'warning'
	);
}

function approvePerOffices(route, route_id, request_id, id, request_code, url){
	Swal.fire({
		title: 'Are you sure you want to clear Student with Request Code '+ request_code +' for Document Request?',
		text: "You won't be able to revert this!",
		icon: 'question',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: 'Yes, continue!',
		allowOutsideClick: false,
	}).then((result) => {
		if (result.isConfirmed) {
			Swal.fire({
				title: 'Processing...',
				html: 'Please wait.',
				icon: 'info',
				timer: 500,
				timerProgressBar: true,
				allowOutsideClick: false,
				didOpen: () => {
					Swal.showLoading()
				},
			}).then((result) => {
				$.ajax({
					url: route + id + '/' + route_id + '/' + request_id,
					success: function (response) {
						console.log(response);
                        if(response.status_icon == 'success'){
							Swal.fire({
								title: 'Success!',
								text: response.status_message,
								icon: 'success',
								confirmButtonColor: '#3085d6',
								confirmButtonText: 'OK'
							  }).then((result) => {
								if (result.isConfirmed) {
									window.location.href = url;
								}
							  })
                        }else{
							Swal.fire({
								title: 'Opss!',
								text: response.status_message,
								icon: 'error',
								confirmButtonColor: '#3085d6',
								confirmButtonText: 'OK!'
							  }).then((result) => {
								if (result.isConfirmed) {
									window.location.href = url;
								}
							  })
                        }
					}
				});
			});
		}
	});
}

function confirmDelete(route, id){
	Swal.fire({
		title: 'Are you sure?',
		text: "You won't be able to revert this!",
		icon: 'question',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: 'Yes, delete it!',
		allowOutsideClick: false,
	}).then((result) => {
		if (result.isConfirmed) {
			Swal.fire({
				title: 'Processing...',
				html: 'Please wait.',
				icon: 'info',
				timer: 1000,
				timerProgressBar: true,
				allowOutsideClick: false,
				didOpen: () => {
					Swal.showLoading()
				},
			}).then((result) => {
				$.ajax({
					url: route + id,
					success: function (response) {
						console.log(response)
                        if(response.status_icon == 'success'){
                            alert_success('Successfully Deleted');
                        }else{
                            alert_error('Failed to Delete');
                        }
					}
				});
			});
		}
	});
}