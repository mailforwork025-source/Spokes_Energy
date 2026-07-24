  /**
   * Sticky header on scroll
   */
   const selectHeader = document.querySelector('#header');
   if (selectHeader) {
     document.addEventListener('scroll', () => {
       window.scrollY > 100 ? selectHeader.classList.add('sticked') : selectHeader.classList.remove('sticked');
     });
   }
 
   /**
    * Navbar links active state on scroll
    */
   let navbarlinks = document.querySelectorAll('#navbar .scrollto');
 
   function navbarlinksActive() {
     navbarlinks.forEach(navbarlink => {
 
       if (!navbarlink.hash) return;
 
       let section = document.querySelector(navbarlink.hash);
       if (!section) return;
 
       let position = window.scrollY;
       if (navbarlink.hash != '#header') position += 200;
 
       if (position >= section.offsetTop && position <= (section.offsetTop + section.offsetHeight)) {
         navbarlink.classList.add('active');
       } else {
         navbarlink.classList.remove('active');
       }
     })
   }
   window.addEventListener('load', navbarlinksActive);
   document.addEventListener('scroll', navbarlinksActive);
 
   /**
    * Function to scroll to an element with top ofset
    */
   function scrollto(el) {
     const selectHeader = document.querySelector('#header');
     let offset = 0;
 
     if (selectHeader.classList.contains('sticked')) {
       offset = document.querySelector('#header.sticked').offsetHeight;
     } else if (selectHeader.hasAttribute('data-scrollto-offset')) {
       offset = selectHeader.offsetHeight - parseInt(selectHeader.getAttribute('data-scrollto-offset'));
     }
     window.scrollTo({
       top: document.querySelector(el).offsetTop - offset,
       behavior: 'smooth'
     });
   }
 
   /**
    * Fires the scrollto function on click to links .scrollto
    */
   let selectScrollto = document.querySelectorAll('.scrollto');
   selectScrollto.forEach(el => el.addEventListener('click', function(event) {
     if (document.querySelector(this.hash)) {
       event.preventDefault();
 
       let mobileNavActive = document.querySelector('.mobile-nav-active');
       if (mobileNavActive) {
         mobileNavActive.classList.remove('mobile-nav-active');
 
         let navbarToggle = document.querySelector('.mobile-nav-toggle');
         navbarToggle.classList.toggle('bi-list');
         navbarToggle.classList.toggle('bi-x');
       }
       scrollto(this.hash);
     }
   }));
 
   /**
    * Scroll with ofset on page load with hash links in the url
    */
   window.addEventListener('load', () => {
     if (window.location.hash) {
       if (document.querySelector(window.location.hash)) {
         scrollto(window.location.hash);
       }
     }
   });
 
   /**
    * Mobile nav toggle
    */
   const mobileNavToogle = document.querySelector('.mobile-nav-toggle');
   if (mobileNavToogle) {
     mobileNavToogle.addEventListener('click', function(event) {
       event.preventDefault();
 
       document.querySelector('body').classList.toggle('mobile-nav-active');
 
       this.classList.toggle('bi-list');
       this.classList.toggle('bi-x');
     });
   }
 
   /**
    * Toggle mobile nav dropdowns
    */
   const navDropdowns = document.querySelectorAll('.navbar .dropdown > a');
 
   navDropdowns.forEach(el => {
     el.addEventListener('click', function(event) {
       if (document.querySelector('.mobile-nav-active')) {
         event.preventDefault();
         this.classList.toggle('active');
         this.nextElementSibling.classList.toggle('dropdown-active');
 
         let dropDownIndicator = this.querySelector('.dropdown-indicator');
         dropDownIndicator.classList.toggle('bi-chevron-up');
         dropDownIndicator.classList.toggle('bi-chevron-down');
       }
     })
   });

    /**
   * Initiate glightbox
   */
     const glightbox = GLightbox({
      selector: '.glightbox'
    });
    
     /**
   * Animation on scroll function and init
   */
  function aos_init() {
    AOS.init({
      duration: 1000,
      easing: 'ease-in-out',
      once: true,
      mirror: false
    });
  }
  window.addEventListener('load', () => {
    aos_init();
  });

 /**
   * Clients Slider
   */
  new Swiper('.clients-slider', {
    speed: 400,
    loop: true,
    autoplay: {
      delay: 5000,
      disableOnInteraction: false
    },
    slidesPerView: 'auto',
    breakpoints: {
      320: {
        slidesPerView: 2,
        spaceBetween: 40
      },
      480: {
        slidesPerView: 3,
        spaceBetween: 60
      },
      640: {
        slidesPerView: 4,
        spaceBetween: 80
      },
      992: {
        slidesPerView: 4,
        spaceBetween: 120
      }
    }
  });

  /**
   * Testimonials Slider
   */
   new Swiper('.testimonials-slider', {
    speed: 600,
    loop: true,
    autoplay: {
      delay: 5000,
      disableOnInteraction: false
    },
    slidesPerView: 'auto',
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
      clickable: true
    }
  });

  /**
   * Clients Slider
   */
   new Swiper('.service-slider', {
    speed: 400,
    loop: true,
    autoplay: {
      delay: 5000,
      disableOnInteraction: false
    },
    slidesPerView: 'auto',
    breakpoints: {
      320: {
        slidesPerView: 1,
        spaceBetween: 40
      },
      480: {
        slidesPerView: 1,
        spaceBetween: 60
      },
      640: {
        slidesPerView: 1,
        spaceBetween: 60
      },
      992: {
        slidesPerView: 2,
        spaceBetween: 40
      }
    }
  });


  // 

  function myFunction(src){
  if($('body').hasClass('mobile_device')){

    $(src).parents('.item-card').addClass('click')
    $(src).parents('.item-card').find('.overlay').addClass('z-1')     
}
}
$('.item-card').on("click", function () {
  if($('body').hasClass('mobile_device')){
      $('.item-card').find(".overlay-sim-text").removeClass('overlay');
      $('.item-card').find(".simple-text").removeClass('d-none');

      $('.item-card').removeClass('click');

      $(this).find(".overlay-sim-text").addClass('overlay');
      $(this).find(".simple-text").addClass('d-none');
      $(this).addClass('click');

  }
  
});
