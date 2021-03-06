<?php echo $header; ?>
<div class="row">
	<?php echo $column_left; ?>
	<div class="col-sm-<?php $span = trim($column_left) ? 9 : 12; $span = trim($column_right) ? $span - 3 : $span; echo $span; ?>">
		<?php include(DIR_TEMPLATE . 'default/template/common/template-heading.tpl'); ?>
		<form class="form-horizontal" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
			<fieldset>
				<legend><?php echo $text_edit_address; ?></legend>
				<div class="form-group">
					<label class="control-label col-sm-3" for="firstname"><b class="required">*</b> <?php echo $entry_firstname; ?></label>
					<div class="col-sm-6">
						<input type="text" name="firstname" value="<?php echo $firstname; ?>" class="form-control" autofocus="" id="firstname">
						<?php if ($error_firstname) { ?>
						<span class="help-block error"><?php echo $error_firstname; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="lastname"><b class="required">*</b> <?php echo $entry_lastname; ?></label>
					<div class="col-sm-6">
						<input type="text" name="lastname" value="<?php echo $lastname; ?>" class="form-control" id="lastname">
						<?php if ($error_lastname) { ?>
						<span class="help-block error"><?php echo $error_lastname; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="company"><?php echo $entry_company; ?></label>
					<div class="col-sm-6">
						<input type="text" name="company" value="<?php echo $company; ?>" class="form-control" id="company">
					</div>
				</div>
				<div class="form-group" style="display: <?php echo ($company_id_display ? 'block' : 'none'); ?>;">
					<label class="control-label col-sm-3" for="company_id"><?php echo $entry_company_id; ?></label>
					<div class="col-sm-6">
						<input type="text" name="company_id" value="<?php echo $company_id; ?>" class="form-control" id="company_id">
						<?php if ($error_company_id) { ?>
						<span class="help-block error"><?php echo $error_company_id; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="form-group" style="display: <?php echo ($tax_id_display ? 'block' : 'none'); ?>;">
					<label class="control-label col-sm-3" for="tax_id"><?php echo $entry_tax_id; ?></label>
					<div class="col-sm-6">
						<input type="text" name="tax_id" value="<?php echo $tax_id; ?>" class="form-control" id="tax_id">
						<?php if ($error_tax_id) { ?>
						<span class="help-block error"><?php echo $error_tax_id; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="address_1"><b class="required">*</b> <?php echo $entry_address_1; ?></label>
					<div class="col-sm-6">
						<input type="text" name="address_1" value="<?php echo $address_1; ?>" class="form-control" id="address_1">
						<?php if ($error_address_1) { ?>
						<span class="help-block error"><?php echo $error_address_1; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="address_2"><?php echo $entry_address_2; ?></label>
					<div class="col-sm-6">
						<input type="text" name="address_2" value="<?php echo $address_2; ?>" class="form-control" id="address_2">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="city"><b class="required">*</b> <?php echo $entry_city; ?></label>
					<div class="col-sm-6">
						<input type="text" name="city" value="<?php echo $city; ?>" class="form-control" id="city">
						<?php if ($error_city) { ?>
						<span class="help-block error"><?php echo $error_city; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3" for="postcode"><b id="postcode-required" class="required">*</b> <?php echo $entry_postcode; ?></label>
					<div class="col-sm-6">
						<input type="text" name="postcode" value="<?php echo $postcode; ?>" class="form-control" id="postcode">
						<?php if ($error_postcode) { ?>
						<span class="help-block error"><?php echo $error_postcode; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"><b class="required">*</b> <?php echo $entry_country; ?></label>
					<div class="col-sm-6">
						<select name="country_id" class="form-control" data-param="<?php echo htmlentities('{"zone_id":"' . $zone_id . '","select":"' . $text_select . '","none":"' . $text_none . '"}'); ?>">
							<option value=""><?php echo $text_select; ?></option>
							<?php foreach ($countries as $country) { ?>
							<?php if ($country['country_id'] == $country_id) { ?>
							<option value="<?php echo $country['country_id']; ?>" selected=""><?php echo $country['name']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
						<?php if ($error_country) { ?>
						<span class="help-block error"><?php echo $error_country; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"><b class="required">*</b> <?php echo $entry_zone; ?></label>
					<div class="col-sm-6">
						<select name="zone_id" class="form-control"></select>
						<?php if ($error_zone) { ?>
						<span class="help-block error"><?php echo $error_zone; ?></span>
						<?php } ?>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-3"><?php echo $entry_default; ?></label>
					<div class="col-sm-6">
						<?php if ($default) { ?>
							<label class="radio-inline"><input type="radio" name="default" value="1" checked=""> <?php echo $text_yes; ?></label>
							<label class="radio-inline"><input type="radio" name="default" value="0"> <?php echo $text_no; ?></label>
						<?php } else { ?>
							<label class="radio-inline"><input type="radio" name="default" value="1"> <?php echo $text_yes; ?></label>
							<label class="radio-inline"><input type="radio" name="default" value="0" checked=""> <?php echo $text_no; ?></label>
						<?php } ?>
					</div>
				</div>
				<?php include(DIR_TEMPLATE . 'default/template/common/template-form-actions.tpl'); ?>
			</fieldset>
		</form>
		<?php echo $content_bottom; ?>
	</div>
	<?php echo $column_right; ?>
</div>
<?php echo $footer; ?>