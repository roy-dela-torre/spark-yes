function setEqualHeightForSection(sectionSelector, secondSelector, groupSizeBreakpoints) {
    var elementsToResize = $(sectionSelector).find(secondSelector);
    elementsToResize.css('height', 'auto'); // Reset height to auto first

    var windowWidth = $(window).width();
    var groupSize = 1; // default

    // Use provided breakpoints or fallback to defaults
    var breakpoints = groupSizeBreakpoints || [
        { min: 1200, size: 5 },
        { min: 992, size: 4 },
        { min: 768, size: 3 },
        { min: 480, size: 2 },
        { min: 0, size: 1 }
    ];

    for (var b = 0; b < breakpoints.length; b++) {
        if (windowWidth >= breakpoints[b].min) {
            groupSize = breakpoints[b].size;
            break;
        }
    }

    for (var i = 0; i < elementsToResize.length; i += groupSize) {
        var tallestHeight = 0;
        var group = elementsToResize.slice(i, i + groupSize);

        group.each(function () {
            var height = $(this).outerHeight();
            if (height > tallestHeight) {
                tallestHeight = height;
            }
        });

        group.height(tallestHeight);
    }
}
$(document).ready(function () {
    var $coreProgramsCarousel = $('#core_programs');
    $coreProgramsCarousel.owlCarousel({
        loop: false,
        margin: 24,
        nav: false,
        dots: false,
        items: 4,
        responsive: {
            0: {
                items: 1
            },
            575: {
                items: 2
            },
            991: {
                items: 3
            },
            1200: {
                items: 4
            }
        }
    });

    function updateNavButtons() {
        var carouselData = $coreProgramsCarousel.data('owl.carousel');
        if (!carouselData) return;
        var current = carouselData.current();
        var max = carouselData.maximum();
        $('section.core_programs .group_btn .prev').prop('disabled', current === 0);
        $('section.core_programs .group_btn .next').prop('disabled', current === max);
    }

    $('section.core_programs .group_btn .prev').click(function () {
        $coreProgramsCarousel.trigger('prev.owl.carousel');
    });
    $('section.core_programs .group_btn .next').click(function () {
        $coreProgramsCarousel.trigger('next.owl.carousel');
    });

    $coreProgramsCarousel.on('changed.owl.carousel refreshed.owl.carousel initialized.owl.carousel', function () {
        updateNavButtons();
    });

    // Initial state
    updateNavButtons();

    var $ourCoachesCarousel = $('#our_coaches');
    $ourCoachesCarousel.owlCarousel({
        loop: true,
        autoWidth: true,
        nav: false,
        dots: false,
        autoplay: true,
        items: 4,
        autoplaySpeed: 4200,
        autoplayTimeout: 4200,
        slideTransition: 'linear',
        mouseDrag: false,
        responsive: {
            0: {
                items: 1,
                margin: 10
            },
            575: {
                items: 2,
                margin: 30
            },
            991: {
                items: 3,
                margin: 30
            },
            1200: {
                items: 4,
                margin: 35
            },
            1400: {
                items: 5,
                margin: 40
            }
        }
    });

    // function counter(id, start, end, duration) {
    //     let obj = document.getElementById(id),
    //         current = start,
    //         range = end - start,
    //         increment = end > start ? 1 : -1,
    //         step = Math.abs(Math.floor(duration / range)),
    //         timer = setInterval(() => {
    //             current += increment;
    //             obj.textContent = current + "+";
    //             if (current == end) {
    //                 clearInterval(timer);
    //             }
    //         }, step);
    // }
    // counter("count1", 0, 400, 3000);
    // counter("count2", 100, 50, 2500);
    // counter("count3", 0, 40, 3000);
    // counter("count3", 0, 40, 3000);
    // counter("count4", 0, 100, 3000);
    // counter("count5", 0, 100, 3000);


    // Common carousel options for logo rows
    function initLogoCarousel(selector, extraOptions = {}) {
        $(selector).owlCarousel(Object.assign({
            loop: true,
            autoWidth: true,
            items: 9,
            margin: 60,
            nav: false,
            dots: false,
            autoplay: true,
            autoplaySpeed: 4200,
            autoplayTimeout: 4200,
            slideTransition: 'linear',
            mouseDrag: false,
        }, extraOptions));
    }

    $('#logos_first_row, #logos_second_row').trigger('refresh.owl.carousel');


    initLogoCarousel('#logos_first_row');
    initLogoCarousel('#logos_second_row', { rtl: true }); // Enable right-to-left animation for second row

    $('#testimonial').owlCarousel({
        loop: true,
        margin: 30,
        nav: false,
        dots: true,
        items: 3,
        center: true,
        autoplay: true,
        autoplayTimeout: 5000,
        responsive: {
            0: {
                items: 1
            },
            768: {
                items: 2
            },
            1200: {
                items: 3
            }
        }
    });


    setEqualHeightForSection('section.core_programs', 'h3', [
        { min: 1200, size: 4 },
        { min: 992, size: 3 },
        { min: 768, size: 2 },
        { min: 0, size: 1 }
    ]);

    setEqualHeightForSection('section.core_programs', 'p', [
        { min: 1200, size: 4 },
        { min: 992, size: 3 },
        { min: 768, size: 2 },
        { min: 0, size: 1 }
    ]);


    $("section.core_programs .item").each(function () { 
        var currentHeight = $(this).outerHeight(); // includes padding & border
        var newHeight = currentHeight + 78; // Adjusted height
        $(this).css('min-height', newHeight + 'px');
    });
});