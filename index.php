<?php get_header();
$img_path = get_template_directory_uri() . '/assets/img/homepage/';
$home_url = get_home_url();
?>
<section class="section_padding banner flex-center relative pb-0">
    <div class="banner-layer layer-current"></div>
    <div class="banner-layer layer-next"></div>
    <div class="wrapper">
        <div class="flex flex-col">
            <div class="w-full">
                <div class="content max-w-[616px] z-10 relative">
                    <h1 class="text-4xl md:text-5xl font-bold mb-4">Say Yes to Learning and Growth That Works</h1>
                    <p class="text-white mb-[30px]">Be the spark that starts learning solutions and real impact. Our programs are designed to ignite growth, empower teams, and drive performance that lasts.</p>
                    <div class="flex-center flex-wrap gap-x-[30px] gap-y-[24px]">
                        <a href="<?= $home_url; ?>/contact-us/" target="_blank" rel="noopener noreferrer" class="red_btn font-semibold">Contact Us Now</a>
                        <a href="<?= $home_url; ?>/watch-our-video/" target="_blank" rel="noopener noreferrer" class="watch_our_video flex items-center gap-2 fontweight-semibold">
                            <span>Watch Our Video</span>
                            <span class='pulse-button'>
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="41" viewBox="0 0 40 41" fill="none">
                                    <circle cx="20" cy="20.5" r="15" fill="#FF4314" />
                                    <circle cx="20" cy="20.5" r="17.5" stroke="white" stroke-opacity="0.3" stroke-width="5" />
                                    <path d="M25 20.5L16.75 25.2631L16.75 15.7369L25 20.5Z" fill="white" />
                                </svg>
                            </span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom_content flex flex-col md:flex-row justify-between mt-8 absolute bottom-[30px] w-full gap-[24px] flex-wrap z-10">
            <div class="bottom_navigation mb-4 md:mb-0">
                <div class="dots flex gap-2">
                    <button type="button" class="active+" onclick="changeBannerBg(1)"></button>
                    <button type="button" class="" onclick="changeBannerBg(2)"></button>
                    <button type="button" class="" onclick="changeBannerBg(3)"></button>
                    <button type="button" class="" onclick="changeBannerBg(4)"></button>
                    <button type="button" class="" onclick="changeBannerBg(5)"></button>
                </div>
            </div>
            <div class="soc_med flex gap-x-[15px] align-center">
                <a href="http://facebook.com" target="_blank" rel="noopener noreferrer" class="flex-center-center" aria-label="Facebook">
                    <?php
                    echo file_get_contents($img_path . '/facebook.svg');
                    ?>
                </a>
                <a href="http://linkedin.com" target="_blank" rel="noopener noreferrer" class="flex-center-center" aria-label="LinkedIn">
                    <?php
                    echo file_get_contents($img_path . '/linkedin.svg');
                    ?>
                </a>
                <a href="http://instagram.com" target="_blank" rel="noopener noreferrer" class="flex-center-center" aria-label="Instagram">
                    <?php
                    echo file_get_contents($img_path . '/instagram.svg');
                    ?>
                </a>
            </div>
        </div>
    </div>
</section>

