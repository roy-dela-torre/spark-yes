<?php get_header(); ?>
<section class="404" style="background: url('<?= get_stylesheet_directory_uri() ?>/assets/img/homepage/banner1.jpg')no-repeat center center/cover;">
    <div class="wrapper">
        <div class="flex-col-center max-w-[616px] h-full lg:max-h-[1000px] max-h-[600px] justify-center mx-auto">
            <h1 class="text-center text-white mb-[15px]">404!</h1>
            <p class="text-center text-white mb-[30px]">Lorem ipsum dolor sit amet consectetur. Non a molestie risus euismod risus rhoncus ut sollicitudin.</p>
            <a href="<?= get_home_url(); ?>" class="red_btn">Go Back to Homepage</a>
        </div>
    </div>
</section>
<?php get_footer(); ?>