<%--
  Created by IntelliJ IDEA.
  User: 78431
  Date: 2024/2/18
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="wide wow-animation" lang="en">
<head>
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="/static/images/logotest.jpg" type="/static/image/x-icon">
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <link rel="stylesheet" href="/static/css/fonts.css">
    <link rel="stylesheet" href="/static/css/style.css">
</head>
<body>
<div class="page">
    <%@include file="../pages/PageHeader.jsp"%>
    <!-- 每日一句轮播图 -->
    <section class="section swiper-container swiper-slider swiper-slider-corporate swiper-pagination-style-2" data-loop="true" data-autoplay="5000" data-simulate-touch="true" data-nav="false" data-direction="vertical">
        <div class="swiper-wrapper text-left">
            <!-- 页面设计 -->
            <div class="swiper-slide context-dark" data-slide-bg="/static/images/bgimages/plouzane-1758197_1280.jpg">
                <div class="swiper-slide-caption section-md">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10">
                                <h6 class="text-uppercase" data-caption-animate="fadeInRight" data-caption-delay="0">One sentence a day</h6>
                                <h2 class="oh font-weight-light" data-caption-animate="slideInUp" data-caption-delay="100"><span>Explore</span><span class="font-weight-bold">The ocean of knowledge</span></h2>
                                <a class="button button-default-outline button-ujarak" href="/Classics" data-caption-animate="fadeInLeft" data-caption-delay="0">more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide context-dark" data-slide-bg="/static/images/bgimages/hallelujah.jpg">
                <div class="swiper-slide-caption section-md">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10">
                                <h6 class="text-uppercase" data-caption-animate="fadeInRight" data-caption-delay="0">One sentence a day</h6>
                                <h2 class="oh font-weight-light" data-caption-animate="slideInUp" data-caption-delay="100"><span>Trust</span><span class="font-weight-bold">Your own abilities</span></h2>
                                <a class="button button-default-outline button-ujarak" href="/Classics" data-caption-animate="fadeInLeft" data-caption-delay="0">more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-slide context-dark" data-slide-bg="/static/images/bgimages/tea-time-3240766_1280.jpg">
                <div class="swiper-slide-caption section-md">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10">
                                <h6 class="text-uppercase" data-caption-animate="fadeInRight" data-caption-delay="0">One sentence a day</h6>
                                <h2 class="oh font-weight-light" data-caption-animate="slideInUp" data-caption-delay="100"><span> Enrich </span><span class="font-weight-bold">Your experience</span></h2>
                                <a class="button button-default-outline button-ujarak" href="/Classics" data-caption-animate="fadeInLeft" data-caption-delay="0">more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Swiper Pagination-->
        <div class="swiper-pagination"></div>
    </section>
    <!-- 作品展示 -->
    <section class="section section-lg section-top-1 bg-gray-4">
        <div class="container offset-negative-1">
            <div class="box-categories cta-box-wrap">
                <div class="box-categories-content">
                    <div class="row justify-content-center">
                        <div class="col-md-4 wow fadeInDown col-9" data-wow-delay=".2s">
                            <ul class="list-marked-2 box-categories-list">
                                <li><a href="/classics/book/红楼梦"><img src="https://z1.ax1x.com/2023/10/08/pPvkMVS.jpg" alt="/static/images/cta-3-368x420.jpg" style=" width: 368px;height: 490px;object-fit: cover;"/></a>
                                    <h5 class="box-categories-title">Classic books</h5>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4 wow fadeInDown col-9" data-wow-delay=".2s">
                            <ul class="list-marked-2 box-categories-list">
                                <li><a href="/classics/book/唐诗三百首"><img src="https://s1.ax1x.com/2023/07/21/pCbPGqg.png" alt="/static/images/cta-3-368x420.jpg"  style=" width: 368px;height: 490px;object-fit: cover;"/></a>
                                    <h5 class="box-categories-title">Classic books</h5>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4 wow fadeInDown col-9" data-wow-delay=".2s">
                            <ul class="list-marked-2 box-categories-list">
                                <li><a href="/classics/book/李白诗选"><img src="https://s1.ax1x.com/2023/07/23/pCq4pa4.png" alt="/static/images/cta-3-368x420.jpg"  style=" width: 368px;height: 490px;object-fit: cover;"/></a>
                                    <h5 class="box-categories-title">Classic books</h5>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div><a class="link-classic wow fadeInUp" href="/Classics">Other books<span></span></a>
            <!-- Owl Carousel-->
        </div>
    </section>
    <!-- 翻译者 -->
    <section class="section section-sm">
        <div class="container">
            <h3 class="title-block find-car oh"><span class="d-inline-block wow slideInUp">Translator</span></h3>
            <div class="row row-30 justify-content-center box-ordered">
                <div class="col-sm-6 col-md-5 col-lg-3">
                    <!-- Team Modern-->
                    <article class="team-modern">
                        <div class="team-modern-header"><a class="team-modern-figure" href="/SearchTranslator?title=许渊冲"><img class="img-circles" src="/static/images/translator/许渊冲.jpg" alt="" width="118" height="118"/></a>
                            <svg x="0px" y="0px" width="270px" height="70px" viewbox="0 0 270 70" enable-background="new 0 0 270 70" xml:space="preserve">
                    <g>
                        <path fill="#161616" d="M202.085,0C193.477,28.912,166.708,50,135,50S76.523,28.912,67.915,0H0v70h270V0H202.085z"></path>
                    </g>
                  </svg>
                        </div>
                        <div class="team-modern-caption">
                            <h6 class="team-modern-name"><a href="/SearchTranslator?title=许渊冲">许渊冲</a></h6>
                            <p class="team-modern-status">学者、文学家、语言学家、发明家</p>
                            <p>译文：《诗经》《楚辞》《李白诗选》</p>
                        </div>
                    </article>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-3">
                    <!-- Team Modern-->
                    <article class="team-modern">
                        <div class="team-modern-header"><a class="team-modern-figure" href="/SearchTranslator?title=林语堂"><img class="img-circles" src="/static/images/translator/林语堂.jpg" alt="" width="118" height="118"/></a>
                            <svg x="0px" y="0px" width="270px" height="70px" viewbox="0 0 270 70" enable-background="new 0 0 270 70" xml:space="preserve">
                    <g>
                        <path fill="#161616" d="M202.085,0C193.477,28.912,166.708,50,135,50S76.523,28.912,67.915,0H0v70h270V0H202.085z"></path>
                    </g>
                  </svg>
                        </div>
                        <div class="team-modern-caption">
                            <h6 class="team-modern-name"><a href="/SearchTranslator?title=林语堂">林语堂</a></h6>
                            <p class="team-modern-status">中国现代著名作家、学者、翻译家</p>
                            <p>译文：《浮生六记》《兰亭集序》</p>
                        </div>
                    </article>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-3">
                    <!-- Team Modern-->
                    <article class="team-modern">
                        <div class="team-modern-header"><a class="team-modern-figure" href="/SearchTranslator?title=杨宪益"><img class="img-circles" src="/static/images/translator/杨宪益.jpg" alt="" width="118" height="118"/></a>
                            <svg x="0px" y="0px" width="270px" height="70px" viewbox="0 0 270 70" enable-background="new 0 0 270 70" xml:space="preserve">
                    <g>
                        <path fill="#161616" d="M202.085,0C193.477,28.912,166.708,50,135,50S76.523,28.912,67.915,0H0v70h270V0H202.085z"></path>
                    </g>
                  </svg>
                        </div>
                        <div class="team-modern-caption">
                            <h6 class="team-modern-name"><a href="/SearchTranslator?title=杨宪益">杨宪益</a></h6>
                            <p class="team-modern-status">中国著名翻译家、外国文学研究专家、诗人</p>
                            <p>译文：《红楼梦》《儒林外史》</p>
                        </div>
                    </article>
                </div>
                <div class="col-sm-6 col-md-5 col-lg-3">
                    <!-- Team Modern-->
                    <article class="team-modern">
                        <div class="team-modern-header"><a class="team-modern-figure" href="/SearchTranslator?title=大卫霍克思"><img class="img-circles" src="/static/images/translator/大卫霍克思.jpg" alt="" width="118" height="118"/></a>
                            <svg x="0px" y="0px" width="270px" height="70px" viewbox="0 0 270 70" enable-background="new 0 0 270 70" xml:space="preserve">
                    <g>
                        <path fill="#161616" d="M202.085,0C193.477,28.912,166.708,50,135,50S76.523,28.912,67.915,0H0v70h270V0H202.085z"></path>
                    </g>
                  </svg>
                        </div>
                        <div class="team-modern-caption">
                            <h6 class="team-modern-name"><a href="/SearchTranslator?title=大卫霍克思">大卫霍克思</a></h6>
                            <p class="team-modern-status">著名的汉学家、国际著名翻译家</p>
                            <p>译文：《红楼梦》</p>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </section>
    <!-- 分类 -->
    <section class="section section-sm">
        <div class="container">
            <h3>Our Services</h3>
            <div class="row row-30">
                <div class="col-sm-6 col-lg-4" >
                    <article class="box-icon-classic">
                        <div class="unit box-icon-classic-body flex-column flex-md-row text-md-left flex-lg-column text-lg-center flex-xl-row text-xl-left">
                            <div class="unit-left">
                                <div class="box-icon-classic-icon fl-bigmug-line-circular220"></div>
                            </div>
                            <div class="unit-body">
                                <h5 class="box-icon-classic-title"><a href="/Classics">Classics</a></h5>
                                <p class="box-icon-classic-text">We provide a large number of original and English translations of ancient classics,classics live forever.</p>
                            </div>
                        </div>
                    </article>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <article class="box-icon-classic">
                        <div class="unit box-icon-classic-body flex-column flex-md-row text-md-left flex-lg-column text-lg-center flex-xl-row text-xl-left">
                            <div class="unit-left">
                                <div class="box-icon-classic-icon fl-bigmug-line-hot67"></div>
                            </div>
                            <div class="unit-body">
                                <h5 class="box-icon-classic-title"><a href="/Periodical">Periodical</a></h5>
                                <p class="box-icon-classic-text">We provide the hottest papers on translating ancient classics to teach you more translation skills.</p>
                            </div>
                        </div>
                    </article>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <article class="box-icon-classic">
                        <div class="unit box-icon-classic-body flex-column flex-md-row text-md-left flex-lg-column text-lg-center flex-xl-row text-xl-left">
                            <div class="unit-left">
                                <div class="box-icon-classic-icon fl-bigmug-line-paintbrush9"></div>
                            </div>
                            <div class="unit-body">
                                <h5 class="box-icon-classic-title"><a href="#">Poetry</a></h5>
                                <p class="box-icon-classic-text">Provide a more comprehensive English translation of ancient poetry, looking at ancient poetry in another form.</p>
                            </div>
                        </div>
                    </article>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <article class="box-icon-classic">
                        <div class="unit box-icon-classic-body flex-column flex-md-row text-md-left flex-lg-column text-lg-center flex-xl-row text-xl-left">
                            <div class="unit-left">
                                <div class="box-icon-classic-icon fl-bigmug-line-cube29"></div>
                            </div>
                            <div class="unit-body">
                                <h5 class="box-icon-classic-title"><a href="/Terminology">Culture-loaded words</a></h5>
                                <p class="box-icon-classic-text">You can learn more cultural load words here and understand the cultural differences between China and foreign countries.</p>
                            </div>
                        </div>
                    </article>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <article class="box-icon-classic">
                        <div class="unit box-icon-classic-body flex-column flex-md-row text-md-left flex-lg-column text-lg-center flex-xl-row text-xl-left">
                            <div class="unit-left">
                                <div class="box-icon-classic-icon fl-bigmug-line-weather21"></div>
                            </div>
                            <div class="unit-body">
                                <h5 class="box-icon-classic-title"><a href="/Classics">One sentence a day</a></h5>
                                <p class="box-icon-classic-text">Recommend a few short sentences in Chinese and English every day and remember famous quotes at any time.</p>
                            </div>
                        </div>
                    </article>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <article class="box-icon-classic">
                        <div class="unit box-icon-classic-body flex-column flex-md-row text-md-left flex-lg-column text-lg-center flex-xl-row text-xl-left">
                            <div class="unit-left">
                                <div class="box-icon-classic-icon fl-bigmug-line-bookmark28"></div>
                            </div>
                            <div class="unit-body">
                                <h5 class="box-icon-classic-title"><a href="/About">Join us</a></h5>
                                <p class="box-icon-classic-text">Spread Chinese culture together and let the world know about China.</p>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </section>
    <!-- Hot list-->
    <section class="section section-sm bg-default">
        <div class="container">
            <h3 class="oh-desktop"><span class="d-inline-block wow slideInDown">Hot List</span></h3>
            <div class="row row-sm row-40 row-md-50">
                <div class="col-sm-6 col-md-12 wow fadeInRight">

                    <article class="product-big">
                        <div class="unit flex-column flex-md-row align-items-md-stretch">
                            <div class="unit-left"><a class="product-big-figure" href="/classics/book/唐诗三百首"><img src="https://s1.ax1x.com/2023/07/21/pCbP8sS.png" alt="" width="600" height="366" /></a></div>
                            <div class="unit-body">
                                <div class="product-big-body">
                                    <h5 class="product-big-title"><a href="/classics/book/唐诗三百首">唐诗三百首</a></h5>
                                    <div class="group-sm group-middle justify-content-start">
                                        <div class="product-big-rating"><span class="icon material-icons-star"></span><span class="icon material-icons-star"></span><span class="icon material-icons-star"></span><span class="icon material-icons-star"></span><span class="icon material-icons-star_half"></span></div>
                                        <a class="product-big-reviews">Rave reviews</a>
                                    </div>
                                    <p class="product-big-text">《唐诗三百首》是清代蘅塘退士孙洙编选的唐诗选集，成书于乾隆二十九年（1764）。此书共八卷（或作六卷），选诗三百一十首，后四藤吟社本又增补杜甫《咏怀古迹》三首。全书收录了七十七家诗，基本上按五言古诗、七言古诗、五言律诗、七言律诗、五言绝句、七言绝句、乐府等诗体编排，所选多为描写生活琐事、个人情怀之作，反映了唐代社会生活风貌，其中有不少是唐诗中的名篇。原书有注释，专注典故；还有评点，指点作法，说明作意，品评工拙。</p>
                                    <a class="button button-black-outline button-ujarak" href="/classics/book/唐诗三百首">more</a>
                                    <div class="product-big-price-wrap"><span class="product-big-price">TOP 1</span></div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>
                <div class="col-sm-6 col-md-12 wow fadeInLeft">
                    <!-- Product Big-->
                    <article class="product-big">
                        <div class="unit flex-column flex-md-row align-items-md-stretch">
                            <div class="unit-left"><a class="product-big-figure" href="/classics/book/宋词三百首"><img src="https://s1.ax1x.com/2023/07/23/pCq4SZF.png" alt="" width="600" height="366"/></a></div>
                            <div class="unit-body">
                                <div class="product-big-body">
                                    <h5 class="product-big-title"><a href="/classics/book/宋词三百首">宋词三百首</a></h5>
                                    <div class="group-sm group-middle justify-content-start">
                                        <div class="product-big-rating"><span class="icon material-icons-star"></span><span class="icon material-icons-star"></span><span class="icon material-icons-star"></span><span class="icon material-icons-star"></span><span class="icon material-icons-star_half"></span></div>
                                        <a class="product-big-reviews" >Rave reviews</a>
                                    </div>
                                    <p class="product-big-text">《宋词三百首》为词学大师朱孝臧（又号彊村）选编，是流传最广的、影响最大的宋词选本。初版于民国甲子年(1924年），录词人88家词300首，后唐圭璋笺注本）(1934年）删词人6家词28首，另增11首，只存词283首，后又增补2首，共为285首。本书提供了三个版本为《宋词三百首》之全本！宋词的发展，经历了以晏殊、欧阳修为领袖的北宋时期，以苏轼为代表的南宋时期。风格流派以婉约、豪放二派为主。婉约派的“寻寻觅觅，冷冷清清，凄凄惨惨戚戚”使人莫名的惆怅；豪放派的“想当年，金戈铁马，气吞万里如虎”、“莫等闲，白了少年头，空悲切”令人何等的激昂！</p>
                                    <a class="button button-black-outline button-ujarak" href="/classics/book/宋词三百首">more</a>
                                    <div class="product-big-price-wrap"><span class="product-big-price">TOP 2</span></div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>
                <div class="col-sm-6 col-md-12 wow fadeInRight">
                    <!-- Product Big-->
                    <article class="product-big">
                        <div class="unit flex-column flex-md-row align-items-md-stretch">
                            <div class="unit-left"><a class="product-big-figure" href="/classics/book/道德经"><img src="https://s1.ax1x.com/2023/07/23/pCqhxqU.png" alt="" width="600" height="366" style="height: 800px;width: 500px;"/></a></div>
                            <div class="unit-body">
                                <div class="product-big-body">
                                    <h5 class="product-big-title"><a href="/classics/book/道德经">道德经</a></h5>
                                    <div class="group-sm group-middle justify-content-start">
                                        <div class="product-big-rating"><span class="icon material-icons-star"></span><span class="icon material-icons-star"></span><span class="icon material-icons-star"></span><span class="icon material-icons-star"></span><span class="icon material-icons-star_half"></span></div>
                                        <a class="product-big-reviews">Rave reviews</a>
                                    </div>
                                    <p class="product-big-text">《道德经》，春秋时期老子所著的哲学作品，又称《道德真经》《老子》《五千言》《老子五千文》，是中国古代先秦诸子分家前的一部著作，是道家哲学思想的重要来源。道德经分上下两篇，原文上篇《德经》、下篇《道经》，不分章，后改为《道经》37章在前，第38章之后为《德经》，并分为81章。
                                        《道德经》文本以哲学意义之“道德”为纲宗，论述修身、治国、用兵、养生之道，而多以政治为旨归，乃所谓“内圣外王”之学，文意深奥，包涵广博，被誉为万经之王。
                                        《道德经》是中国历史上最伟大的名著之一，对传统哲学、科学、政治、宗教等产生了深刻影响。据联合国教科文组织统计，《道德经》是除了《圣经》以外被译成外国文字发布量最多的文化名著。</p>
                                    <a class="button button-black-outline button-ujarak" href="/classics/book/道德经">more</a>
                                    <div class="product-big-price-wrap"><span class="product-big-price">TOP 3</span></div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </section>

    <!-- 小图片 -->
    <section class="section section-sm section-top-0 section-fluid section-relative bg-gray-4">
        <div class="container-fluid">
            <h6 class="gallery-title">Card</h6>
            <!-- Owl Carousel-->
            <div class="owl-carousel owl-classic owl-dots-secondary" data-items="1" data-sm-items="2" data-md-items="3" data-lg-items="4" data-xl-items="5" data-xxl-items="6" data-stage-padding="15" data-xxl-stage-padding="0" data-margin="30" data-autoplay="true" data-nav="true" data-dots="true">
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img src="/static/images/javaweb/209727176565568377.jpg" alt="" width="270" height="195"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/209727176565568377.jpg" data-lightgallery="item"><img src="images/gallery-image-1-270x195.jpg" alt="" width="270" height="195"/></a>
                    </div>
                </article>
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img src="/static/images/javaweb/1670328227868160603.jpg" alt="" width="270" height="195"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/1670328227868160603.jpg" data-lightgallery="item"><img src="images/gallery-image-2-270x195.jpg" alt="" width="270" height="195"/></a>
                    </div>
                </article>
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img src="/static/images/javaweb/1993508581312646088.jpg" alt="" width="270" height="195"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/1993508581312646088.jpg" data-lightgallery="item"><img src="images/gallery-image-3-270x195.jpg" alt="" width="270" height="195"/></a>
                    </div>
                </article>
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img src="/static/images/javaweb/4293083169801914043.jpg" alt="" width="270" height="195"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/4293083169801914043.jpg" data-lightgallery="item"><img src="images/gallery-image-4-270x195.jpg" alt="" width="270" height="195"/></a>
                    </div>
                </article>
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img src="/static/images/javaweb/5333374090701720349.jpg" alt="" width="270" height="195"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/5333374090701720349.jpg" data-lightgallery="item"><img src="images/gallery-image-5-270x195.jpg" alt="" width="270" height="195"/></a>
                    </div>
                </article>
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img src="/static/images/javaweb/6178126235574319795.jpg" alt="" width="270" height="195"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/6178126235574319795.jpg" data-lightgallery="item"><img src="images/gallery-image-6-270x195.jpg" alt="" width="270" height="195"/></a>
                    </div>
                </article>
                <!-- Thumbnail Classic-->
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img src="/static/images/javaweb/6666886865163666060.jpg" alt="" width="270" height="195"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/6666886865163666060.jpg" data-lightgallery="item"><img src="images/gallery-image-7-270x195.jpg" alt="" width="270" height="195"/></a>
                    </div>
                </article>
                <article class="thumbnail thumbnail-mary">
                    <div class="thumbnail-mary-figure"><img src="/static/images/javaweb/8393658315247169737.jpg" alt="" width="270" height="195"/>
                    </div>
                    <div class="thumbnail-mary-caption"><a class="icon fl-bigmug-line-zoom60" href="/static/images/javaweb/8393658315247169737.jpg" data-lightgallery="item"><img src="images/gallery-image-7-270x195.jpg" alt="" width="270" height="195"/></a>
                    </div>
                </article>
            </div>
        </div>
    </section>
    <%@include file="../pages/PageFooter.jsp"%>
</div>
<!-- Global Mailform Output-->
<div class="snackbars" id="form-output-global"></div>
<!-- Javascript-->
<script src="/static/js/core.min.js"></script>
<script src="/static/js/script.js"></script>
<script>
    var arr = document.getElementsByClassName("rd-nav-item");
    arr[0].classList.add("active")
</script>
</body>
</html>