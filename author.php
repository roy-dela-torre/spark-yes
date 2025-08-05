<?php get_header() ?>
<section class="author">
    <div class="wrapper">
        <div class="flex flex-col">
            <div class="author_image">
                <img src="" alt="">
            </div>
            <p class="text-center">Author</p>
            <h1 class="text-center"><?php the_author_meta('display_name'); ?></h1>
            <div class="author_bio">
                <p><?php the_author_meta('description'); ?></p>
            </div>
            <h2 class="text-center">Lorem ipsum dolor sit amet consectetur</h2>
            <p class="text-center">Lorem ipsum dolor sit amet consectetur. Aliquet in vestibulum a scelerisque facilisis tellus. Viverra vitae pulvinar tellus quam mattis. Nisi arcu a aenean cras. At scelerisque enim pulvinar sed elementum semper.</p>
            <p class="text-center">Eget ipsum nam id imperdiet quis hac amet ipsum eget. Quis pellentesque praesent proin porta vitae. Tristique aliquet adipiscing tempor metus posuere. Felis mus et fringilla pellentesque quis augue. Ut quam viverra nunc vel orci. In aliquam integer rutrum accumsan tortor aliquam sed. Nisl diam tristique nunc eget dui vitae ac nunc euismod. Turpis neque sed tempor dignissim.</p>
            <div class="soc_med">
                <div class="flex flex-col items-center">
                    <span class="text-center">Follow Me on My Socials</span>
                    <a href="http://www.facebook.com" target="_blank" rel="noopener noreferrer">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="24" viewBox="0 0 14 24" fill="none">
                            <path d="M8.6862 13.8H11.7814L13.0195 9H8.6862V6.6C8.6862 5.364 8.6862 4.2 11.1624 4.2H13.0195V0.168C12.6159 0.1164 11.0918 0 9.48229 0C6.12086 0 3.73382 1.9884 3.73382 5.64V9H0.0195312V13.8H3.73382V24H8.6862V13.8Z" fill="#FF4314" />
                        </svg>
                    </a>
                    <a href="https://www.linkedin.com" target="_blank" rel="noopener noreferrer">
                        <svg xmlns="http://www.w3.org/2000/svg" width="26" height="24" viewBox="0 0 26 24" fill="none">
                            <path d="M5.26612 2.66785C5.26577 3.37506 4.98906 4.05316 4.49685 4.55298C4.00464 5.05279 3.33726 5.33339 2.64151 5.33304C1.94577 5.33268 1.27867 5.05141 0.786949 4.55109C0.295232 4.05077 0.0191837 3.37239 0.0195316 2.66519C0.0198794 1.95798 0.296595 1.27988 0.788804 0.780063C1.28101 0.280243 1.9484 -0.000353269 2.64414 3.33797e-07C3.33988 0.000353936 4.00699 0.281629 4.4987 0.781948C4.99042 1.28227 5.26647 1.96065 5.26612 2.66785ZM5.34482 7.30759H0.0982303V24H5.34482V7.30759ZM13.6344 7.30759H8.41408V24H13.582V15.2405C13.582 10.3608 19.8385 9.90745 19.8385 15.2405V24H25.0195V13.4273C25.0195 5.20104 15.7593 5.50769 13.582 9.54747L13.6344 7.30759Z" fill="#FF4314" />
                        </svg>
                    </a>
                    <a href="https://www.instagram.com" target="_blank" rel="noopener noreferrer">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                            <path d="M11.9985 7.76367C10.8751 7.76367 9.79768 8.20994 9.00332 9.0043C8.20896 9.79865 7.7627 10.876 7.7627 11.9994C7.7627 13.1228 8.20896 14.2002 9.00332 14.9946C9.79768 15.7889 10.8751 16.2352 11.9985 16.2352C13.1218 16.2352 14.1992 15.7889 14.9936 14.9946C15.7879 14.2002 16.2342 13.1228 16.2342 11.9994C16.2342 10.876 15.7879 9.79865 14.9936 9.0043C14.1992 8.20994 13.1218 7.76367 11.9985 7.76367Z" fill="#FF4314" />
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M5.18326 0.3764C9.71361 -0.125467 14.2855 -0.125467 18.8159 0.3764C21.2909 0.652701 23.2862 2.60115 23.5769 5.08526C24.1137 9.67899 24.1137 14.3196 23.5769 18.9134C23.2862 21.3975 21.2909 23.3459 18.8172 23.6235C14.2864 24.1255 9.71404 24.1255 5.18326 23.6235C2.70828 23.3459 0.712909 21.3975 0.422271 18.9147C-0.114715 14.3205 -0.114715 9.67942 0.422271 5.08526C0.712909 2.60115 2.70828 0.652701 5.18326 0.3764ZM18.5161 4.17946C18.1705 4.17946 17.839 4.31677 17.5945 4.56119C17.3501 4.8056 17.2128 5.13711 17.2128 5.48277C17.2128 5.82842 17.3501 6.15993 17.5945 6.40434C17.839 6.64876 18.1705 6.78607 18.5161 6.78607C18.8618 6.78607 19.1933 6.64876 19.4377 6.40434C19.6821 6.15993 19.8194 5.82842 19.8194 5.48277C19.8194 5.13711 19.6821 4.8056 19.4377 4.56119C19.1933 4.31677 18.8618 4.17946 18.5161 4.17946ZM5.80885 11.9993C5.80885 10.3574 6.46108 8.7828 7.62207 7.62181C8.78305 6.46083 10.3577 5.80859 11.9996 5.80859C13.6414 5.80859 15.2161 6.46083 16.3771 7.62181C17.538 8.7828 18.1903 10.3574 18.1903 11.9993C18.1903 13.6412 17.538 15.2158 16.3771 16.3768C15.2161 17.5378 13.6414 18.19 11.9996 18.19C10.3577 18.19 8.78305 17.5378 7.62207 16.3768C6.46108 15.2158 5.80885 13.6412 5.80885 11.9993Z" fill="#FF4314" />
                        </svg>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<?php get_footer() ?>