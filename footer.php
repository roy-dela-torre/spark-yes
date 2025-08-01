<?php $img_path = get_stylesheet_directory() . '/assets/img/homepage'; ?>
<footer>
    <div class="wrapper">
        <div class="flex flex-wrap xl:flex-nowrap justify-between gap-[50px]">
            <div class="xxl:w-5/12 xl:w-4/12">
                <div class="footer_content xl:max-w-[640px] flex flex-col max-[575px]:items-center items-start">
                    <?php
                    get_template_part('template/image', null, [
                        'src' => get_stylesheet_directory_uri() . '/assets/img/global/footer_logo.png',
                        'alt' => 'Spark Footer Logo',
                        'class' => 'mb-[30px]'
                    ]);
                    ?>
                    <p class="!text-white mb-[60px] max-[575px]:text-center text-start">SPARK | Yes to Learning & Development is built by practitioners who believe that real change begins with relevant, intentional learning. We don’t do one-size-fits-all—we design programs that move people and organizations forward with purpose.</p>

                    <div class="soc_med flex flex-col max-[575px]:items-center">
                        <span class="font-bold text-white mb-[30px]">Follow Us</span>
                        <div class="gap-x-[15px] flex items-center">
                            <a href="http://fb.com/sparkyesph" target="_blank" rel="noopener noreferrer" class="flex items-center justify-center">
                                <?php
                                echo file_get_contents($img_path . '/facebook.svg');
                                ?>
                            </a>
                            <a href="http://linkedin.com/company/spark-yes" target="_blank" rel="noopener noreferrer" class="flex items-center justify-center">
                                <?php
                                echo file_get_contents($img_path . '/linkedin.svg');
                                ?>
                            </a>
                            <a href="https://www.instagram.com/sparkyesph/" target="_blank" rel="noopener noreferrer" class="flex items-center justify-center">
                                <?php
                                echo file_get_contents($img_path . '/instagram.svg');
                                ?>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flex xl:w-7/12 w-full justify-between gap-[30px] flex-wrap lg:flex-nowrap md:items-start items-end">
                <div class="w-full md:w-[100px] quick_links flex flex-col max-[575px]:items-center max-[575px]:text-center">
                    <span class="header block mb-4 font-[700] text-[16px] text-white">Quick Links</span>
                    <?php
                    wp_nav_menu([
                        'theme_location' => 'quick-links',
                        'menu_class'     => 'footer-menu',
                        'container'      => false,
                    ]);
                    ?>
                </div>
                <div class="max-w-[273px] min-w-[200px] flex flex-col max-[575px]:items-center w-full max-[575px]:mx-auto max-[575px]:text-center">
                    <div class="core_programs">
                        <span class="header block mb-4 font-[700] text-[16px] text-white">Core Programs</span>
                        <?php
                        wp_nav_menu([
                            'theme_location' => 'core-programs',
                            'menu_class'     => 'footer-menu',
                            'container'      => false,
                        ]);
                        ?>
                    </div>
                </div>
                <div class="max-w-[236px] xl:min-w-[200px] lg:min-w-fit flex flex-col max-[575px]:items-center max-[575px]:mx-auto max-[575px]:text-center">
                    <div class="contact_us">
                        <span class="header block mb-4 font-[700] text-[16px] text-white">Contact Us</span>
                        <ul class="text-white space-y-2">
                            <li>Prince M. Datu</li>
                            <li>
                                <a href="mailto:operations@sparkeyesph.com" class="hover:underline">operations@sparkeyesph.com</a>
                            </li>
                            <li>
                                <a href="tel:+0905 374 2094" class="hover:underline">0905 374 2094</a>
                            </li>
                            <li>
                                <a href="https://maps.app.goo.gl/7wFxwbtoHkHyiDsD8" target="_blank" rel="noopener noreferrer">5F, Phinma Plaza, 39 Plaza Drive, Rockwell Center, Makati City</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="w-full mt-[60px]">
            <div class="copy_write flex flex-col md:flex-row items-center justify-between">
                <p class="!text-white text-center md:text-left mb-4 md:mb-0">Copyright © <?= date("Y") ?> <a target="_blank" href="https://seo-hacker.com/sitemap.xml/" title="SEO Hacker Blog" class="underline">SEO Hacker</a>. Optimized and maintained by <a target="_blank" href="https://sean.si/" class="underline">Sean Si</a> of <a target="_blank" href="https://seo-hacker.net/" class="underline">SEO Hacker</a></p>
                <div class="left_content flex items-center space-x-2">
                    <a href="<?= get_home_url(); ?>/terms-and-conditions/" target="_blank" rel="noopener noreferrer" class="hover:underline">Terms and Conditions</a>
                    <span class="text-white">|</span>
                    <a href="<?= get_home_url(); ?>/privacy-policy/" target="_blank" rel="noopener noreferrer" class="hover:underline">Privacy Policy</a>
                </div>
            </div>
        </div>
    </div>
</footer>

</body>
<?php wp_footer(); ?>
<script src="<?= get_stylesheet_directory_uri(); ?>/inc/js/jquery.min.js"></script>
<script src="<?= get_stylesheet_directory_uri(); ?>/inc/js/functions.js"></script>
<!-- <script>
    document.addEventListener("DOMContentLoaded", function() {
        let images = document.querySelectorAll('img');
        let largeImages = 0;
        let checked = 0;

        if (images.length === 0) return;

        images.forEach(function(img) {
            // If image is already loaded
            if (img.complete && img.naturalWidth) {
                checkImage(img);
            } else {
                img.addEventListener('load', function() {
                    checkImage(img);
                });
                img.addEventListener('error', function() {
                    checked++;
                    if (checked === images.length && largeImages > 0) {
                        showOptimizerForm();
                    }
                });
            }
        });

        function checkImage(img) {
            // 1MB = 1048576 bytes
            fetch(img.src, {
                    method: 'HEAD'
                })
                .then(response => {
                    let size = response.headers.get('content-length');
                    checked++;
                    if (size && parseInt(size) > 1048576) {
                        largeImages++;
                    }
                    if (checked === images.length && largeImages > 0) {
                        showOptimizerForm();
                    }
                })
                .catch(() => {
                    checked++;
                    if (checked === images.length && largeImages > 0) {
                        showOptimizerForm();
                    }
                });
        }

        function showOptimizerForm() {
            let div = document.createElement('div');
            div.innerHTML = `<?= do_shortcode('[image_optimizer_form]'); ?>`;
            document.body.appendChild(div);
        }
    });
.</script> -->

</html>