<section class="section_padding core_programs">
    <div class="wrapper">
        <div class="header flex align-center justify-between gap-x-[50px] gap-y-[30px] flex-wrap mb-60">
            <div class="left_content">
                <h2>Core Programs</h2>
                <p>Lorem ipsum dolor sit amet consectetur. Mauris habitant ac consequat risus urna ut quisque rhoncus. Tristique diam vitae mattis diam nunc vitae tincidunt donec diam.</p>
            </div>
            <div class="right_content">
                <div class="group_btn flex align-center gap-x-[20px]">
                    <button type="button" class="prev flex item-center justify-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="15" height="17" viewBox="0 0 15 17" fill="none">
                            <path d="M0.500001 8.5L14.75 0.27276L14.75 16.7272L0.500001 8.5Z" fill="white" />
                        </svg>
                    </button>
                    <button type="button" class="next flex item-center justify-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="15" height="17" viewBox="0 0 15 17" fill="none">
                            <path d="M14.5 8.5L0.249999 16.7272L0.25 0.272758L14.5 8.5Z" fill="white" />
                        </svg>
                    </button>
                </div>
            </div>
        </div>
        <div class="owl-carousel owl-theme" id="core_programs">
            <div class="item p-[30px] m-y-[10px] flex flex-col justify-end min-h-[380px]">
                <div class="content">
                    <div class="svg">
                        <img loading="lazy" src="<?= $img_path; ?>Team Building Activities.png" alt="Team Building Activities">
                    </div>
                    <h3>Team Building <br class="d-none d-sm-block"> Activities</h3>
                    <p>Lorem ipsum dolor sit amet consectetur. Mauris habitant ac</p>
                </div>
                <a href="<?= $home_url ?>/" target="_blank" rel="noopener noreferrer" class="red_btn">Learn More</a>
            </div>
            <div class="item p-[30px] m-y-[10px] flex flex-col justify-end min-h-[380px]">
                <div class="content">
                    <div class="svg">
                        <img loading="lazy" src="<?= $img_path; ?>Organizational Development.png" alt="Organizational Development">
                    </div>
                    <h3>Organizational Development</h3>
                    <p>Lorem ipsum dolor sit amet consectetur. Mauris habitant ac</p>
                </div>
                <a href="<?= $home_url ?>/" target="_blank" rel="noopener noreferrer" class="red_btn">Learn More</a>
            </div>
            <div class="item p-[30px] m-y-[10px] flex flex-col justify-end min-h-[380px]">
                <div class="content">
                    <div class="svg">
                        <img loading="lazy" src="<?= $img_path; ?>Micro-Credentials Certification.png" alt="Micro-Credentials Certification">
                    </div>
                    <h3>Micro-Credentials Certification</h3>
                    <p>Lorem ipsum dolor sit amet consectetur. Mauris habitant ac</p>
                </div>
                <a href="<?= $home_url ?>/" target="_blank" rel="noopener noreferrer" class="red_btn">Learn More</a>
            </div>
            <div class="item p-[30px] m-y-[10px] flex flex-col justify-end min-h-[380px]">
                <div class="content">
                    <div class="svg">
                        <img loading="lazy" src="<?= $img_path; ?>Culture and Leadership Formation.png" alt="Culture and Leadership Formation">
                    </div>
                    <h3>Culture and Leadership Formation</h3>
                    <p>Lorem ipsum dolor sit amet consectetur. Mauris habitant ac</p>
                </div>
                <a href="<?= $home_url ?>/" target="_blank" rel="noopener noreferrer" class="red_btn">Learn More</a>
            </div>
            <div class="item p-[30px] m-y-[10px] flex flex-col justify-end min-h-[380px]">
                <div class="content">
                    <div class="svg">
                        <img loading="lazy" src="<?= $img_path; ?>Team Building Activities.png" alt="Team Building Activities">
                    </div>
                    <h3>Team Building <br class="d-none d-sm-block"> Activities</h3>
                    <p>Lorem ipsum dolor sit amet consectetur. Mauris habitant ac</p>
                </div>
                <a href="<?= $home_url ?>/" target="_blank" rel="noopener noreferrer" class="red_btn">Learn More</a>
            </div>
            <div class="item p-[30px] m-y-[10px] flex flex-col justify-end min-h-[380px]">
                <div class="content">
                    <div class="svg">
                        <img loading="lazy" src="<?= $img_path; ?>Organizational Development.png" alt="Organizational Development">
                    </div>
                    <h3>Organizational Development</h3>
                    <p>Lorem ipsum dolor sit amet consectetur. Mauris habitant ac</p>
                </div>
                <a href="<?= $home_url ?>/" target="_blank" rel="noopener noreferrer" class="red_btn">Learn More</a>
            </div>
        </div>
    </div>
</section>

