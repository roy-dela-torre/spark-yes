<?php get_header();
//Template Name: Terms and Conditions

// Set up data to pass to the banner template
$banner_data = [
    'content_width' => isset($content_width) ? $content_width : '1136px',
    'banner_header' => get_field('banner_header'),
    'banner_content' => get_field('banner_content'),
    'banner_background_image' => get_field('banner_background_image'),
    'banner_class' => 'min-h-[600px] flex flex-col justify-center section_padding', // Default class for the terms and conditions banner
];
get_template_part('template/banner', null, $banner_data);
?>
<style>
    section#terms_and_condition h2:not(:first-child) {
        margin-top: 60px;
    }
</style>
<section class="section_padding" id="terms_and_condition">
    <div class="wrapper">
        <div class="content">
            <?= the_content(); ?>
        </div>
    </div>
</section>
<?php get_footer(); ?>