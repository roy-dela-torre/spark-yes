<?php get_header();
// Template Name: About Us
$banner_data = [
    'content_width' => isset($content_width) ? $content_width : '767px',
    'banner_header' => get_field('banner_header'),
    'banner_content' => get_field('banner_content'),
    'banner_background_image' => get_field('banner_background_image'),
    'banner_class' => 'min-h-[600px] flex flex-col justify-center section_padding', // Default class for the terms and conditions banner
];
get_template_part('template/banner', null, $banner_data);
?>
<section class="section_padding">
    <div class="wrapper">
        <div class="flex items-center flex-wrap">
            <div class="w-5/12">
                <h2>Lorem ipsum dolor sit amet </h2>
                <p>Lorem ipsum dolor sit amet consectetur. Semper venenatis et nisl magna malesuada. Faucibus eu iaculis ultrices gravida platea turpis scelerisque. Ultricies ac sed felis platea leo viverra nisi neque viverra. Id vitae id vitae magna. Sit sed luctus dolor mi. Aenean cursus orci scelerisque lectus et risus ipsum. Orci euismod morbi commodo molestie purus magna quis velit ultricies. Aliquet non vulputate semper viverra porttitor in vivamus ullamcorper. Amet enim et placerat dolor.</p>
                <p>Ut amet nibh nibh donec quis tempus est tristique. Egestas sit nec massa euismod pulvinar ultrices ipsum sapien sit. Magna quam nisl cursus integer volutpat cras at ligula. Porttitor pretium mi massa nec euismod id eget. Tortor nisl magna orci mauris vitae amet gravida quam amet. Suspendisse vitae egestas ornare interdum. Tortor parturient tortor posuere ultricies. Facilisi erat porttitor elit arcu vel feugiat ac mauris.</p>
            </div>
        </div>
    </div>
</section>
<?php get_footer(); ?>