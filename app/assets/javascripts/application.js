// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require cordova-2.3.0
//= require jquery.mobile-1.2.0
//= require GCMPlugin

uploadSuccess = function(responseData)
{
  $.mobile.loading('hide');
};

uploadPhotoFn = function(targetPath)
{
  return function(photoPath)
  {
    var options = new FileUploadOptions();
    options.fileKey = "image";
    options.fileName = photoPath.substr(photoPath.lastIndexOf('/')+1);

    $.mobile.loading('show', { text: 'Uploading Photo', textVisible: true });
    new FileTransfer().upload(photoPath, targetPath, uploadSuccess, uploadSuccess, options);
  };
};

$('[data-photo-target]').live('tap', function(e) {
  successHandler = uploadPhotoFn( $(e.currentTarget).data('photo-target') );
  navigator.camera.getPicture(
    successHandler,
    function(msg){ alert('Error taking photo: ' + msg);},
    { quality : 75 }
  );
});