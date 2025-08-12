<?php get_header();
$img_path = get_template_directory_uri() . '/assets/img/homepage/';
$home_url = get_home_url();
?>
<section class="section_padding banner flex-center relative pb-0 background-cover">
    <div class="banner-layer layer-current"></div>
    <div class="banner-layer layer-next"></div>
    <div class="wrapper">
        <div class="flex flex-col">
            <div class="w-full">
                <div class="content max-w-[616px] z-10 relative">
                    <h1>Say Yes to Learning and Growth That Works</h1>
                    <p class="!text-white mb-[30px]">Be the spark that starts learning solutions and real impact. Our programs are designed to ignite growth, empower teams, and drive performance that lasts.</p>
                    <div class="flex-center flex-wrap gap-x-[30px] gap-y-[24px]">
                        <a href="<?= $home_url; ?>/contact-us/" target="_blank" rel="noopener noreferrer" class="red_btn font-semibold">Contact Us Now</a>
                        <button class="flex items-center gap-2 fontweight-semibold" id="watch_our_video" command="show-modal" commandfor="dialog">
                            <span>Watch Our Video</span>
                            <span class='pulse-button'>
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="41" viewBox="0 0 40 41" fill="none">
                                    <circle cx="20" cy="20.5" r="15" fill="#FF4314" />
                                    <circle cx="20" cy="20.5" r="17.5" stroke="white" stroke-opacity="0.3" stroke-width="5" />
                                    <path d="M25 20.5L16.75 25.2631L16.75 15.7369L25 20.5Z" fill="white" />
                                </svg>
                            </span>
                        </button>
                        <?php
                        get_template_part('template/modal', null, [
                            'video' => '
                                <video controls width="100%" poster="' . esc_url($img_path . 'Spark Profile Reel 2025 (Landscape).jpg') . '" class="hidden md:block">
                                    <source src="' . esc_url(get_template_directory_uri() . '/assets/videos/homepage/Spark Profile Reel 2025 (Landscape).mp4') . '" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                                <video controls width="100%" class="block md:hidden sm:min-height-[400px]">
                                    <source src="' . esc_url(get_template_directory_uri() . '/assets/videos/homepage/Spark Profile Reel 2025.mp4') . '" type="video/mp4">
                                    Your browser does not support the video tag.
                                </video>
                            '
                        ]);
                        ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom_content flex flex-col md:flex-row justify-between mt-8 absolute bottom-[30px] w-full gap-[24px] flex-wrap z-10">
            <div class="bottom_navigation mb-4 md:mb-0">
                <div class="dots flex gap-2">
                    <button type="button" class="active owl_button" onclick="changeBannerBg(1)"></button>
                    <button type="button" class="owl_button" onclick="changeBannerBg(2)"></button>
                    <button type="button" class="owl_button" onclick="changeBannerBg(3)"></button>
                    <button type="button" class="owl_button" onclick="changeBannerBg(4)"></button>
                    <button type="button" class="owl_button" onclick="changeBannerBg(5)"></button>
                </div>
            </div>
            <div class="soc_med flex gap-x-[15px] align-center">
                <a href="http://fb.com/sparkyesph" target="_blank" rel="noopener noreferrer" class="flex-center-center" aria-label="Facebook">
                    <?php
                    echo file_get_contents($img_path . '/facebook.svg');
                    ?>
                </a>
                <a href="http://linkedin.com/company/spark-yes" target="_blank" rel="noopener noreferrer" class="flex-center-center" aria-label="LinkedIn">
                    <?php
                    echo file_get_contents($img_path . '/linkedin.svg');
                    ?>
                </a>
                <a href="https://www.instagram.com/sparkyesph/" target="_blank" rel="noopener noreferrer" class="flex-center-center" aria-label="Instagram">
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
        <div class="header flex align-center justify-between gap-x-[50px] gap-y-[30px] flex-wrap mb-60 !flex-direction-row">
            <div class="left_content">
                <h2>Core Programs</h2>
                <p>Our core programs are designed to address real-world challenges in leadership, collaboration, and professional growth. Each offering is built on experiential learning principles, ensuring relevance, engagement, and long-term impact for individuals and organizations.</p>
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
            <?php
            $cards = [
                [
                    'img_src' => $img_path . 'Team Building Activities.png',
                    'img_alt' => 'Team Building Activities',
                    'img_class' => '',
                    'title' => 'Team Building <br class="d-none d-sm-block"> Activities',
                    'desc' => 'Designing interactive, results-oriented experiences that strengthen communication, trust, and alignment within teams.',
                    'link' => $home_url . '/',
                    'link_text' => 'Learn More'
                ],
                [
                    'img_src' => $img_path . 'Organizational Development.png',
                    'img_alt' => 'Organizational Development',
                    'img_class' => '',
                    'title' => 'Organizational Development',
                    'desc' => 'Helping organizations improve structures, systems, and culture through data-informed strategies and facilitated change.',
                    'link' => $home_url . '/',
                    'link_text' => 'Learn More'
                ],
                [
                    'img_src' => $img_path . 'Micro-Credentials Certification.png',
                    'img_alt' => 'Micro-Credentials Certification',
                    'img_class' => '',
                    'title' => 'Micro-Credentials Certification',
                    'desc' => 'Offering industry-relevant certifications for individuals and teams seeking formal recognition of specialized skills.',
                    'link' => $home_url . '/',
                    'link_text' => 'Learn More'
                ],
                [
                    'img_src' => $img_path . 'Culture and Leadership Formation.png',
                    'img_alt' => 'Culture and Leadership Formation',
                    'img_class' => '',
                    'title' => 'Culture and Leadership Formation',
                    'desc' => 'Developing values-based leadership and intentional workplace culture through immersive, reflective training experiences.',
                    'link' => $home_url . '/',
                    'link_text' => 'Learn More'
                ],
                [
                    'img_src' => $img_path . 'Continuing Professional Development.png',
                    'img_alt' => 'Continuing Professional Development',
                    'img_class' => '',
                    'title' => 'Continuing Professional <br class="d-none d-sm-block"> Development',
                    'desc' => 'Providing accredited learning pathways that support lifelong growth and professional relevance.',
                    'link' => $home_url . '/',
                    'link_text' => 'Learn More'
                ],
                [
                    'img_src' => $img_path . 'Youth Development.png',
                    'img_alt' => 'Youth Development',
                    'img_class' => '',
                    'title' => 'Youth Development',
                    'desc' => 'Empowerment-focused programs that equip young people with skills for leadership, resilience, and future readiness.',
                    'link' => $home_url . '/',
                    'link_text' => 'Learn More'
                ],

                [
                    'img_src' => $img_path . 'Personal Development Training.png',
                    'img_alt' => 'Personal Development Training',
                    'img_class' => '',
                    'title' => 'Personal Development <br class="d-none d-sm-block"> Training',
                    'desc' => 'Training sessions designed to build confidence, self-awareness, and essential life skills for personal and professional success.',
                    'link' => $home_url . '/',
                    'link_text' => 'Learn More'
                ],
            ];

            foreach ($cards as $card) : ?>
                <?php get_template_part('template/cards', null, $card); ?>
            <?php endforeach; ?>

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
                        <p class="text-center">SPARK combines a deep heritage in youth empowerment with cutting-edge organizational development expertise, delivered by coaches with over 77 years of combined industry experience. Its subscription-based, data-driven approach ensures customized programs and ongoing support for measurable, sustainable impact across multi-generational teams.</p>
                    </div>
                </div>
                <div class="grid_box_4 gap-[24px] w-full mb-60">
                    <?php
                    $apart_cards = [
                        [
                            'title' => 'Discover',
                            'desc' => 'Gain a clear understanding of your organization’s current dynamics, strengths, and areas for growth through data-informed assessments and collaborative conversations.',
                            'img'  => 'Discover.png',
                            'alt'  => 'Discover',
                        ],
                        [
                            'title' => 'Deepen',
                            'desc' => 'Cultivate a resilient and adaptive workplace culture by aligning values, behaviors, and systems to support long-term organizational health.',
                            'img'  => 'Deepen.png',
                            'alt'  => 'Deepen',
                        ],
                        [
                            'title' => 'Define',
                            'desc' => 'Engage in results-oriented coaching to clarify leadership direction, shape mindset shifts, and drive sustainable transformation at all levels.',
                            'img'  => 'Define.png',
                            'alt'  => 'Define',
                        ],
                        [
                            'title' => 'Develop',
                            'desc' => 'Strengthen team capabilities through structured training, micro-credentials, and upskilling programs tailored to your organization’s evolving needs.',
                            'img'  => 'Develop.png',
                            'alt'  => 'Develop',
                        ],
                    ];
                    foreach ($apart_cards as $card): ?>
                        <div class="grid_box_cards bg-[#FFFCEE]">
                            <div class="icons flex-center-center rounded-[2px] mb-[20px]">
                                <?php
                                get_template_part('template/image', null, [
                                    'src' => $img_path . $card['img'],
                                    'alt' => $card['alt'],
                                    'class' => ''
                                ]);
                                ?>
                            </div>
                            <h3><?= $card['title']; ?></h3>
                            <p><?= $card['desc']; ?></p>
                        </div>
                    <?php endforeach; ?>
                </div>
                <div class="w-full">
                    <div class="image">
                        <?php
                        get_template_part('template/image', null, [
                            'src' => $img_path . 'What Sets Us Apart.jpg',
                            'alt' => 'What Sets Us Apart',
                            'class' => '',
                        ]);
                        ?>
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
                <p class="text-center mb-[30px]">SPARK’s coaches and trainers bring over 77 years of combined experience across corporate, academic, and enterprise settings, ensuring every session is grounded in real-world practice. They lead with empathy, expertise, and purpose—delivering learning experiences that are relevant, engaging, and built for lasting impact.</p>
                <a href="<?= $home_url ?>/our-coaches" target="_blank" rel="noopener noreferrer" class="red_btn">Learn More</a>
            </div>
        </div>
        <div class="w-full overflow-hidden">
            <?php
            $coaches = [
                [
                    'name' => 'Bien Leofando',
                    'title' => 'Certified Human Resources Professional',
                    'img' => 'Bien Leofando.jpg',
                ],
                [
                    'name' => 'Prince Datu',
                    'title' => 'Enterprise and Sales Coach',
                    'img' => 'Prince Datu.jpg',
                ],
                [
                    'name' => 'Vjohn Dizon',
                    'title' => 'Certified Transformational Coach',
                    'img' => 'Vjohn Dizon.jpg',
                ],
                [
                    'name' => 'Bryan Zafra',
                    'title' => 'Business Owner and Marketing Practitioner',
                    'img' => 'Bryan Zafra.jpg',
                ],
                [
                    'name' => 'Caloy Capacillo',
                    'title' => 'Serial Entrepreneur & Certified Securities Representative',
                    'img' => 'Caloy Capacillo.jpg',
                ],
                [
                    'name' => 'Lec Toribio',
                    'title' => 'Certified Motivational Speaker & Author',
                    'img' => 'Lec Toribio.jpg',
                ],
            ];
            ?>
            <div class="owl-carousel owl-theme" id="our_coaches">
                <?php foreach ($coaches as $coach): ?>
                    <div class="item">
                        <?php
                        get_template_part('template/image', null, [
                            'src' => $img_path . $coach['img'],
                            'alt' => $coach['name'],
                            'class' => ''
                        ]);
                        ?>
                        <div class="main_content">
                            <h3><?= htmlspecialchars($coach['name']); ?></h3>
                            <p><?= htmlspecialchars($coach['title']); ?></p>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</section>

