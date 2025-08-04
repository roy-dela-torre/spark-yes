<?php $video    = isset($args['video']) ? $args['video'] : ''; ?>
<el-dialog>
    <dialog id="dialog" aria-labelledby="dialog-title" class="fixed inset-0 size-auto max-h-none max-w-none overflow-y-auto bg-transparent backdrop:bg-transparent">
        <el-dialog-backdrop class="fixed inset-0 bg-[rgb(0_0_0_/_40%)] transition-opacity data-closed:opacity-0 data-enter:duration-300 data-enter:ease-out data-leave:duration-200 data-leave:ease-in"></el-dialog-backdrop>
        <div tabindex="0" class="flex min-h-full justify-center p-[20px] text-center focus:outline-none items-center sm:p-0">
            <el-dialog-panel class="relative transform overflow-hidden rounded-lg h-fit text-left shadow-xl transition-all data-closed:translate-y-4 data-closed:opacity-0 data-enter:duration-300 data-enter:ease-out data-leave:duration-200 data-leave:ease-in sm:my-8 sm:w-[96%] max-w-[1200px] data-closed:sm:translate-y-0 data-closed:sm:scale-95">
                <?= $video ?>
                <button type="button" command="close" commandfor="dialog" class="absolute top-0 right-0 rounded-[50%] border-0" id="closeButton">
                    <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M6.86016 35.14C4.94995 33.2951 3.42631 31.0882 2.37813 28.6481C1.32995 26.208 0.778226 23.5836 0.75515 20.9281C0.732073 18.2725 1.23811 15.6389 2.24373 13.181C3.24934 10.723 4.7344 8.48999 6.61226 6.61214C8.49011 4.73428 10.7232 3.24922 13.1811 2.2436C15.639 1.23799 18.2726 0.731951 20.9282 0.755028C23.5838 0.778104 26.2082 1.32983 28.6482 2.37801C31.0883 3.42619 33.2952 4.94983 35.1402 6.86004C38.7833 10.6321 40.7992 15.6841 40.7536 20.9281C40.7081 26.172 38.6047 31.1882 34.8965 34.8964C31.1884 38.6046 26.1721 40.7079 20.9282 40.7535C15.6842 40.7991 10.6322 38.7832 6.86016 35.14ZM9.68016 32.32C12.6824 35.3223 16.7543 37.0089 21.0002 37.0089C25.246 37.0089 29.3179 35.3223 32.3202 32.32C35.3224 29.3178 37.0091 25.2459 37.0091 21C37.0091 16.7542 35.3224 12.6823 32.3202 9.68004C29.3179 6.67779 25.246 4.99114 21.0002 4.99114C16.7543 4.99114 12.6824 6.67779 9.68016 9.68004C6.67791 12.6823 4.99126 16.7542 4.99126 21C4.99126 25.2459 6.67791 29.3178 9.68016 32.32ZM29.4802 15.34L23.8202 21L29.4802 26.66L26.6602 29.48L21.0002 23.82L15.3402 29.48L12.5202 26.66L18.1802 21L12.5202 15.34L15.3402 12.52L21.0002 18.18L26.6602 12.52L29.4802 15.34Z" fill="white" />
                    </svg>
                </button>
            </el-dialog-panel>
        </div>
    </dialog>
</el-dialog>