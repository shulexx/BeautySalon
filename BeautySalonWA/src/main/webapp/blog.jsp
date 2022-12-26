<%-- 
    Document   : blog
    Created on : Dec 5, 2022, 3:40:52 PM
    Author     : nadab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
    <!--<![endif]-->


    <!-- blog-grid12:56:42  -->
    <head>
        <title>Venustas Blog</title>
         <link rel="icon" href="images/home_icon.png" type="image/x-icon">
        <meta charset="utf-8">
        <!--[if IE]>
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <![endif]-->
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/animations.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/main.css" class="color-switcher-link">
        <script src="js/vendor/modernizr-custom.js"></script>

        <!--[if lt IE 9]>
                <script src="js/vendor/html5shiv.min.js"></script>
                <script src="js/vendor/respond.min.js"></script>
                <script src="js/vendor/jquery-1.12.4.min.js"></script>
        <![endif]-->

    </head>

    <body>
        <!--[if lt IE 9]>
                <div class="bg-danger text-center">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/" class="color-main">upgrade your browser</a> to improve your experience.</div>
        <![endif]-->

        <div class="preloader">
            <div class="preloader_image pulse"></div>
        </div>

        <!-- search modal -->
        <div class="modal" tabindex="-1" role="dialog" aria-labelledby="search_modal" id="search_modal">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <div class="widget widget_search">
                <form method="get" class="searchform search-form" action="http://webdesign-finder.com/">
                    <div class="form-group">
                        <input type="text" value="" name="search" class="form-control" placeholder="Search keyword" id="modal-search-input">
                    </div>
                    <button type="submit" class=""></button>
                </form>
            </div>
        </div>

        <!-- Unyson messages modal -->
        <div class="modal fade" tabindex="-1" role="dialog" id="messages_modal">
            <div class="fw-messages-wrap ls p-normal">
                <!-- Uncomment this UL with LI to show messages in modal popup to your user: -->
                <!--
        <ul class="list-unstyled">
                <li>Message To User</li>
        </ul>
                -->

            </div>
        </div><!-- eof .modal -->

        <!-- wrappers for visual page editor and boxed version of template -->
        <div id="canvas">
            <div id="box_wrapper">

                <!-- template sections -->


                <!-- header with two Bootstrap columns - left for logo and right for navigation and includes (search, social icons, additional links and buttons etc -->
                <header class="page_header ds bottom_mask_add">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col-xl-3 col-lg-4 col-md-5 col-11">
                                <a href="index.jsp" class="logo">
                                    <img src="images/logo.png" alt="img">
                                </a>
                            </div>
                            <div class="col-xl-6 col-lg-8 col-md-7 col-1">
                                <div class="nav-wrap">

                                    <!-- main nav start -->
                                    <nav class="top-nav">
                                        <ul class="nav sf-menu">

                                            <li>
                                                <a href="index.jsp">Anasayfa</a>
                                            </li>
                                            <!-- blog -->
                                            <li class="active">
                                                <a href="blog.jsp">Blog</a>
                                            </li>
                                            <!-- eof blog -->
                                            <li>
                                                <a href="about.jsp">Hakkımızda</a>
                                            </li>
                                            <!-- eof pages -->
                                            <!-- contacts -->
                                            <li>
                                                <a href="contact.jsp">İLETİŞİM</a>
                                            </li>
                                            <!-- eof contacts -->
                                            <!-- FAQ -->
                                            <li>
                                                <a href="faq.jsp">Sıkça Sorulan Sorular</a>
                                            </li>
                                            <!-- eof FAQ -->

                                            <li class="top-includes">
                                                <span class="top-includes d-xl-flex">
                                                    <%
                                                        if (session.getAttribute("email") != null) {
                                                    %>
                                                    <a href="logout.jsp">
                                                        <i class="fa fa-sign-in" aria-hidden="true"></i>
                                                    </a>
                                                    <a href="calendar.jsp">
                                                        <i class="fa fa-calendar" aria-hidden="true"></i>
                                                    </a>
                                                    <%} else {%>
                                                    <a href="login.jsp">
                                                        <i class="fa fa-user-o" aria-hidden="true"></i>
                                                    </a>
                                                    <%}%>
                                                </span>
                                                <span class="header-phone">
                                                    <span>BİZİ ARAYIN</span>
                                                    <span class="phone"><span class="color-main">800</span> 123 4567</span>
                                                    <span>24/7 AKTİF</span>
                                                </span>
                                            </li>
                                        </ul>


                                    </nav>
                                    <!-- eof main nav -->

                                    <!--hidding includes on small devices. They are duplicated in topline-->

                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-md-5 col-11">
                                <div class="top-includes">
                                    <ul class="top-includes d-none d-xl-flex">
                                        <%
                                            if (session.getAttribute("email") != null) {
                                        %>
                                        <a href="logout.jsp">
                                            <i class="fa fa-sign-in" aria-hidden="true"></i>
                                        </a>
                                        <a href="calendar.jsp">
                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                        </a>
                                        <%} else {%>
                                        <a href="login.jsp">
                                            <i class="fa fa-user-o" aria-hidden="true"></i>
                                        </a>
                                        <%}%>
                                    </ul>
                                    <span class="header-phone">
                                        <span>Bizi arayın</span>
                                        <span class="phone"><span class="color-main">800</span> 123 4567</span>
                                        <span>24/7 aktif</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- header toggler -->
                    <span class="toggle_menu"><span></span></span>
                </header>

                <section class="page_title s-parallax bottom_mask_subtract s-overlay ds title-overlay s-py-md-25">
                    <div class="container">
                        <div class="row">

                            <div class="fw-divider-space hidden-below-lg mt-160"></div>
                            <div class="fw-divider-space hidden-above-lg mt-100"></div>

                            <div class="col-md-12 text-center">
                                <h1>Blog</h1>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item">
                                        <a href="index.jsp">Anasayfa</a>
                                    </li>
                                    <li class="breadcrumb-item active">
                                        Blog
                                    </li>
                                </ol>
                            </div>

                            <div class="fw-divider-space hidden-below-lg mt-160"></div>
                            <div class="fw-divider-space hidden-above-lg mt-100"></div>

                        </div>
                    </div>
                </section>

                <section class="ds s-pt-70 s-pb-40 s-pb-md-70 s-py-lg-100 s-py-xl-150">
                    <div class="container">

                        <div class="row c-mb-30">
                            <div class="offset-lg-1 col-lg-10">
                                <div class="row isotope-wrapper masonry-layout">
                                    <div class="col-xl-4 col-md-6">
                                        <article class="vertical-item text-center content-padding padding-small post type-post status-publish format-standard has-post-thumbnail">
                                            <div class="item-media post-thumbnail">
                                                <img src="images/blog/01.jpg" alt="img">
                                            </div><!-- .post-thumbnail -->
                                            <div class="item-content">
                                                <header class="entry-header">
                                                    <h4 class="entry-title">
                                                        Doğru Makyaj Nasıl Seçilir?
                                                    </h4>
                                                    <div class="entry-meta">
                                                        <span class="screen-reader-text">Posted on</span>
                                                        <time class="entry-date published updated" datetime="2018-03-11T15:15:12+00:00">Mart 11,
                                                            2018
                                                        </time>
                                                    </div>
                                                    <!-- .entry-meta -->
                                                </header>
                                                <!-- .entry-header -->

                                                <div class="entry-content">
                                                    <p>Kıyafete uygun makyaj seçimi nasıl yapılır? Hangi tarza hangi makyaj yapılmalıdır? Son trend ne? </p>
                                                </div><!-- .entry-content -->
                                            </div><!-- .item-content -->
                                        </article><!-- #post-## -->
                                    </div>
                                    <div class="col-xl-4 col-md-6">
                                        <article class="vertical-item text-center content-padding padding-small bordered post type-post status-publish format-standard has-post-thumbnail">
                                            <div class="item-media post-thumbnail">
                                                <img src="images/blog/02.jpg" alt="img">
                                            </div><!-- .post-thumbnail -->
                                            <div class="item-content">
                                                <header class="entry-header">
                                                    <h4 class="entry-title">
                                                         Cilt Analizi Nedir?
                                                    </h4>
                                                    <div class="entry-meta">


                                                        <span class="screen-reader-text">Posted on</span>
                                                        <time class="entry-date published updated" datetime="2018-03-15T15:15:12+00:00">Mart 15,
                                                            2018
                                                        </time>
                                                    </div>
                                                    <!-- .entry-meta -->

                                                </header>
                                                <!-- .entry-header -->

                                                <div class="entry-content">
                                                    <p>Cilt renk tonu nasıl belirlenir? Cilt alt tonu nasıl belirlenir? Cilt analizi nerede yapılır?</p>
                                                </div><!-- .entry-content -->
                                            </div><!-- .item-content -->
                                        </article><!-- #post-## -->

                                    </div>
                                    <div class="col-xl-4 col-md-6">
                                        <article class="vertical-item text-center content-padding padding-small bordered post type-post status-publish format-standard has-post-thumbnail">
                                            <div class="item-media post-thumbnail">
                                                <img src="images/blog/03-big.jpg" alt="img">
                                            </div><!-- .post-thumbnail -->
                                            <div class="item-content">
                                                <header class="entry-header">
                                                    <h4 class="entry-title">
                                                         Dudak Bakımı Nedir?
                                                    </h4>
                                                    <div class="entry-meta">


                                                        <span class="screen-reader-text">Posted on</span>
                                                        <time class="entry-date published updated" datetime="2018-03-18T15:15:12+00:00">Mart 18,
                                                            2018
                                                        </time>
                                                    </div>
                                                    <!-- .entry-meta -->

                                                </header>
                                                <!-- .entry-header -->

                                                <div class="entry-content">
                                                    <p>Hangi ürünler kullanılmalı? Dudak bakımında dikkat edilmesi gerekenler nedir?</p>
                                                </div><!-- .entry-content -->
                                            </div><!-- .item-content -->
                                        </article><!-- #post-## -->
                                    </div>

                                    <div class="col-xl-4 col-md-6">
                                        <article class="vertical-item text-center content-padding padding-small bordered post type-post status-publish format-standard has-post-thumbnail">
                                            <div class="item-media post-thumbnail">
                                                <img src="images/blog/04.jpg" alt="img">
                                            </div><!-- .post-thumbnail -->
                                            <div class="item-content">
                                                <header class="entry-header">
                                                    <h4 class="entry-title">
                                                       Kışın Cilt Bakımı
                                                    </h4>
                                                    <div class="entry-meta">


                                                        <span class="screen-reader-text">Posted on</span>
                                                        <time class="entry-date published updated" datetime="2018-03-11T15:15:12+00:00">Mart 11,
                                                            2018
                                                        </time>
                                                    </div>
                                                    <!-- .entry-meta -->

                                                </header>
                                                <!-- .entry-header -->

                                                <div class="entry-content">
                                                    <p>Kış aylarında cildin nem dengesi nasıl korunur? Cilt bakımında püf noktalar nedir?</p>
                                                </div><!-- .entry-content -->
                                            </div><!-- .item-content -->
                                        </article><!-- #post-## -->
                                    </div>
                                    <div class="col-xl-4 col-md-6">
                                        <article class="vertical-item text-center content-padding padding-small bordered post type-post status-publish format-standard has-post-thumbnail">
                                            <div class="item-media post-thumbnail">
                                                <img src="images/blog/05.jpg" alt="img">
                                            </div><!-- .post-thumbnail -->
                                            <div class="item-content">
                                                <header class="entry-header">
                                                    <h4 class="entry-title">
                                                        Kaş Şekli Tasarımı
                                                    </h4>
                                                    <div class="entry-meta">


                                                        <span class="screen-reader-text">Posted on</span>
                                                        <time class="entry-date published updated" datetime="2018-03-15T15:15:12+00:00">Nisan 15,
                                                            2018
                                                        </time>
                                                    </div>
                                                    <!-- .entry-meta -->

                                                </header>
                                                <!-- .entry-header -->

                                                <div class="entry-content">
                                                    <p>Yüzünüze uygun kaş tasarımı nasıl yapılır? Doğru kaş rengi ne olmalıdır?</p>
                                                </div><!-- .entry-content -->
                                            </div><!-- .item-content -->
                                        </article><!-- #post-## -->
                                    </div>
                                    <div class="col-xl-4 col-md-6">
                                        <article class="vertical-item text-center content-padding padding-small bordered post type-post status-publish format-standard has-post-thumbnail">
                                            <div class="item-media post-thumbnail">
                                                <img src="images/blog/06.jpg" alt="img">
                                            </div><!-- .post-thumbnail -->
                                            <div class="item-content">
                                                <header class="entry-header">
                                                    <h4 class="entry-title">
                                                        Saç Şekli ve Tasarımı
                                                    </h4>
                                                    <div class="entry-meta">


                                                        <span class="screen-reader-text">Posted on</span>
                                                        <time class="entry-date published updated" datetime="2018-03-18T15:15:12+00:00">Ağustos 18,
                                                            2018
                                                        </time>
                                                    </div>
                                                    <!-- .entry-meta -->

                                                </header>
                                                <!-- .entry-header -->

                                                <div class="entry-content">
                                                    <p>Cilt renginize uygun saç rengi hangisi? Doğru saç modeli nasıl seçilir?</p>
                                                </div><!-- .entry-content -->
                                            </div><!-- .item-content -->
                                        </article><!-- #post-## -->
                                    </div>
                                    <div class="col-xl-4 col-md-6">
                                        <article class="vertical-item text-center content-padding padding-small bordered post type-post status-publish format-standard has-post-thumbnail">
                                            <div class="item-media post-thumbnail">
                                                <img src="images/blog/07-big.jpg" alt="img">
                                            </div><!-- .post-thumbnail -->
                                            <div class="item-content">
                                                <header class="entry-header">
                                                    <h4 class="entry-title">
                                                        Kalıcı Makyaj Nedir?
                                                    </h4>
                                                    <div class="entry-meta">


                                                        <span class="screen-reader-text">Posted on</span>
                                                        <time class="entry-date published updated" datetime="2018-03-11T15:15:12+00:00">Ağustos 11,
                                                            2018
                                                        </time>
                                                    </div>
                                                    <!-- .entry-meta -->

                                                </header>
                                                <!-- .entry-header -->

                                                <div class="entry-content">
                                                    <p>Kalıcı Makyaj Ne Kadar Kalır? Kalıcı Makyaj İstediğin Zaman Çıkarılabilir Mi?</p>
                                                </div><!-- .entry-content -->
                                            </div><!-- .item-content -->
                                        </article><!-- #post-## -->
                                    </div>
                                    <div class="col-xl-4 col-md-6">
                                        <article class="vertical-item text-center content-padding padding-small bordered post type-post status-publish format-standard has-post-thumbnail">
                                            <div class="item-media post-thumbnail">
                                                <img src="images/blog/08.jpg" alt="img">
                                            </div><!-- .post-thumbnail -->
                                            <div class="item-content">
                                                <header class="entry-header">
                                                    <h4 class="entry-title">
                                                        İlkbahar  Modası 
                                                    </h4>
                                                    <div class="entry-meta">


                                                        <span class="screen-reader-text">Posted on</span>
                                                        <time class="entry-date published updated" datetime="2018-03-15T15:15:12+00:00">Ocak 15,
                                                            2019
                                                        </time>
                                                    </div>
                                                    <!-- .entry-meta -->

                                                </header>
                                                <!-- .entry-header -->

                                                <div class="entry-content">
                                                    <p>Sezonun Öne Çıkan Renkleri Nelerdir? Sokak Modasında En Çok Tercih Edilenler.</p>
                                                </div><!-- .entry-content -->
                                            </div><!-- .item-content -->
                                        </article><!-- #post-## -->
                                    </div>
                                    <div class="col-xl-4 col-md-6">
                                        <article class="vertical-item text-center content-padding padding-small bordered post type-post status-publish format-standard has-post-thumbnail">
                                            <div class="item-media post-thumbnail">
                                                <img src="images/blog/09.jpg" alt="img">
                                            </div><!-- .post-thumbnail -->
                                            <div class="item-content">
                                                <header class="entry-header">
                                                    <h4 class="entry-title">
                                                        Takı Seçimi ve Temizliği
                                                    </h4>
                                                    <div class="entry-meta">


                                                        <span class="screen-reader-text">Posted on</span>
                                                        <time class="entry-date published updated" datetime="2018-03-18T15:15:12+00:00">Ocak 18,
                                                            2019
                                                        </time>
                                                    </div>
                                                    <!-- .entry-meta -->

                                                </header>
                                                <!-- .entry-header -->

                                                <div class="entry-content">
                                                    <p>Takı Seçiminde Neler Önemlidir? Takıların Temizliğinde Dikkat Edilmesi Gerekenler.</p>
                                                </div><!-- .entry-content -->
                                            </div><!-- .item-content -->
                                        </article><!-- #post-## -->
                                    </div>
                                    <div class="col-xl-4 col-md-6">
                                        <article class="vertical-item text-center content-padding padding-small bordered post type-post status-publish format-standard has-post-thumbnail">
                                            <div class="item-media post-thumbnail">
                                                <img src="images/post/02.jpg" alt="img">
                                            </div><!-- .post-thumbnail -->
                                            <div class="item-content">
                                                <header class="entry-header">
                                                    <h4 class="entry-title">
                                                        Mor Şampuan Nedir?
                                                    </h4>
                                                    <div class="entry-meta">


                                                        <span class="screen-reader-text">Posted on</span>
                                                        <time class="entry-date published updated" datetime="2018-03-11T15:15:12+00:00">Şubat 11,
                                                            2019
                                                        </time>
                                                    </div>
                                                    <!-- .entry-meta -->

                                                </header>
                                                <!-- .entry-header -->

                                                <div class="entry-content">
                                                    <p>Mor Şampuanı Kimler Kullanmalıdır? Mor Şampuan Nasıl Kullanılır?</p>
                                                </div><!-- .entry-content -->
                                            </div><!-- .item-content -->
                                        </article><!-- #post-## -->
                                    </div>
                                    <div class="col-xl-4 col-md-6">
                                        <article class="vertical-item text-center content-padding padding-small bordered post type-post status-publish format-standard has-post-thumbnail">
                                            <div class="item-media post-thumbnail">
                                                <img src="images/post/01.jpg" alt="img">
                                            </div><!-- .post-thumbnail -->
                                            <div class="item-content">
                                                <header class="entry-header">
                                                    <h4 class="entry-title">
                                                        Tırnak Bakımı Hakkında
                                                    </h4>
                                                    <div class="entry-meta">


                                                        <span class="screen-reader-text">Posted on</span>
                                                        <time class="entry-date published updated" datetime="2018-03-15T15:15:12+00:00">Mart 15,
                                                            2019
                                                        </time>
                                                    </div>
                                                    <!-- .entry-meta -->

                                                </header>
                                                <!-- .entry-header -->

                                                <div class="entry-content">
                                                    <p>Tırnak Bakımında Dikkat Edilmesi Gerekenler. Kalıcı Oje Uygulaması Zarar Verir Mi?</p>
                                                </div><!-- .entry-content -->
                                            </div><!-- .item-content -->
                                        </article><!-- #post-## -->
                                    </div>
                                    <div class="col-xl-4 col-md-6">
                                        <article class="vertical-item text-center content-padding padding-small bordered post type-post status-publish format-standard has-post-thumbnail">
                                            <div class="item-media post-thumbnail">
                                                <img src="images/post/03.jpg" alt="img">
                                            </div><!-- .post-thumbnail -->
                                            <div class="item-content">
                                                <header class="entry-header">
                                                    <h4 class="entry-title">
                                                      Renk Uyumu Hakkında
                                                    </h4>
                                                    <div class="entry-meta">


                                                        <span class="screen-reader-text">Posted on</span>
                                                        <time class="entry-date published updated" datetime="2018-03-18T15:15:12+00:00">Mart 18,
                                                            2019
                                                        </time>
                                                    </div>
                                                    <!-- .entry-meta -->

                                                </header>
                                                <!-- .entry-header -->

                                                <div class="entry-content">
                                                    <p>Birbiriyle uyumlu renkler nedir? Zıt renkler hangileridir? Renk seçimi nasıl olmalıdır?</p>
                                                </div><!-- .entry-content -->
                                            </div><!-- .item-content -->
                                        </article><!-- #post-## -->
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </section>

                <footer class="page_footer ds top_mask_add s-pb-10 s-pt-70 s-pb-md-40 s-pt-md-85 s-pb-xl-140 s-pt-xl-145">
                    <div class="container">
                        <div class="row">
                            <div class="divider-20 d-none d-xl-block"></div>
                            <div class="col-12 text-center animate" data-animation="fadeInUp">
                                <div class="widget widget_social_buttons">
                                    <a href="https://www.facebook.com/" class="fa fa-facebook color-bg-icon rounded" title="facebook"></a>
                                    <a href="https://www.twitter.com/" class="fa fa-twitter color-bg-icon rounded" title="twitter"></a>
                                    <a href="https://www.google.com/" class="fa fa-google color-bg-icon rounded" title="google"></a>
                                </div>
                                <div class="widget logo">
                                    <img src="images/logo.png" alt="img" width="468" height="214.6">
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div><!-- eof #box_wrapper -->
        </div><!-- eof #canvas -->
        <script src="js/compressed.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