<section class="section_padding our_story">
    <div class="wrapper">
        <div class="flex flex-wrap lg:flex-nowrap gap-[50px] mb-60">
            <div class="2xl:w-6/12 lg:w-5/12">
                <div class="content max-w-full lg:max-w-[650px]">
                    <h2>Our Story</h2>
                    <p>Founded in 2021 as Spark YES, a youth empowerment initiative led by ICF-certified coach Vjohn Dizon, the organization quickly earned recognition—including Google Education Partner status—for its impact on young leaders. In 2024, Spark YES evolved into SPARK | Learning & Development, expanding its focus to organizational transformation under the leadership of six JCI Manila practitioners with over 77 years of combined experience in corporate, startup, academe, and enterprise sectors.</p>
                    <p class="mb-[30px]">Today, SPARK partners with organizations such as Globe, Philippine Airlines, UnionBank, and Microsoft to deliver tailored programs that enhance operational efficiency, enrich organizational culture, and enliven customer experience—empowering multi-generational teams for sustainable growth.</p>
                    <a href="<?= $home_url ?>/" target="_blank" rel="noopener noreferrer" class="red_btn">Read More</a>
                </div>
            </div>
            <div class="2xl:w-6/12 lg:w-7/12 w-full">
                <div class="grid grid-cols-1 md:grid-cols-3 md:grid-rows-1 gap-[20px] h-full">
                    <div class="image_large md:col-span-2">
                        <?php
                        get_template_part('template/image', null, [
                            'src' => $img_path . 'Our Story Large.jpg',
                            'alt' => 'Our Story',
                            'class' => 'w-full h-full object-cover'
                        ]);
                        ?>
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
                            <?php
                            get_template_part('template/image', null, [
                                'src' => $img_path . 'Our Story Small.jpg',
                                'alt' => 'Our Story',
                                'class' => 'object-cover h-full w-full'
                            ]);
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="w-full">
            <div class="red_box flex flex-wrap items-center px-30 py-20 gap-[24px] rounded-[2px]">
                <?php
                $counts = [
                    [
                        'value' => '77 Years',
                        'desc'  => 'of Collective Embined Experience'
                    ],
                    [
                        'value' => '8,000+',
                        'desc'  => 'Learning Hours'
                    ],
                    [
                        'value' => '6,500+',
                        'desc'  => 'Lives Touched'
                    ]
                ];
                foreach ($counts as $i => $count): ?>
                    <div class="count">
                        <?php echo file_get_contents($img_path . '/count.svg'); ?>
                        <div class="content gap-y-[12px] flex-col flex pe-[10px]">
                            <span id="count<?= $i + 1 ?>"><?= $count['value'] ?></span>
                            <p class="!text-white"><?= $count['desc'] ?></p>
                        </div>
                    </div>
                <?php endforeach; ?>
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
                    <p class="text-center">SPARK partners with organizations across industries—from corporations and startups to schools and non-profits—to deliver meaningful, results-driven learning experiences. Our growing network of clients reflects our commitment to tailored solutions, long-term collaboration, and sustainable impact.</p>
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
                                    echo '<div class="logo_item" style="width:' . intval($img_width + 60) . 'px;">';
                                    get_template_part('template/image', null, [
                                        'src' => $logo_url,
                                        'alt' => $alt_text,
                                        'class' => '',
                                    ]);
                                    echo '</div>';
                                } else {
                                    echo '<div class="logo_item">';
                                    get_template_part('template/image', null, [
                                        'src' => $logo_url,
                                        'alt' => $alt_text,
                                        'class' => '',
                                    ]);
                                    echo '</div>';
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
                                    echo '<div class="logo_item" style="width:' . intval($img_width + 60) . 'px;">';
                                    get_template_part('template/image', null, [
                                        'src' => $logo_url,
                                        'alt' => $alt_text,
                                        'class' => '',
                                    ]);
                                    echo '</div>';
                                } else {
                                    echo '<div class="logo_item">';
                                    get_template_part('template/image', null, [
                                        'src' => $logo_url,
                                        'alt' => $alt_text,
                                        'class' => '',
                                    ]);
                                    echo '</div>';
                                }
                            }
                        }
                    }
                    ?>
                </div>
            </div>
        </div>
