$(document).ready(function () {
    $('select').formSelect();


if(($(window).width())<601){
    $('.footSec2 .left-align').addClass('center');
    $('.footSec2 .right-align').addClass('center');
}


    // start sticky navbar
    $(window).scroll(function () {
        if ($(window).scrollTop() > 300) {
            $('#stickyNav').addClass('navbarFixed');
        }
        if ($(window).scrollTop() < 300) {
            $('#stickyNav').removeClass('navbarFixed');
        }
    });
    // end sticky navbar
    // start career
    $('.carSlider .carousel.carousel-slider').carousel({
        fullWidth: true
    });
    $('.carSlider i#prev').click(function () {
        $('.carSlider .carousel').carousel('prev');
    });
    $('.carSlider i#next').click(function () {
        $('.carSlider .carousel').carousel('next');
    });
    // end career
    $('.fixed-action-btn').floatingActionButton();
    $('.teamSlidSec .carousel').carousel();
    $('.carousel.ourTeamCaro').carousel();
    $('.sidenav').sidenav();
    $('.launchSec .owl-carousel').owlCarousel({
        loop: true,
        margin: 0,
        nav: true,
        responsive: {
            0: {
                items: 2,
                margin:10
            },
            600: {
                items: 3
            },
            1000: {
                items: 4
            }
        }
    });
    $('.galSec .owl-carousel').owlCarousel({
        loop: true,
        margin: 0,
        nav: true,
        responsive: {
            0: {
                items: 3
            },
            600: {
                items: 3
            },
            1000: {
                items: 3
            }
        }
    });
    $('.categSec .owl-carousel').owlCarousel({
        loop: true,
        margin: 50,
        nav: true,
        responsive: {
            0: {
                items: 2,
                margin: 10
            },
            600: {
                items: 3
            },
            1200: {
                items: 5
            }
        }
    });
});
var myVideo = document.getElementById("video1");
function playPause() {
    if (myVideo.paused)
        myVideo.play();
    else
        myVideo.pause();
}
// start trending recipe
$('.trendRecipeRo .owl-carousel').owlCarousel({
    loop: true,
    margin: 50,
    nav: true,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 2
        },
        1000: {
            items: 2
        }
    }
});
// end trending recipe
// start your recipe
$('.urRecipe .owl-carousel').owlCarousel({
    loop: true,
    margin: 50,
    nav: true,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 2
        },
        1000: {
            items: 2
        }
    }
});
// end your recipe
// start trending recipe
$('.suggestRec .owl-carousel').owlCarousel({
    loop: true,
    margin: 50,
    nav: true,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 2
        },
        1000: {
            items: 2
        }
    }
});
// end trending recipe
// start chef slider
$('.chefslider .owl-carousel').owlCarousel({
    loop: true,
    margin: 50,
    nav: true,
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 3
        },
        1000: {
            items: 3
        }
    }
});
// end chef slider
$('.reviewRec .owl-carousel').owlCarousel({
    center: true,
    items: 2,
    loop: true,
    margin: 100,
    responsive: {
        0: {
            items: 2
        },
        600: {
            items: 2
        },
        1000: {
            items: 2
        }
    }
});
// start home banner
$('.homeBnrCarousel').owlCarousel({
    dots: true,
    loop: true,
    nav: true,
    autoplay: true,
    items: 1
});
// end home banner