<section class="section_padding what_sets_us_appart">
    <div class="wrapper">
        <div class="container-fluid">
            <div class="flex flex-wrap">
                <div class="w-full">
                    <div class="flex-center-center flex-col max-w-[776px] mb-60 mx-auto">
                        <h2 class="mb-0 text-center">What Sets Us Apart?</h2>
                        <p class="text-center">Lorem ipsum dolor sit amet consectetur. Semper venenatis et nisl magna malesuada. Faucibus eu iaculis ultrices gravida platea turpis scelerisque.</p>
                    </div>
                </div>
                <div class="grid grid-cols-1 sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-[24px] w-full mb-60">
                    <div class="rounded-[2px] md:p-[30px] p-[20px] background-[#FFFCE] content background-[#FFFCE] flex flex-col">
                        <div class="icons flex-center-center rounded-[2px] mb-[20px]">
                            <img loading="lazy" src="<?= $img_path; ?>Team Building Activities.png" alt="Team Building Activities">
                        </div>
                        <h3>Team Building <br class="d-none d-sm-block"> Activities</h3>
                        <p>Lorem ipsum dolor sit amet consectetur. Mauris habitant ac</p>
                    </div>
                    <div class="rounded-[2px] md:p-[30px] p-[20px] background-[#FFFCE] content background-[#FFFCE] flex flex-col">
                        <div class="icons flex-center-center rounded-[2px] mb-[20px]">
                            <img loading="lazy" src="<?= $img_path; ?>Team Building Activities.png" alt="Team Building Activities">
                        </div>
                        <h3>Team Building <br class="d-none d-sm-block"> Activities</h3>
                        <p>Lorem ipsum dolor sit amet consectetur. Mauris habitant ac</p>
                    </div>
                    <div class="rounded-[2px] md:p-[30px] p-[20px] background-[#FFFCE] content background-[#FFFCE] flex flex-col">
                        <div class="icons flex-center-center rounded-[2px] mb-[20px]">
                            <img loading="lazy" src="<?= $img_path; ?>Team Building Activities.png" alt="Team Building Activities">
                        </div>
                        <h3>Team Building <br class="d-none d-sm-block"> Activities</h3>
                        <p>Lorem ipsum dolor sit amet consectetur. Mauris habitant ac</p>
                    </div>
                    <div class="rounded-[2px] md:p-[30px] p-[20px] background-[#FFFCE] content background-[#FFFCE] flex flex-col">
                        <div class="icons flex-center-center rounded-[2px] mb-[20px]">
                            <img loading="lazy" src="<?= $img_path; ?>Team Building Activities.png" alt="Team Building Activities">
                        </div>
                        <h3>Team Building <br class="d-none d-sm-block"> Activities</h3>
                        <p>Lorem ipsum dolor sit amet consectetur. Mauris habitant ac</p>
                    </div>
                </div>
                <div class="w-full">
                    <div class="image">
                        <img loading="lazy" src="<?= $img_path ?>What Sets Us Apart.jpg" alt="What Sets Us Apart">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section_padding meet_our_coaches !px-0">
    <div class="flex flex-wrap">
        <div class="w-full">
            <div class="header flex items-center flex-col mx-auto px-[20px] mb-60 max-w-[650px]">
                <h2 class="text-center">Meet Our Core Coaches</h2>
                <p class="text-center mb-[30px]">Lorem ipsum dolor sit amet consectetur. Faucibus porttitor nisl mattis mi. Aliquam morbi ultrices lectus leo pharetra orci.</p>
                <a href="<?= $home_url ?>/" target="_blank" rel="noopener noreferrer" class="red_btn">Learn More</a>
            </div>
        </div>
        <div class="w-full overflow-hidden">
            <div class="owl-carousel owl-theme" id="our_coaches">
                <div class="item">
                    <img loading="lazy" src="<?= $img_path ?>Bien Leofando.jpg" alt="Bien Leofando">
                    <div class="main_content">
                        <h3>Bien Leofando</h3>
                        <p>Certified Human Resources Professional</p>
                    </div>
                </div>
                <div class="item">
                    <img loading="lazy" src="<?= $img_path ?>Prince Datu.jpg" alt="Prince Datu">
                    <div class="main_content">
                        <h3>Prince Datu</h3>
                        <p>Certified Transformational Coach</p>
                    </div>
                </div>
                <div class="item">
                    <img loading="lazy" src="<?= $img_path ?>Vjohn Dizon.jpg" alt="Vjohn Dizon">
                    <div class="main_content">
                        <h3>Vjohn Dizon</h3>
                        <p>Certified Transformational Coach</p>
                    </div>
                </div>
                <div class="item">
                    <img loading="lazy" src="<?= $img_path ?>Bryan Zafra.jpg" alt="Bryan Zafra">
                    <div class="main_content">
                        <h3>Bryan Zafra</h3>
                        <p>Business Owner and Marketing Practitioner</p>
                    </div>
                </div>
                <div class="item">
                    <img loading="lazy" src="<?= $img_path ?>Caloy Capacillov.jpg" alt="Caloy Capacillov">
                    <div class="main_content">
                        <h3>Caloy Capacillov</h3>
                        <p>Serial Entrepreneur & Certified Securities Representative</p>
                    </div>
                </div>
                <div class="item">
                    <img loading="lazy" src="<?= $img_path ?>Lec Toribio.jpg" alt="Lec Toribio">
                    <div class="main_content">
                        <h3>Lec Toribio</h3>
                        <p>Certified Motivational Speaker & Author</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section_padding our_story">
    <div class="wrapper">
        <div class="flex flex-wrap lg:flex-nowrap gap-[50px]">
            <div class="2xl:w-6/12 lg:w-5/12">
                <div class="content">
                    <h2>Our Story</h2>
                    <p>Lorem ipsum dolor sit amet consectetur. Semper venenatis et nisl magna malesuada. Faucibus eu iaculis ultrices gravida platea turpis scelerisque. Ultricies ac sed felis platea leo viverra nisi neque viverra. Id vitae id vitae magna. Sit sed luctus dolor mi. Aenean cursus orci scelerisque lectus et risus ipsum. Orci euismod morbi commodo molestie purus magna quis velit ultricies. Aliquet non vulputate semper viverra porttitor in vivamus ullamcorper. Amet enim et placerat dolor.</p>
                    <p class="mb-[30px]">Lorem ipsum dolor sit amet consectetur. Semper venenatis et nisl magna malesuada. Faucibus eu iaculis ultrices gravida platea turpis scelerisque. Ultricies ac sed felis platea leo viverra nisi neque viverra. Id vitae id vitae magna. Sit sed luctus dolor mi. Aenean cursus orci scelerisque lectus et risus ipsum. Orci euismod morbi commodo molestie purus magna quis velit ultricies. Aliquet non vulputate semper viverra porttitor in vivamus ullamcorper. Amet enim et placerat dolor.</p>
                    <a href="<?= $home_url ?>/" target="_blank" rel="noopener noreferrer" class="red_btn">Read More</a>
                </div>
            </div>
            <div class="2xl:w-6/12 lg:w-7/12 w-full">
                <div class="grid grid-cols-1 md:grid-cols-3 md:grid-rows-1 gap-[20px] h-full">
                    <div class="image_large md:col-span-2">
                        <img loading="lazy" src="<?= $img_path ?>Our Story Large.jpg" alt="Our Story" class="w-full h-full object-cover">
                    </div>
                    <div class="image_small flex flex-col gap-[20px]">
                        <div class="inquire">
                            <?php
                            echo file_get_contents($img_path . '/inquire_here.svg');
                            ?>
                            <div class="inquire_text">
                                <span>Inquire Here</span>
                                <a href="tel:+0916 666 1696">0916 666 1696</a>
                            </div>
                        </div>
                        <div class="image h-full">
                            <img loading="lazy" src="<?= $img_path ?>Our Story Small.jpg" alt="Our Story" class="object-cover h-full w-full">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="w-full mt-[60px]">
            <div class="red_box flex flex-wrap items-center px-30 py-20 gap-[24px] rounded-[2px]">
                <div class="count">
                    <?php
                    echo file_get_contents($img_path . '/count.svg');
                    ?>
                    <div class="content">
                        <span id="count1"></span>
                        <p class="text-white">Lorem Ipsum</p>
                    </div>
                </div>
                <div class="count">
                    <?php
                    echo file_get_contents($img_path . '/count.svg');
                    ?>
                    <div class="content">
                        <span id="count2"></span>
                        <p class="text-white">Lorem Ipsum</p>
                    </div>
                </div>
                <div class="count">
                    <?php
                    echo file_get_contents($img_path . '/count.svg');
                    ?>
                    <div class="content">
                        <span id="count3"></span>
                        <p class="text-white">Lorem Ipsum</p>
                    </div>
                </div>
                <div class="count">
                    <?php
                    echo file_get_contents($img_path . '/count.svg');
                    ?>
                    <div class="content">
                        <span id="count4"></span>
                        <p class="text-white">Lorem Ipsum</p>
                    </div>
                </div>
                <div class="count">
                    <?php
                    echo file_get_contents($img_path . '/count.svg');
                    ?>
                    <div class="content">
                        <span id="count5"></span>
                        <p class="text-white">Lorem Ipsum</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section_padding we_work_width">
    <div class="wrapper">
        <div class="flex flex-col">
            <div class="w-full">
                <div class="header flex-center-center flex-col mx-auto mb-60 max-w-[650px]">
                    <h2 class="text-center">We’ve Worked With</h2>
                    <p class="text-center">Lorem ipsum dolor sit amet consectetur. Faucibus porttitor nisl mattis mi. Aliquam morbi ultrices lectus leo pharetra orci.</p>
                </div>
            </div>
            <div class="w-full mb-60">
                <div id="logos_first_row" class="owl-carousel owl-theme">
                    <?php
                    if (function_exists('get_template_directory') && function_exists('get_template_directory_uri')) {
                        $logos_dir = get_template_directory() . '/assets/img/homepage/logos_first_row/';
                        $logos_uri = get_template_directory_uri() . '/assets/img/homepage/logos_first_row/';
                        // Fallback for GLOB_BRACE if not defined
                        if (defined('GLOB_BRACE')) {
                            $logo_files = glob($logos_dir . '*.{jpg,jpeg,png,gif,svg,webp}', GLOB_BRACE);
                        } else {
                            $logo_files = array_merge(
                                glob($logos_dir . '*.jpg'),
                                glob($logos_dir . '*.jpeg'),
                                glob($logos_dir . '*.png'),
                                glob($logos_dir . '*.gif'),
                                glob($logos_dir . '*.svg'),
                                glob($logos_dir . '*.webp')
                            );
                        }

                        if ($logo_files) {
                            foreach ($logo_files as $logo_path) {
                                $logo_url = $logos_uri . basename($logo_path);
                                if (function_exists('esc_url')) {
                                    $alt_text = pathinfo($logo_path, PATHINFO_FILENAME);
                                    // Get image dimensions
                                    $img_size = @getimagesize($logo_path);
                                    $img_width = $img_size ? $img_size[0] : '';
                                    $img_height = $img_size ? $img_size[1] : '';
                                    $width_attr = $img_width ? 'width="' . intval($img_width) . '"' : '';
                                    $height_attr = $img_height ? 'height="' . intval($img_height) . '"' : '';
                                    echo '<div class="logo_item" style="width:' . intval($img_width + 60) . 'px;"><img loading="lazy" src="' . esc_url($logo_url) . '" alt="' . esc_attr($alt_text) . '" ' . $width_attr . ' ' . $height_attr . '></div>';
                                } else {
                                    echo '<div class="logo_item"><img loading="lazy" src="' . htmlspecialchars($logo_url, ENT_QUOTES, 'UTF-8') . '" alt="' . htmlspecialchars($alt_text, ENT_QUOTES, 'UTF-8') . '"></div>';
                                }
                            }
                        }
                    }
                    ?>
                </div>
            </div>
            <div class="w-full">
                <div id="logos_second_row" class="owl-carousel owl-theme">
                    <?php
                    if (function_exists('get_template_directory') && function_exists('get_template_directory_uri')) {
                        $logos_dir = get_template_directory() . '/assets/img/homepage/logos_second_row/';
                        $logos_uri = get_template_directory_uri() . '/assets/img/homepage/logos_second_row/';
                        // Fallback for GLOB_BRACE if not defined
                        if (defined('GLOB_BRACE')) {
                            $logo_files = glob($logos_dir . '*.{jpg,jpeg,png,gif,svg,webp}', GLOB_BRACE);
                        } else {
                            $logo_files = array_merge(
                                glob($logos_dir . '*.jpg'),
                                glob($logos_dir . '*.jpeg'),
                                glob($logos_dir . '*.png'),
                                glob($logos_dir . '*.gif'),
                                glob($logos_dir . '*.svg'),
                                glob($logos_dir . '*.webp')
                            );
                        }

                        if ($logo_files) {
                            foreach ($logo_files as $logo_path) {
                                $logo_url = $logos_uri . basename($logo_path);
                                if (function_exists('esc_url')) {
                                    $alt_text = pathinfo($logo_path, PATHINFO_FILENAME);
                                    // Get image dimensions
                                    $img_size = @getimagesize($logo_path);
                                    $img_width = $img_size ? $img_size[0] : '';
                                    $img_height = $img_size ? $img_size[1] : '';
                                    $width_attr = $img_width ? 'width="' . intval($img_width) . '"' : '';
                                    $height_attr = $img_height ? 'height="' . intval($img_height) . '"' : '';
                                    echo '<div class="logo_item" style="width:' . intval($img_width + 60) . 'px;"><img loading="lazy" src="' . esc_url($logo_url) . '" alt="' . esc_attr($alt_text) . '" ' . $width_attr . ' ' . $height_attr . '></div>';
                                } else {
                                    echo '<div class="logo_item"><img loading="lazy" src="' . htmlspecialchars($logo_url, ENT_QUOTES, 'UTF-8') . '" alt="' . htmlspecialchars($alt_text, ENT_QUOTES, 'UTF-8') . '"></div>';
                                }
                            }
                        }
                    }
                    ?>
                </div>
            </div>
        </div>
