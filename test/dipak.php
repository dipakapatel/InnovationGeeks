<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<form id="my-form">
    <input type="button" id="AddFile" value="Add File">
    <ul id="FileUploader"></ul>
    <input type="submit" value="save" />
</form>

<script >
jQuery(function ($) {

  
    var filenumber = 1;
    $("#AddFile").click(function () { 
        $('<li><input type="file" name="FileUpload' + filenumber + '" id="FileUpload' + filenumber + '" /> <a href="#" class="RemoveFileUpload">Remove</a></li>').prependTo("#FileUploader");
        
        // declare the rule on this newly created field        
        $('#FileUpload' + filenumber).rules('add', {
            required: true,
            accept: "image/jpeg, image/pjpeg"
        });
        
        filenumber++;
        
        return false;
    });
    $("#FileUploader").on('click', '.RemoveFileUpload', function () { //Remove input
        if (filenumber > 0) {
            $(this).parent('li').remove();
            filenumber--;
        }
        return false;
    });


})
</script>