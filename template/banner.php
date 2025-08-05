<?php
$banner_data = isset($args) ? $args : [];
?>
<section class="<?= esc_attr($banner_data['banner_class'] ?? '') ?>" style="background: url('<?= esc_attr($banner_data['banner_background_image'] ?? '') ?>')no-repeat center center/cover">
    <div class="wrapper">
        <div class="flex flex-wrap">
            <div class="max-w-[776px]">
                <?php if (!empty($banner_data['banner_header'])): ?>
                    <h1 class="text-white mb-[15px]"><?= esc_html($banner_data['banner_header']) ?></h1>
                <?php endif; ?>
                <?php
                if (!empty($banner_data['banner_content'])) {
                    // Add class to <p> tags in the banner_content
                    echo preg_replace(
                        '/<p(\s+[^>]*)?>/',
                        '<p$1 class="!text-white">',
                        $banner_data['banner_content']
                    );
                }
                ?>
            </div>
        </div>
    </div>
</section>