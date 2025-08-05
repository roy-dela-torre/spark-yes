<?php
$img_src    = $args['img_src'] ?? '';
$img_alt    = $args['img_alt'] ?? '';
$img_class  = $args['img_class'] ?? '';
$title      = $args['title'] ?? '';
$desc       = $args['desc'] ?? '';
$link       = $args['link'] ?? '#';
$link_text  = $args['link_text'] ?? 'Learn More';
?>

<article class="item p-[30px] my-[10px] flex flex-col justify-end min-h-[380px] hover:@red_btn">
    <div class="content">
        <div class="svg">
            <?php
            get_template_part('template/image', null, [
                'src'   => $img_src,
                'alt'   => $img_alt,
                'class' => $img_class
            ]);
            ?>
        </div>
        <h3><?= $title ?></h3>
        <p><?= $desc ?></p>
    </div>
    <a href="<?= esc_url($link) ?>"
        aria-label="<?= esc_attr($link_text) ?>"
        class="red_btn mt-[30px] opacity-100 transition-all duration-500 ease-in-out item-hover:opacity-80 item-hover:underline">
        <?= esc_html($link_text) ?>
    </a>
</article>