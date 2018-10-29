import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();
import { tabs } from '../components/tab';
tabs();
import "../plugins/flatpickr"

$(function(){
  $(".form-control-file").on("change", function(){
    var preview = document.querySelector('#preview');
    var files   = document.querySelector('input[type=file]').files;

    function readAndPreview(file) {

      if ( /\.(jpe?g|png|gif)$/i.test(file.name) ) {
        var reader = new FileReader();

        reader.addEventListener("load", function () {
          var image = new Image();
          image.height = 100;
          image.width = 100;
          image.title = file.name;
          image.src = this.result;
          preview.appendChild( image );
        }, false);

        reader.readAsDataURL(file);
      }

    }

    if (files) {
      [].forEach.call(files, readAndPreview);
    }
  })
})

$('#return_images').on('click', function(e){
   var $el = $('#return_images');
   var $el2 = $('#preview');
   $el.wrap('<form>').closest('form').get(0).reset();
   $el.unwrap();
   $el2.empty();

});


