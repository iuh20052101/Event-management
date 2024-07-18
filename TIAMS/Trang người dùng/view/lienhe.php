<?php include "view/search.php"?>
<!-- Main content -->
<div class="contact-form-wrapper">
    <h2 class="page-heading heading--outcontainer">Liên hệ </h2>
    <div class="container">
        <div class="col-sm-12 col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-2">
            <form id='contact-form' class="form row" method='post' novalidate="" action="https://amovie.gozha.net/send.php">
                <p class="form__title">Gửi thắc mắc của bạn cho chúng tôi</p>
                <p class="contact__mail">ngocvan7411@gmail.com  -  0328658917</p>
                <span class="contact__mail"></span>
                <span class="contact__tel"></span>
                <div class="col-sm-6">
                    <input type='text' placeholder='Tên của bạn' name='user-name' class="form__name">
                </div>
                <div class="col-sm-6">
                    <input type='email' placeholder='Email của bạn' name='user-email' class="form__mail">
                </div>
                <div class="col-sm-12">
                    <textarea placeholder="Thắc mắc của bạn" name="user-message" class="form__message"></textarea>
                </div>
                <button type="submit" class='btn btn-md btn--danger'>Gửi mail</button>
            </form>
        </div>
    </div>
</div>