</section>

<section class="section_padding testimonial">
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="w-full">
                    <div class="header mx-auto d-flex align-items-center flex-column">
                        <h2 class="text-center">Testimonial</h2>
                        <p class="text-center">Lorem ipsum dolor sit amet consectetur. Faucibus porttitor nisl mattis mi. Aliquam morbi ultrices lectus leo pharetra orci.</p>
                    </div>
                </div>
                <div class="w-full">
                    <div class="header mx-auto mb-20">
                        <p class="text-center">Trusted by:</p>
                    </div>
                    <div class="owl-carousel owl-theme" id="testimonial">
                        <?php for ($i = 0; $i < 5; $i++): ?>
                            <div class="item">
                                <div class="main_content">
                                    <p>Lorem ipsum dolor sit amet consectetur. Semper venenatis et nisl magna malesuada. Faucibus eu iaculis ultrices gravida platea turpis scelerisque. Ultricies ac sed felis platea leo viverra nisi neque viverra. Id vitae id vitae magna. Sit sed luctus dolor mi. Aenean cursus orci scelerisque lectus et risus ipsum. Orci euismod morbi commodo molestie purus magna quis velit ultricies. Aliquet non vulputate semper viverra porttitor in vivamus ullamcorper. Amet enim et placerat dolor.</p>
                                    <p>Ut amet nibh nibh donec quis tempus est tristique. Egestas sit nec massa euismod pulvinar ultrices ipsum sapien sit. Magna quam nisl cursus integer volutpat cras at ligula. Porttitor pretium mi massa nec euismod id eget. </p>
                                </div>
                                <div class="people">
                                    <div class="image">
                                        <img loading="lazy" src="<?= $img_path ?>carousel_buttons/owl_button_<?= $i + 1 ?>.png" alt="">
                                    </div>
                                    <div class="info">
                                        <p class="name">Lorem Ipsum</p>
                                        <p class="position">CEO</p>
                                    </div>
                                </div>
                            </div>
                        <?php endfor; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="section_padding contact_us">
    <div class="wrapper">
        <div class="flex items-center flex-wrap lg:flex-nowrap gap-[50px] contact_us_bg px-[30px] py-[40px] md:px-[50px] md:py-[60px] lg:px-[80px] lg:py-[80px] xl:px-[114px] xl:py-[150px]">
            <div class="lg:w-7/12 lg:pe-5">
                <div class="form w-full p-[30px] md:p-[40px] max-w-full lg:max-w-[776px] border-t-[5px] border-[#ff4314] border-solid background-[#FFFAF5]">
                    <?= do_shortcode('[contact-form-7 id="20a6980" title="Contact Us (Home page)"]') ?>
                </div>
            </div>
            <div class="lg:w-5/12">
                <div class="content">
                    <h2>Contact Us</h2>
                    <p class="mb-60">Lorem ipsum dolor sit amet consectetur. Mauris habitant ac consequat risus urna ut quisque rhoncus. Tristique diam vitae mattis diam nunc vitae tincidunt donec diam.</p>
                    <div class="contacts flex-col flex gap-y-[30px]">
                        <div class="flex-col flex gap-y-[10px]">
                            <?php echo file_get_contents($img_path . 'email.svg') ?>
                            <a href="mailto:operations@sparkeyesph.com">operations@sparkeyesph.com</a>
                        </div>
                        <div class="flex-col flex gap-y-[10px]">
                            <?php echo file_get_contents($img_path . 'telephone.svg') ?>
                            <a href="tel:+0905 374 2094">0905 374 2094</a>
                        </div>
                        <div class="flex-col flex gap-y-[10px]">
                            <?php echo file_get_contents($img_path . 'location.svg') ?>
                            <p>5F, Phinma Plaza, 39 Plaza Drive, Rockwell Center, Makati City</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php get_footer(); ?>
