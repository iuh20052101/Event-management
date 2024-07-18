<?php
require_once 'qr/vendor/autoload.php';

use Endroid\QrCode\Builder\Builder;
use Endroid\QrCode\Writer\PngWriter;

$qrDir = 'qrcode/';
if (!file_exists($qrDir)) {
    mkdir($qrDir, 0777, true);
}

include "view/search.php";
?>

<!-- Main content -->
<form action="index.php?act=huy_ve" method="post">
<section class="container">
    <div class="order-container">
        <?php
        // Kiểm tra xem biến $load_ve có tồn tại hay không
        if (isset($load_ve) && !empty($load_ve)) {
            // Display the list of purchased tickets
            echo "<h2>DANH SÁCH VÉ ĐÃ MUA</h2>";
            foreach ($load_ve as $ve) {
                extract($ve);

                // Set the status and style based on $trang_thai
                switch ($trang_thai) {
                    case 1:
                        $thong_bao = 'Đã thanh toán';
                        $huy_ve_style = '';
                        break;
                    case 2:
                        $thong_bao = 'Đã sử dụng';
                        $huy_ve_style = 'style="display:none;"';
                        break;
                    case 3:
                        $thong_bao = 'Đã hủy';
                        $huy_ve_style = 'style="display:none;"';
                        break;
                    case 4:
                        $thong_bao = 'Hết hạn';
                        $huy_ve_style = 'style="display:none;"';
                        break;
                    default:
                        $thong_bao = 'Trạng thái không xác định';
                        $huy_ve_style = '';
                }

                // Generate QR code for the ticket
                $qrtext = "Mã vé: $id\nTên sự kiện: $tieu_de\nNgày chiếu: $ngay_chieu\nGiờ chiếu: $thoi_gian_chieu\nRạp: TIAM EVENTS\nPhòng: $tenphong\nNgười đặt: $name\nThời gian đặt: $ngay_dat\nGiá: " . number_format($price) . " vnđ\nGhế: $ghe\nCombo: $combo";
                $timestamp = time();
                $qrimage = $qrDir . 'ticket-' . $id . '-' . $timestamp . '.png';

                // Create QR code
                $result = Builder::create()
                    ->writer(new PngWriter())
                    ->data($qrtext)
                    ->build();

                // Save QR code to file
                $result->saveToFile($qrimage);

                $linkct = "index.php?act=ctve&id=".$id;

                // Display ticket with QR code
                echo '<div class="ticket">
                        <div class="ticket-position">
                            <div class="ticket__indecator indecator--pre"><div class="indecator-text pre--text">TIAM EVENTS</div></div>
                            <div class="ticket__inner">
                                <div class="ticket-secondary">
                                    <span class="ticket__item">Mã vé <strong class="ticket__number">' . htmlspecialchars($id) . '</strong></span>
                                    <span class="ticket__item ticket__date">Ngày: ' . htmlspecialchars($ngay_chieu) . '</span>
                                    <span class="ticket__item ticket__time">Giờ: ' . htmlspecialchars($thoi_gian_chieu) . '</span>
                                    <span class="ticket__item">Rạp : <span class="ticket__cinema">TIAM EVENTS</span></span>
                                    <span class="ticket__item">Phòng : <strong class="ticket__number">' . htmlspecialchars($tenphong) . '</strong></span>
                                    <span class="ticket__item">Người đặt: <span class="ticket__cinema">' . htmlspecialchars($name) . '</span></span>
                                    <span class="ticket__item">Thời gian đặt: <span class="ticket__hall">' . htmlspecialchars($ngay_dat) . '</span></span>
                                    <span class="ticket__item ticket__price" style="margin-top: 5px">Giá: <strong class="ticket__cost">' . number_format($price) . ' vnđ</strong></span>
                                </div>
                                <div class="i0">
                                <div class="ticket-primery">
                                    <span class="ticket__item ticket__item--primery ticket__film" style="display:flex;"> <strong class="ticket__movie" >SỰ KIỆN : ' . htmlspecialchars($tieu_de) . '</strong></span>
                                    <span class="ticket__item ticket__item--primery">Ghế: <span class="ticket__place">' . htmlspecialchars($ghe) . '</span></span>
                                    <span class="ticket__item ticket__item--primery">Combo: <span class="ticket__place">' . htmlspecialchars($combo) . '</span></span>
                                </div>
                                <div class="qr-code">
                                <img src="'.htmlspecialchars($qrimage).'" alt="QR Code" class="qr-code-img">
                                </div>

                                </div>
                            </div>
                            <div class="ticket__indecator indecator--post"><div class="indecator-text post--text">TIAM EVENTS</div></div>
                        </div>
                        <div>
                        <a href="'.$linkct.'"><input type="button" value="Chi tiết vé" ></a>
                        <span>Trạng thái : '.$thong_bao.'</span>
                        </div>
                       
                    </div>';
            }
        }
        ?>
    </div>
</section>
</form>

<style>
    .qr-code-img {
        width: 100px;
        height: 100px;
    }
    .i0{
        display: flex;

    }
   
</style>
