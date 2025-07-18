<?php
$banner_data = isset($args) ? $args : [];
?>
<section class="<?= esc_attr($banner_data['banner_class'] ?? '') ?>" style="background: url('<?= esc_attr($banner_data['banner_background_image'] ?? '') ?>')">
    <div class="wrapper">
        <div class="flex flex-wrap">
            <div class="max-w-[<?= esc_attr($banner_data['content_width'] ?? '1136px') ?>]">
                <h1 class="text-white mb-[15px]"><?= esc_html($banner_data['banner_header'] ?? '') ?></h1>
                <div class="content text-white">
                    <?= $banner_data['banner_content'] ?? '' ?>
                </div>
            </div>
        </div>
    </div>
</section>