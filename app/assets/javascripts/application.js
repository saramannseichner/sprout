//= require jquery
//= require jquery_ujs
//= require cloudinary
//= require attachinary
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function() {
  setTimeout(function() {
    $('.alert').slideUp()
  }, 5000);
});

// fb sdk

window.fbAsyncInit = function() {
  FB.init({
    appId            : '1743148142647521',
    autoLogAppEvents : true,
    xfbml            : true,
    version          : 'v2.11'
  });
};

(function(d, s, id){
   var js, fjs = d.getElementsByTagName(s)[0];
   if (d.getElementById(id)) {return;}
   js = d.createElement(s); js.id = id;
   console.log(fjs.parentNode);
   js.src = "https://connect.facebook.net/en_US/sdk.js";
   fjs.parentNode.insertBefore(js, fjs);
 }(document, 'script', 'facebook-jssdk'));
