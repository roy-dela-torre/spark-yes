<?php
$title = isset($args['title']) ? $args['title'] : '';
$link = isset($args['link']) ? $args['link'] : '';
$excerpt = isset($args['excerpt']) ? $args['excerpt'] : '';
$img = isset($args['img']) ? $args['img'] : '';
$date = isset($args['date']) ? $args['date'] : get_the_date();
?>
<div class="blog_content" onclick="window.location.href='<?= $link ?>'">
    <div class="image relative">
        <?php
        get_template_part('template/image', null, [
            'src' => $img,
            'alt' => $title,
            'class' => 'min-h-[350px] w-full object-cover',
        ]);
        ?>
        <?php if (isset($args['author'])) : ?>
            <div class="flex items-center absolute bottom-[30px] right-[30px] bg-white px-[10px] py-[5px] rounded-[2px] gap-x-[10px]">
                <?php if (isset($args['author_img'])) : ?>
                    <?php
                    get_template_part('template/image', null, [
                        'src' => $args['author_img'],
                        'alt' => $args['author'],
                        'class' => 'inline-block w-6 h-6 rounded-full mr-2 align-middle',
                        'width' => 30,
                        'height' => 30,
                    ]);
                    ?>
                <?php endif; ?>
                <p class="text-[14px]"><?= esc_html($args['author']) ?></p>
            </div>
        <?php endif; ?>
    </div>
    <div class="main_content bg-[#FFFCEE] p-[30px]">
        <p class="mb-[10px] text-[14px]"><?= $date; ?></p>
        <h3 class=""><?= $title ?></h3>
        <?= $excerpt ?>
        <a href="<?= $link ?>" target="_blank" rel="noopener noreferrer" class="red_btn mt-[30px]">Read More</a>
    </div>
</div>