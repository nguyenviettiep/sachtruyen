<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-6155611f55efa892"></script>
<script type="text/javascript">
    $('.owl-carousel').owlCarousel({
        loop: false,
        margin: 10,
        dots: true,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>',
            '<i class="fa fa-angle-right" aria-hidden="true"></i>'
        ],
        responsive: {
            0: {
                items: 2
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    })
</script>
<script type="text/javascript">
    $('.select-chapter').on('change', function() {

        $('.waiting').text('Đang chuyển chương vui lòng chờ xíu....');

        var url = $(this).val();


        if (url) {


            window.location = url;

        }
        return false;
    });

    current_chapter();

    function current_chapter() {
        var url = window.location.href;

        $('.select-chapter').find('option[value="' + url + '"]').attr("selected", true);
    }
</script>
<script type="text/javascript">
    $(".xemmucluc").click(function() {
        $('html, body').animate({
            scrollTop: $(".mucluctruyen").offset().top
        }, 1000);
    });
</script>
<script type="text/javascript">
    const $dropdown = $(".dropdown");
    const $dropdownToggle = $(".dropdown-toggle");
    const $dropdownMenu = $(".dropdown-menu");
    const showClass = "show";

    $(window).on("load resize", function() {
        if (this.matchMedia("(min-width: 768px)").matches) {
            $dropdown.hover(
                function() {
                    const $this = $(this);
                    $this.addClass(showClass);
                    $this.find($dropdownToggle).attr("aria-expanded", "true");
                    $this.find($dropdownMenu).addClass(showClass);
                },
                function() {
                    const $this = $(this);
                    $this.removeClass(showClass);
                    $this.find($dropdownToggle).attr("aria-expanded", "false");
                    $this.find($dropdownMenu).removeClass(showClass);
                }
            );
        } else {
            $dropdown.off("mouseenter mouseleave");
        }
    });
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-194GRKVQZG"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());

    gtag('config', 'G-194GRKVQZG');
</script>
<div id="fb-root"></div>

<script async defer crossorigin="anonymous"
src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v10.0&appId=6125793717446054&autoLogAppEvents=1"
nonce="045Iezic"></script>

<script data-ad-client="ca-pub-8704329899201751" async
src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
