<footer style="background-color: #81d742 !important;">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h4>GIỚI THIỆU</h4>
				<ul>
					<li>LIÊN HỆ CHO CHÚNG TÔI</li>
					<li><i class="bi bi-mailbox2"></i> ducreal1501@gmail.com</li>
					<li><i class="bi bi-telephone-fill"></i> 0972251830</li>
					<li><i class="bi bi-map-fill"></i> Khoái Châu - Hưng Yên</li>
				</ul>
			</div>
			<div class="col-md-4">
				<h4>SẢN PHẨM MỚI NHẤT</h4>
				<ul>
					<li>SÁCH PHÁT TRIỂN BẢN THÂN</li>
					<li>SÁCH KINH TẾ</li>
					<li>SÁCH HAY</li>
				</ul>
			</div>
		</div>
	</div>
	<div style="background-color: #3f9609; width: 100%; text-align: center; padding: 20px;">
		CẢM ƠN QUÝ ĐỌC GIẢ ĐÃ CHỌN WEBSITE CỦA CHÚNG TÔI !!!
	</div>
</footer>

<?php
if(!isset($_SESSION['cart'])) {
	$_SESSION['cart'] = [];
}
$count = 0;
// var_dump($_SESSION['cart']);
foreach($_SESSION['cart'] as $item) {
	$count += $item['num'];
}
?>
<script type="text/javascript">
	function addCart(productId, num) {
		$.post('api/ajax_request.php', {
			'action': 'cart',
			'id': productId,
			'num': num
		}, function(data) {
			location.reload()
		})
	}
</script>
<!-- Cart start -->
<span class="cart_icon">
	<span class="cart_count"><?=$count?></span>
	<a href="cart.php"><img src="https://gokisoft.com/img/cart.png"></a>
</span>
<!-- Cart stop -->
</body>
</html>