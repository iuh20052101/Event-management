<?php include "banner.php"?>

<section class="container1">
    <h2 id='target' class="page-heading heading--outcontainer">Sự kiện hot nhất</h2><br>
    <div class="movie-best">
        <div class="">
            <?php foreach ($loadphimhot as $hot){
                extract($hot);
                $linkp = "index.php?act=ctphim&id=".$id;
                $hinh = "imgavt/".$img;
                echo '<div class="movie-beta__item">
                        <div class="movie__image-container">
                            <img alt="lỗi" src="'.$hinh.'" width="250" height="300">
                        </div>
                        <span class="best-rate">5.0</span>
                        <ul class="movie-beta__info">
                            <li><span class="best-voted">Đã có '.$tong_so_ve.' vé đã đặt</span></li>
                            <li>
                                <p class="movie__time">'.$thoi_luong_phim.' phút</p>
                                <p>'.$name.'</p>
                            </li>
                            <li class="last-block">
                                <a href="'.$linkp. '" class="slide__link">Chi tiết</a>
                            </li>
                        </ul>
                    </div>';
            } ?>
        </div>
    </div>
    
    <div class="clearfix"></div>
    
    <h2 id='target' class="page-heading heading--outcontainer1">Sự kiện mới nhất</h2>
    
    <div class="col-sm-12">
        <div class="row">
            <section class="container movie-container">
                <?php foreach ($loadphimhome as $phim) {
                    extract($phim);
                    $hinh = "imgavt/".$img;
                    $linkp = "index.php?act=ctphim&id=".$id;
                    echo '<div class="movie movie--test movie--test--dark movie--test--left">
                            <div class="movie__images">
                                <a href="'.$linkp.'" class="movie-beta__link">
                                    <img alt="lỗi" src="'.$hinh.'" width="250" height="350">
                                </a>
                            </div>
                            <div class="movie__info">
                                <p class="movie__title"><a href="'.$linkp.'">'.$tieu_de.'</a></p>
                                <p class="movie__time">Thời Lượng Phim: '.$thoi_luong_phim.' phút</p>
                                <p class="movie__option">Thể Loại: '.$name.'</p>
                                <div class="movie__rate">
                                    <span class="movie__rating">4.9</span>
                                </div>
                            </div>
                        </div>';
                } ?>
            </section>

            <div class="row">
                <div class="social-group">
                    <div class="col-sm-6 col-md-4 col-sm-push-6 col-md-push-4">
                        <div class="social-group__head">À Ố SHOW <br><p style="padding: 5px;font-size: 2vw;"></p></div>
                        <div class="social-group__content">À Ố Show là một một sự kết duyên giữa xiếc và múa đương đại, hoà quyện cùng đạo cụ mây tre trên nền âm sắc của 17 loại nhạc cụ dân tộc và hiện đại. Vở xiếc tre À Ố là một bản hoà âm điền dã của đồng quê Việt pha trộn, cọ sát cùng hợp âm nhộn nhạo trẻ trung rất đời của Việt Nam mùa đô thị hoá. <br class="hidden-xs"><br></div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-sm-pull-6 col-md-pull-4">
                        <div class="facebook-group">
                            <img src="imgavt/ao.jpg" alt="" height="400px" width="340px;">
                        </div>
                    </div>
                    <div class="clearfix visible-sm"></div>
                </div>
            </div>
        </div>
    </div>
    
    <?php include "view/tintuc.php"?>
</section>

<div class="clearfix"></div>
