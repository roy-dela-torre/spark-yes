<?php get_header();
//Template Name: Blogs
$banner_data = [
    'banner_header' => get_field('banner_header'),
    'banner_content' => get_field('banner_content'),
    'banner_background_image' => get_field('banner_background_image'),
    'banner_class' => 'min-h-[600px] flex flex-col justify-center section_padding', // Default class for the terms and conditions banner
];
get_template_part('template/banner', null, $banner_data);
?>
<section class="section_padding" id="some_blogs">
    <div class="wrapper">
        <div class="grid_box gap-[24px] w-full">
            <?php
            $args = [
                'post_type' => 'post',
                'posts_per_page' => 4,
                'post_status' => 'publish',
            ];
            $query = new WP_Query($args);
            $excluded_post = [];
            if ($query->have_posts()) :
                while ($query->have_posts()) : $query->the_post();
                    $excluded_post[] = get_the_ID();
                    $blog_card_data = [
                        'title' => get_the_title(),
                        'link' => get_permalink(),
                        'excerpt' => wpautop(get_the_excerpt()),
                        'img' => get_the_post_thumbnail_url(get_the_ID(), 'medium') ?: get_template_directory_uri() . '/assets/images/placeholder.png',
                        'date' => get_the_date(),
                    ];
                    get_template_part('template/blog_cards', null, $blog_card_data);
                endwhile;
                wp_reset_postdata();
            else :
                echo '<p>No blog posts found.</p>';
            endif;
            ?>
        </div>
    </div>
</section>

<section class="section_padding" id="other_blogs">
    <div class="wrapper">
        <div class="flex flex-wrap">
            <div class="header flex items-center justify-between flex-col lg:flex-row">
                <div class="left_content lg:max-w-[650px] max-w-full">
                    <h2>Other Blogs</h2>
                    <p>Lorem ipsum dolor sit amet consectetur. Mauris habitant ac consequat risus urna ut quisque rhoncus. Tristique diam vitae mattis diam nunc vitae tincidunt donec diam.</p>
                </div>
                <div class="search">
                    <form action="<?php echo esc_url(home_url('/')); ?>" method="get" class="flex items-center p-[15px] rounded-[2px] border border-[#878787] border-solid">
                        <input type="text" name="s" placeholder="Search" class="search_input" value="<?php echo get_search_query(); ?>">
                        <button type="submit" class="search_button">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="21" viewBox="0 0 20 21" fill="none">
                                <path d="M8.755 11.7421C6.415 9.40207 6.415 5.60207 8.755 3.25207C11.095 0.91207 14.895 0.91207 17.245 3.25207C19.585 5.59207 19.585 9.39207 17.245 11.7421C14.905 14.0821 11.105 14.0821 8.755 11.7421Z" fill="#E5E5E5" stroke="#E5E5E5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                <path d="M8.49512 12.002L0.995117 19.502L8.49512 12.002Z" fill="#E5E5E5" />
                                <path d="M8.49512 12.002L0.995117 19.502" stroke="#E5E5E5" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                            </svg>
                        </button>
                    </form>
                </div>
            </div>
            <div class="grid_box gap-[24px] w-full">
                <?php
                $args = [
                    'post_type' => 'post',
                    'posts_per_page' => 9,
                    'post_status' => 'publish',
                    'post__not_in' => $excluded_post, // Exclude already displayed posts
                ];
                $query = new WP_Query($args);
                if ($query->have_posts()) :
                    while ($query->have_posts()) : $query->the_post();
                        $blog_card_data = [
                            'title' => get_the_title(),
                            'link' => get_permalink(),
                            'excerpt' => wpautop(get_the_excerpt()),
                            'img' => get_the_post_thumbnail_url(get_the_ID(), 'medium') ?: get_template_directory_uri() . '/assets/images/placeholder.png',
                            'date' => get_the_date(),
                            'author' => get_the_author(),
                        ];
                        get_template_part('template/blog_cards', null, $blog_card_data);
                    endwhile;
                    wp_reset_postdata();
                else :
                    echo '<p>No blog posts found.</p>';
                endif;
                ?>
            </div>
            <div class="pagination">
                <?php
                // Pagination logic
                $total_pages = $query->max_num_pages;
                if ($total_pages > 1) {
                    $current_page = max(1, get_query_var('paged'));
                    echo paginate_links([
                        'total' => $total_pages,
                        'current' => $current_page,
                        'prev_text' => '<svg xmlns="http://www.w3.org/2000/svg" width="10" height="17" viewBox="0 0 10 17" fill="none"><path d="M8.01844 16.6636L0.253469 9.12797C0.161303 9.03826 0.0958652 8.94107 0.0571556 8.83641C0.018446 8.73175 -0.000601545 8.61961 1.29147e-05 8.5C1.29356e-05 8.38039 0.0193678 8.26825 0.0580774 8.16359C0.0967871 8.05893 0.161918 7.96174 0.253469 7.87203L8.01844 0.313985C8.23349 0.104663 8.50231 1.48659e-06 8.82489 1.54299e-06C9.14747 1.59939e-06 9.42397 0.112139 9.65438 0.336413C9.8848 0.560688 10 0.822341 10 1.12137C10 1.42041 9.88479 1.68206 9.65438 1.90633L2.88019 8.5L9.65438 15.0937C9.86943 15.303 9.97696 15.5611 9.97696 15.8679C9.97696 16.1747 9.86175 16.4399 9.63134 16.6636C9.40092 16.8879 9.1321 17 8.82489 17C8.51767 17 8.24885 16.8879 8.01844 16.6636Z" fill="#FF4314"/></svg>',
                        'next_text' => '<svg xmlns="http://www.w3.org/2000/svg" width="10" height="17" viewBox="0 0 10 17" fill="none"><path d="M1.98156 0.336412L9.74653 7.87203C9.8387 7.96174 9.90413 8.05893 9.94284 8.16359C9.98155 8.26825 10.0006 8.38039 9.99999 8.5C9.99999 8.61961 9.98063 8.73175 9.94192 8.83641C9.90321 8.94107 9.83808 9.03826 9.74653 9.12797L1.98156 16.686C1.76651 16.8953 1.49769 17 1.17511 17C0.852531 17 0.576034 16.8879 0.345619 16.6636C0.115205 16.4393 -1.83546e-06 16.1777 -1.80932e-06 15.8786C-1.78317e-06 15.5796 0.115205 15.3179 0.345619 15.0937L7.11981 8.5L0.345621 1.90633C0.130567 1.69701 0.0230402 1.43894 0.0230403 1.13214C0.0230403 0.82533 0.138248 0.560086 0.368662 0.336412C0.599077 0.112136 0.867894 -7.98354e-07 1.17511 -7.71496e-07C1.48233 -7.44638e-07 1.75115 0.112136 1.98156 0.336412Z" fill="#FF4314"/></svg>',
                    ]);
                }
                ?>
            </div>
        </div>
    </div>
</section>
<?php get_footer(); ?>