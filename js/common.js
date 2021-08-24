function register()
{
    var name = $('#name').val();
    var email = $('#email').val();
	if($.trim(name)=='' || $.trim(email)=='')
	{
        Swal.fire('Please Enter Name And Email')
		return;
	}else
	{
        Swal.fire({
         icon: 'success',
            title: 'Registered Successfully',
            text: 'Please Upload Artwork!',
            showConfirmButton: false,
            timer: 1500
            }).then((result) => {
                window.open("art_work.html?name="+name+"",'_blank');
            })
		// $.ajax({
		// 	url:"php/register.php",
		// 	data:{name:name,email:email},
		// 	type:'POST',
		// 	dataType: 'text',
		// 	success: function(result)
		// 	{
		// 		if (result!=null) 
        //         {
        //             Swal.fire({
        //                 icon: 'success',
        //                 title: 'Registered Successfully',
        //                 text: 'Please Upload Artwork!',
        //                 showConfirmButton: false,
        //                 timer: 1500
        //                 }).then((result) => {
        //                     window.open("art_work.php?name="+name+"",'_blank');
        //                 })
        //         }				
		// 	},
		// });
	}
}