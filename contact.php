<?php 
require_once('layouts/header.php');
// var_dump($_POST);
if(!empty($_POST)) {
	$first_name = getPost('first_name');
	$last_name = getPost('last_name');
	$email = getPost('email');
	$phone_number = getPost('phone');
	$subject_name = getPost('subject_name');
	$note = getPost('note');
	$created_at = $updated_at = date('Y-m-d H:i:s');

	$sql = "insert into FeedBack(firstname, lastname, email, phone_number, subject_name, note, status, created_at, updated_at) values('$first_name', '$last_name', '$email', '$phone_number', '$subject_name', '$note', 0, '$created_at', '$updated_at')";
	// echo $sql;
	execute($sql);
}
?>
<div class="container" style="margin-top: 20px; margin-bottom: 20px;">
	<form method="post">
	<div class="row">
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
					  <input required="true" type="text" class="form-control" id="usr" name="first_name" placeholder="Nhập tên">
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group">
					  <input required="true" type="text" class="form-control" id="usr" name="last_name" placeholder="Nhập họ">
					</div>
				</div>
			</div>
			<div class="form-group">
			  <input required="true" type="email" class="form-control" id="email" name="email" placeholder="Nhập email">
			</div>
			<div class="form-group">
			  <input required="true" type="tel" class="form-control" id="phone" name="phone" placeholder="Nhập sđt">
			</div>
			<div class="form-group">
			  <input required="true" type="text" class="form-control" id="subject_name" name="subject_name" placeholder="Nhập chủ đề">
			</div>
			<div class="form-group">
			  <label for="pwd">Nội dung:</label>
			  <textarea class="form-control" rows="3" name="note"></textarea>
			</div>
			<a href="checkout.php"><button class="btn btn-success" style="border-radius: 0px; font-size: 26px; width: 100%;">GỬI PHẢN HỒI</button></a>
		</div>
	</div>
</form>
</div>
<?php
require_once('layouts/footer.php');
?>