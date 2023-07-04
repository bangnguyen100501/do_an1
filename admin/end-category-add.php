<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

    if(empty($_POST['tcat_id'])) {
        $valid = 0;
        $error_message .= "Bạn phải chọn một danh mục PHÂN LOẠI CÁC SẢN PHẨM<br>";
    }

    if(empty($_POST['mcat_id'])) {
        $valid = 0;
        $error_message .= "Bạn phải chọn một danh mục CÁC LOẠI SẢN PHẨM<br>";
    }

    if(empty($_POST['ecat_name'])) {
        $valid = 0;
        $error_message .= "Tên danh mục CÁC SẢN PHẨM không được để trống<br>";
    }

    if($valid == 1) {

		//Saving data into the main table tbl_end_category
		$statement = $pdo->prepare("INSERT INTO tbl_end_category (ecat_name,mcat_id) VALUES (?,?)");
		$statement->execute(array($_POST['ecat_name'],$_POST['mcat_id']));

    	$success_message = 'Danh mục CÁC SẢN PHẨM đã được thêm thành công.';
    }
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Thêm CÁC SẢN PHẨM</h1>
	</div>
	<div class="content-header-right">
		<a href="end-category.php" class="btn btn-primary btn-sm">Xem tất cả</a>
	</div>
</section>


<section class="content">

	<div class="row">
		<div class="col-md-12">

			<?php if($error_message): ?>
			<div class="callout callout-danger">

			<p>
			<?php echo $error_message; ?>
			</p>
			</div>
			<?php endif; ?>

			<?php if($success_message): ?>
			<div class="callout callout-success">

			<p><?php echo $success_message; ?></p>
			</div>
			<?php endif; ?>

			<form class="form-horizontal" action="" method="post">

				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Tên DANH MỤC PHÂN LOẠI CÁC SẢN PHẨM <span>*</span></label>
							<div class="col-sm-4">
								<select name="tcat_id" class="form-control select2 top-cat">
									<option value="">Chọn DANH MỤC PHÂN LOẠI CÁC SẢN PHẨM</option>
									<?php
									$statement = $pdo->prepare("SELECT * FROM tbl_top_category ORDER BY tcat_name ASC");
									$statement->execute();
									$result = $statement->fetchAll(PDO::FETCH_ASSOC);
									foreach ($result as $row) {
										?>
										<option value="<?php echo $row['tcat_id']; ?>"><?php echo $row['tcat_name']; ?></option>
										<?php
									}
									?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Tên DANH MỤC CÁC LOẠI SẢN PHẨM <span>*</span></label>
							<div class="col-sm-4">
								<select name="mcat_id" class="form-control select2 mid-cat">
									<option value="">Chọn DANH MỤC CÁC LOẠI SẢN PHẨM</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Tên DANH MỤC CÁC SẢN PHẨM<span>*</span></label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="ecat_name">
							</div>
						</div>

						<div class="form-group">
							<label for="" class="col-sm-3 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Gửi</button>
							</div>
						</div>
					</div>
				</div>

			</form>


		</div>
	</div>

</section>

<?php require_once('footer.php'); ?>
