<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Marvel Characters</title>
    <link rel="stylesheet" href="../css/introduce_characters.css">
    <link rel="stylesheet" href="../css/common.css">
    <!-- 애니메이트 -->
    <link rel="stylesheet" href="../library/animate/animate.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/>
</head>
<body>
    <!-- 헤더창 -->
    <header class="header">
        <div class="header_nav">
            <h1>
                <a href="../index.html">
                    <img src="../img/Marvel_Logo.png"  alt="logo">
                </a>
            </h1>
            <!-- 모바일 로그인 -->
            <div class="menu_Mlogin">
                  <a href="./login.html">SIGN IN | JOIN</a>
            </div>
            <!-- 메뉴박스 -->
            <div class="menu">
                <nav>
                    <ul class="menu_main">
                        <li class="main_list">
                            <a>UNIVERSE</a>
                            <div>
                                <ul class="list_drop animate_animated animate_fadeIn">
                                    <li><a href="./worldview.html">WORLDVIEW</a></li>
                                    <li><a>CINEMATIC</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="main_list">
                            <a href="./introduce_characters.html">CHARACTERS</a>
                            <div>
                                <ul class="list_drop animate_animated animate_fadeIn">
                                    <li><a href="./introduce_characters.html">ALL CHARACTERS</a></li>
                                    <li><a href="./introduce_characters.html">TEAMS & GROUPS</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="main_list">
                            <a href="./news.html">NEWS</a>
                            <div>
                                <ul class="list_drop animate_animated animate_fadeIn">
                                    <li><a href="./news.html">NEWS</a></li>
                                    <li><a href="./goods.html">STORE</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="main_list">
                            <a href="./marvel_movieClip.html">MOVIES</a>
                            <div>
                                <ul class="list_drop animate_animated animate_fadeIn">
                                    <li><a href="./UpcomingFilms.html">RELEASE</a></li>
                                    <li><a href="./marvel_movieClip.html">MOVIE CLIP</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </nav>
            </div>
            <!-- 로그인박스 -->
            <div class="menu_login">
                    <a href="./login.html">SIGN IN | JOIN</a>
            </div>
        </div>
        <div class="header_panel"></div>
    </header>
        
    
    <main class="wrap">
    <!-- 프로모션 컨텐츠 -->
            <section>
                <div class="promo_content">
                    <a class="promo_content_btn">REWARD YOUR MARVEL FANDOM WITH INSIDER</a>
                </div>
            </section>
            <!-- 첫화면 -->
            <section>
                <div class="background_photo">
                    <div>
                        <img src="../img/backgroundimage.png"    alt="background_image" >
                    </div>
                    <div class="background_write">
                        <h1 id="background_write_h1">MARVEL CHARACTERS</h1>
                        <h2 id="background_write_h2">Get hooked on a hearty helping of heroes and villains from the humble House of Ideas!</h2>
                    </div>
                </div>
            </section>
            <!-- 광고 -->
            <section class="advertise">
                <div class="advertis_box">
                    <a href="https://www.marvel.com/unlimited?cid=dsp_housead_20210909_unlimited_launchads">
                    <img src="https://tpc.googlesyndication.com/simgad/13295404199721664793" alt="광고">
                    </a>
                </div>
            </section>
            <!-- 캐릭터 사진  -->
            <section class="introduce_characters">
                <div class="featured_characters_title">
                    <h1>CHARACTERS</h1>
                </div>
                <!--  영역 만들기 -->
                <div class="featured_characters_image">
                    <div class="border">
                        <div class="featured_characters_movie_title">
                            <h2>Doctor Strange in the Multiverse of Madness</h2>
                        </div>                
                    </div>
                    <ul class="featured_characters_sixhero">
                        <li>
                            <a href=""><img src="../img/characters1.png"   alt="doctor_strange"></a>
                            <div class="info">
                                <h3>DOCTOR STRANGE</h3>
                                <P>STEPHEN STRANGE</P>
                            </div>
                        </li>
                        <li>
                            <a href=""><img src="../img/characters2.png"  alt="wanda"></a>
                            <div class="info">
                                <h3>WANDA MAXIMOFF</h3>
                                <P></P>
                            </div>
                        </li>
                        <li>
                            <a href=""><img src="../img/characters3.png"  alt="wang"></a>
                            <div class="info">
                                <h3>WONG</h3>
                                <P>SORCERER SUPREME</P>
                            </div>
                        </li>
                        <li>
                            <a href=""><img src="../img/characters4.png"  alt="americachavez"></a>
                            <div class="info">
                                <h3>AMERICA CHAVEZ</h3>
                                <P></P>
                            </div>
                        </li>
                        <li>
                            <a href=""><img src="../img/characters5.png"  alt="baronmordo"></a>
                            <div class="info">
                                <h3>BARON MORDO</h3>
                                <P></P>
                            </div>
                        </li>
                        <li>
                            <a href=""><img src="../img/characters6.png"   alt="christinepalmer"></a>                
                            <div class="info">
                                <h3>CHRISTINE PALMER</h3>
                                <P></P>
                            </div>
                        </li>
                    </ul>
                    <div class="border">
                        <div class="featured_characters_movie_title">
                            <h2>AVENGERS:ENDGAME</h2>
                        </div>
                    </div>
                    <ul class="featured_characters_sixhero">
                        <li>
                            <a href=""><img src="../img/characters7.png"   alt="captainamerica"></a>
                            <div class="info">
                                    <h3>CAPTAIN AMERICA</h3>
                                    <P>STEVE ROGERS</P>
                            </div>
                        </li>
                        <li>
                            <a href=""><img src="../img/characters8.png"  alt="thanos"></a>
                            <div class="info">
                                <h3>THANOS</h3>
                                <P></P>
                            </div>
                        </li>
                        <li>
                            <a href=""><img src="../img/characters9.png"  alt="ironman2"></a>
                            <div class="info">
                                <h3>IRONMAN</h3>
                                <P>TONY STARK</P>
                            </div>
                        </li>
                        <li>
                            <a href=""><img src="../img/characters10.png"  alt="thor"></a>
                            <div class="info">
                                <h3>THOR</h3>
                                <P>GOD OF THUNDER</P>
                            </div>
                        </li>
                        <li>
                            <a href=""><img src="../img/characters11.png"  alt="blackwidow"></a>
                            <div class="info">
                                <h3>BLACK WIDOW</h3>
                                <P>NATALIA ROMANOVA</P>
                            </div>
                        </li>
                        <li>
                            <a href=""><img src="../img/characters12.png"   alt="starllord"></a>                
                            <div class="info">
                                <h3>STAR-LORD</h3>
                                <P>PETER QUILL</P>
                            </div>
                        </li>
                    </ul>    
                </div>
            </section>
            <div class="page">
                <a>&lt;&lt;</a>
                <a>&lt;</a>
                <a>1</a>
                <a>2</a>
                <a>3</a>
                <a>4</a>
                <a>&gt;</a>
                <a>&gt;&gt;</a>
            </div>

    

        <!-- 업다운 버튼 -->
        <div class="fixed_btn">
            <div class="box_updown">
                <a class="btn_up">UP</a>
            </div>
            <div class="box_updown">
                <a class="btn_down">DOWN</a>
            </div>
        </div>
    </main>
    <footer class="footer">
        <div class="footer_area">
            <div class="ft_level1">
                <div>
                    <a href="../index.html">
                        <img src="../img/Marvel_Logo.png" alt="logo">
                    </a>
                </div>
                <div>
                    <ul>
                        <li><a>ABOUT MARVEL</a></li>
                        <li><a>HELP/FAQS</a></li>
                        <li><a>CAREERS</a></li>
                        <li><a>INTERNSHIP</a></li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <li><a>ADVERTISING</a></li>
                        <li><a>DISNEY</a></li>
                        <li><a>MARVELHQ.COM</a></li>
                        <li><a>REDEEM DIGITAL COMICS</a></li>
                    </ul>
                </div>
            </div>
            <div class="ft_level2">
                <nav>
                    <a>Terms of Use</a>
                    <a>Privacy Policy</a>
                    <a>Your California Privacy Rights</a>
                    <a>Do Not Sell My Personal Information</a>
                    <a>Children's Online Privacy Policy</a>
                    <a>License Agreement</a>
                    <a>Interest-Based Ads</a>
                    <a>Marvel Insider Terms</a>
                    <span>©2022 MARVEL</span>
                </nav>
            </div>
        </div>
    </footer>

    <script src="../js/jquery-3.6.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

    <script src="../js/main.js"></script>
    <script src="../js/common.js"></script>
</body>
</html>