<script src="<?php echo get_template_directory_uri(); ?>/inc/js/owl.carousel.min.js"></script>
<script src="<?php echo get_template_directory_uri(); ?>/inc/js/homepage.js"></script>
<script>
    let currentBannerIndex = 1;
    const totalBanners = 5;
    const imgPath = "<?= esc_url($img_path); ?>";

    const currentLayer = document.querySelector(".layer-current");
    const nextLayer = document.querySelector(".layer-next");

    function changeBannerBg(index) {
        const bgUrl = `${imgPath}banner${index}.jpg`;

        // Preload image
        const img = new Image();
        img.src = bgUrl;
        img.onload = () => {
            nextLayer.style.backgroundImage = `url('${bgUrl}')`;
            nextLayer.classList.add("fade-in");

            setTimeout(() => {
                // Copy new image to current layer
                currentLayer.style.backgroundImage = `url('${bgUrl}')`;
                nextLayer.classList.remove("fade-in");
            }, 1000); // Match CSS transition
        };

        // Update active dot
        const dots = document.querySelectorAll(".dots button");
        dots.forEach((dot, i) => {
            dot.classList.toggle("active", i === index - 1);
        });

        currentBannerIndex = index;
    }

    // Optional: Auto-rotate
    setInterval(() => {
        let next = currentBannerIndex + 1;
        if (next > totalBanners) next = 1;
        changeBannerBg(next);
    }, 5000);



    jQuery(document).ready(function($) {
        // Set custom images for owl dots in #testimonial carousel
        var buttonImages = [
            '<?= get_template_directory_uri(); ?>/assets/img/homepage/carousel_buttons/owl_button_1.png',
            '<?= get_template_directory_uri(); ?>/assets/img/homepage/carousel_buttons/owl_button_2.png',
            '<?= get_template_directory_uri(); ?>/assets/img/homepage/carousel_buttons/owl_button_3.png',
            '<?= get_template_directory_uri(); ?>/assets/img/homepage/carousel_buttons/owl_button_4.png',
            '<?= get_template_directory_uri(); ?>/assets/img/homepage/carousel_buttons/owl_button_5.png'
        ];

        function applyOwlDotImages() {
            $('#testimonial .owl-dots .owl-dot').each(function(i) {
                if (buttonImages[i]) {
                    $(this).html('<img loading="lazy" src="' + buttonImages[i] + '" alt="Slide ' + (i + 1) + '" style="width:46px;height:46px;">');
                }
            });
        }

        // Apply images after carousel is initialized and on changed
        $('#testimonial').on('initialized.owl.carousel changed.owl.carousel', function() {
            setTimeout(applyOwlDotImages, 50);
        });

        // In case dots are rendered after document ready
        setTimeout(applyOwlDotImages, 500);
    });
</script>