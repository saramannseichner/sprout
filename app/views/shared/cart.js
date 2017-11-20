  $menu_navigation = $('#main-nav'),
  $cart_trigger = $('#shopping-cart-closed'),
  $cart_opened = $('#shopping-cart-opened'),
  $lateral_cart = $('#cart-summary'),
  $shadow_layer = $('#shadow-layer'),
  $main_container = $('#main_container');

  shoppingCartClosed = document.getElementById("shopping-cart-closed");
  shoppingCartOpened = document.getElementById("shopping-cart-opened");
  container = document.getElementById("main-container");
  shadow_layer = document.getElementById("shadow-layer");
  cartSummary = document.getElementById("cart-summary");
  shoppingCartClosed.addEventListener("click", (event) => {
      shoppingCartClosed.classList.add("hidden");
      cartSummary.classList.remove("hidden");
      shoppingCartOpened.classList.remove("hidden");
      container.style.marginRight = "280px";
      shadow_layer.style.display = "block";
  });
  shoppingCartOpened.addEventListener("click", (event) => {
      shoppingCartClosed.classList.remove("hidden");
      cartSummary.classList.add("hidden");
      shoppingCartOpened.classList.add("hidden");
      container.style.marginRight = "initial"
      shadow_layer.style.display = "none";
  });
  shadow_layer.addEventListener('click', (event) => {
      shoppingCartClosed.classList.remove("hidden");
      cartSummary.classList.add("hidden");
      shoppingCartOpened.classList.add("hidden");
      container.style.marginRight = "initial"
      shadow_layer.style.display = "none";
  });

  // shoppingCartClosed.addEventListener("click", (event) => {
  //     shoppingCartClosed.classList.add("hidden");
  //     cartSummary.classList.remove("hidden");
  //     shoppingCartOpened.classList.remove("hidden");
  //     container.style.marginRight = "280px";
  // });

  // shoppingCartOpened.addEventListener("click", (event) => {
  //     shoppingCartClosed.classList.remove("hidden");
  //     cartSummary.classList.add("hidden");
  //     shoppingCartOpened.classList.add("hidden");
  //     container.style.marginRight = "initial"
  // });
  //open cart
//   $cart_trigger.on('click', function(event){
//     event.preventDefault();
//     toggle_panel_visibility($lateral_cart, $cart_opened, $shadow_layer, $('body'));
//     $main_container.style.marginRight = "280px";
//   });

//   //close lateral cart or lateral menu
//   $shadow_layer.on('click', function(){
//     $lateral_cart.removeClass('speed-in');
//     $menu_navigation.removeClass('speed-in');
//     $shadow_layer.removeClass('is-visible');
//     $('body').removeClass('overflow-hidden');
//   });

// function toggle_panel_visibility ($lateral_panel, $background_layer, $body) {
//   if( $lateral_panel.hasClass('speed-in') ) {
//     $lateral_panel.removeClass('speed-in');
//     $background_layer.removeClass('is-visible');
//     $body.removeClass('overflow-hidden');
//   } else {
//     $lateral_panel.addClass('speed-in');
//     $background_layer.addClass('is-visible');
//     $body.addClass('overflow-hidden');
//   }
// }
