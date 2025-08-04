<?php
$css_path = get_stylesheet_directory_uri() . '/inc/css'; ?>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php wp_title() ?></title>
    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?>/src/output.css">
    <?php wp_head(); ?>
</head>

<body <?php echo body_class(); ?>>
    <header class="fixed sm:py-[10px] top-0 left-0 w-full z-50 border-solid border-[1px] lg:bg-black" style="border-color: rgba(255, 255, 255, 0.10);" id="mainHeader">
        <nav class="flex flex-wrap items-center justify-between mx-auto border-white/10">
            <a href="<?php echo get_home_url(); ?>" class="flex items-center space-x-3 rtl:space-x-reverse">
                <img loading="laxy" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/img/global/header_logo.png" class="w-[143px] h-[50px] object-contain" alt="Spark Yes" />
            </a>
            <button data-collapse-toggle="navbar-default" type="button" class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-default" aria-expanded="false" id="navbarToggle">
                <span class="sr-only">Open main menu</span>
                <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15" />
                </svg>
            </button>
            <div class="hidden w-full lg:block lg:w-auto max-h-[400px] overflow-y-auto" id="navbar-default">
                <?php
                wp_nav_menu(array(
                    'menu' => 'Main Menu',
                    'menu_class' => 'flex flex-col lg:flex-row lg:space-x-8 rtl:space-x-reverse',
                    'container' => false,
                    'items_wrap' => '<ul id="%1$s" class="%2$s">%3$s</ul>',
                    'walker' => new class extends Walker_Nav_Menu {
                        function start_el(&$output, $item, $depth = 0, $args = null, $id = 0)
                        {
                            $classes = empty($item->classes) ? array() : (array) $item->classes;
                            $classes[] = 'py-[10px] lg:py-[38px] relative';
                            $class_names = join(' ', apply_filters('nav_menu_css_class', array_filter($classes), $item, $args, $depth));
                            $class_names = $class_names ? ' class="' . esc_attr($class_names) . '"' : '';
                            $output .= '<li' . $class_names . '>';
                            $atts = array();
                            $atts['title']  = ! empty($item->attr_title) ? $item->attr_title : '';
                            $atts['target'] = ! empty($item->target)     ? $item->target     : '';
                            $atts['rel']    = ! empty($item->xfn)        ? $item->xfn        : '';
                            $atts['href']   = ! empty($item->url)        ? $item->url        : '';
                            $atts = apply_filters('nav_menu_link_attributes', $atts, $item, $args, $depth);
                            $attributes = '';
                            foreach ($atts as $attr => $value) {
                                if (! empty($value)) {
                                    $value = ('href' === $attr) ? esc_url($value) : esc_attr($value);
                                    $attributes .= ' ' . $attr . '="' . $value . '"';
                                }
                            }
                            $title = apply_filters('the_title', $item->title, $item->ID);
                            $title = apply_filters('nav_menu_item_title', $title, $item, $args, $depth);
                            $item_output = $args->before;
                            $item_output .= '<a' . $attributes . '>';
                            $item_output .= $args->link_before . $title . $args->link_after;
                            $item_output .= '</a>';
                            $item_output .= $args->after;
                            $output .= apply_filters('walker_nav_menu_start_el', $item_output, $item, $depth, $args);
                        }
                        function end_el(&$output, $item, $depth = 0, $args = null)
                        {
                            $output .= "</li>\n";
                        }
                    }
                ));
                ?>
            </div>
        </nav>
    </header>