</section>

<section class="section_padding testimonial bg-[#FFFAF5]">
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="w-full">
                    <div class="header max-w-[650px] flex-col">
                        <h2 class="text-center">Testimonial</h2>
                        <p class="text-center">Hear directly from the organizations and individuals we've worked with—leaders, teams, and learners who’ve experienced the impact of SPARK’s programs. Their stories highlight how tailored, purpose-driven learning can create lasting change.</p>
                    </div>
                </div>
                <div class="w-full">
                    <div class="mb-[20px]">
                        <p class="text-center">Trusted by:</p>
                    </div>
                    <div class="owl-carousel owl-theme !flex flex-col-reverse gap-y-[50px] md:gap-y-[70px] lg:gap-y-[100px]" id="testimonial">
                        <?php for ($i = 0; $i < 5; $i++): ?>
                            <div class="item">
                                <div class="main_content">
                                    <p>Lorem ipsum dolor sit amet consectetur. Semper venenatis et nisl magna malesuada. Faucibus eu iaculis ultrices gravida platea turpis scelerisque. Ultricies ac sed felis platea leo viverra nisi neque viverra. Id vitae id vitae magna. Sit sed luctus dolor mi. Aenean cursus orci scelerisque lectus et risus ipsum. Orci euismod morbi commodo molestie purus magna quis velit ultricies. Aliquet non vulputate semper viverra porttitor in vivamus ullamcorper. Amet enim et placerat dolor.</p>
                                    <p>Ut amet nibh nibh donec quis tempus est tristique. Egestas sit nec massa euismod pulvinar ultrices ipsum sapien sit. Magna quam nisl cursus integer volutpat cras at ligula. Porttitor pretium mi massa nec euismod id eget. </p>
                                </div>
                                <div class="people">
                                    <div class="image">
                                        <?php
                                        get_template_part('template/image', null, [
                                            'src' => $img_path . 'carousel_buttons/owl_button_' . ($i + 1) . '.png',
                                            'alt' => '',
                                            'class' => ''
                                        ]);
                                        ?>
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
        <div class="flex items-center flex-wrap lg:flex-nowrap gap-[50px] contact_us_bg px-[30px] py-[40px] md:px-[70px] md:py-[60px] lg:px-[80px] lg:py-[80px] xl:px-[114px] xl:py-[150px] bg-white">
            <div class="lg:w-7/12 lg:pe-5">
                <div class="form w-full py-[30px] px-[20px] md:p-[40px] max-w-full lg:max-w-[776px] border-t-[5px] border-[#ff4314] border-solid bg-[#FFFAF5]">
                    <h3 class="!mb-[30px]">Let’s Spark Growth Together</h3>
                    <?= do_shortcode('[contact-form-7 id="20a6980" title="Contact Us (Home page)"]') ?>
                </div>
            </div>
            <div class="lg:w-5/12">
                <div class="content">
                    <h2>Contact Us</h2>
                    <p class="mb-60">Let’s talk about what’s holding your team back—and what’s possible with the right learning experience. Send us a message, and we’ll co-create a program that aligns with your goals and delivers real results.</p>
                    <div class="contacts flex-col flex gap-y-[30px]">
                        <div class="flex-col flex gap-y-[10px]">
                            <?php echo file_get_contents($img_path . 'user.svg') ?>
                            <p>Prince M. Datu</p>
                        </div>
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
                            <a href="https://www.google.com/maps/place/Acceler8+by+UnionSPACE+-+Rockwell/@14.5640132,121.0374178,1059m/data=!3m2!1e3!4b1!4m6!3m5!1s0x3397c98c59c8936b:0xd8d8b7d754dd071e!8m2!3d14.5640132!4d121.0374178!16s%2Fg%2F11fj0tlqpr?entry=ttu&g_ep=EgoyMDI1MDcyMy4wIKXMDSoASAFQAw%3D%3D" target="_blank" rel="noopener noreferrer">5F, Phinma Plaza, 39 Plaza Drive, Rockwell Center, Makati City</a>
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
            '<?= $img_path ?>/carousel_buttons/owl_button_1.png',
            '<?= $img_path ?>/carousel_buttons/owl_button_2.png',
            '<?= $img_path ?>/carousel_buttons/owl_button_3.png',
            '<?= $img_path ?>/carousel_buttons/owl_button_4.png',
            '<?= $img_path ?>/carousel_buttons/owl_button_5.png'
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