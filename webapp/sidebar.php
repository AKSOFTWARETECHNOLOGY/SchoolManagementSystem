<?php

$user_name=$_SESSION['adminusername'];
$user_id=$_SESSION['adminuserid'];

$school_sql="SELECT si.* FROM `school_info` AS `si`
WHERE `si`.user_id = $user_id";
$school_exe=mysql_query($school_sql);
$school_cnt=@mysql_num_rows($school_exe);
$school_fet=mysql_fetch_array($school_exe);
?>
<div class="sidebar-content">

    <!-- User menu -->
    <div class="sidebar-user">
        <div class="category-content">
            <div class="media">
                <a href="dashboard.php" class="media-left">
                    <img src="<?php echo $school_fet['school_photo']; ?>" alt="<?php echo $school_fet['name_school']; ?>" title="<?php echo $school_fet['name_school']; ?>" class="img-circle img-sm">
                </a>
                <div class="media-body">
                    <span class="media-heading text-semibold">School Admin</span>
                    <div class="text-size-mini text-muted">
                        <?php echo $user_name; ?>
                    </div>
                </div>

                <div class="media-right media-middle">
                    <ul class="icons-list">
                        <li>
                            <a href="logout.php"><i class="fa fa-sign-out"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- /user menu -->

    <!-- Main navigation -->
    <div class="sidebar-category sidebar-category-visible">
        <div class="category-content no-padding">
            <ul class="navigation navigation-main navigation-accordion">

                <!-- Main -->
                <li class="active">
                    <a href="dashboard.php"><i class="fa fa-desktop"></i> <span>Dashboard</span></a>
                </li>
                <!-- /Main -->
                <li>
                    <a href="index.htm#"><i class="fa fa-users"></i> <span>Staff</span></a>
                    <ul>
                        <li><a href="staff.php"><i class="fa fa-users"></i> <span>Staff List</span></a></li>
                        <li><a href="add-staff.php"><i class="fa fa-user-plus"></i> <span>Add Staff</span></a></li>
                        <li><a href="import-staff.php"><i class="fa fa-user-plus"></i> <span>Import Staff</span></a></li>
                    </ul>
                </li>

                <li>
                    <a href="index.htm#"><i class="fa fa-users"></i> <span>Student</span></a>
                    <ul>
                        <li><a href="student.php"><i class="fa fa-users"></i> <span>Student List</span></a></li>
                        <li><a href="add-student.php"><i class="fa fa-user-plus"></i> <span>Add Student</span></a></li>
                        <li><a href="import-student.php"><i class="fa fa-user-plus"></i> <span>Import Student</span></a></li>

                    </ul>
                </li>

                <li>
                    <a href="index.htm#"><i class="fa fa-users"></i> <span>Class</span></a>
                    <ul>
                        <li><a href="class.php"><i class="fa fa-users"></i> <span>Class List</span></a></li>
                        <li><a href="add-class.php"><i class="fa fa-user-plus"></i> <span>Add Class</span></a></li>
                    </ul>
                </li>

                <li>
                    <a href="index.htm#"><i class="fa fa-users"></i> <span>Message</span></a>
                    <ul>
                        <li><a href="sms.php"><i class="fa fa-users"></i> <span>SMS</span></a></li>
                        <li><a href="email.php"><i class="fa fa-user-plus"></i> <span>Email</span></a></li>
                        <li><a href="group-sms.php"><i class="fa fa-user-plus"></i> <span>Group SMS</span></a></li>
                    </ul>
                </li>

                <li>
                    <a href="index.htm#"><i class="fa fa-users"></i> <span>Groups</span></a>
                    <ul>
                        <li><a href="staff-group-list.php"><i class="fa fa-users"></i> <span>Staff Group</span></a></li>
                        <li><a href="student-group-list.php"><i class="fa fa-user-plus"></i> <span>Student Group</span></a></li>
                    </ul>
                </li>

                <li>
                    <a href="index.htm#"><i class="fa fa-users"></i> <span>Profile</span></a>
                    <ul>
                        <li><a href="user-profile.php"><i class="fa fa-users"></i> <span>My Profile</span></a></li>
                        <li><a href="change-password.php"><i class="fa fa-user-plus"></i> <span>Change Password</span></a></li>
                        <li><a href="logout.php"><i class="fa fa-user-plus"></i> <span>Logout</span></a></li>
                    </ul>
                </li>

                <?php /* ?>
                <li class="navigation-header"><span>Staff</span> <i class="fa fa-bars" title="Content"></i></li>
                <li><a href="staff.php"><i class="fa fa-users"></i> <span>Staff List</span></a></li>
                <li><a href="add-staff.php"><i class="fa fa-user-plus"></i> <span>Add Staff</span></a></li>
                <li><a href="import-staff.php"><i class="fa fa-user-plus"></i> <span>Import Staff</span></a></li>

                <li class="navigation-header"><span>Student</span> <i class="fa fa-bars" title="Content"></i></li>
                <li><a href="student.php"><i class="fa fa-users"></i> <span>Student List</span></a></li>
                <li><a href="add-student.php"><i class="fa fa-user-plus"></i> <span>Add Student</span></a></li>
                <li><a href="import-student.php"><i class="fa fa-user-plus"></i> <span>Import Student</span></a></li>

                <li class="navigation-header"><span>Class</span> <i class="fa fa-bars" title="Content"></i></li>
                <li><a href="class.php"><i class="fa fa-users"></i> <span>Class List</span></a></li>
                <li><a href="add-class.php"><i class="fa fa-user-plus"></i> <span>Add Class</span></a></li>

                <li class="navigation-header"><span>Message</span> <i class="fa fa-bars" title="Content"></i></li>
                <li><a href="sms.php"><i class="fa fa-users"></i> <span>SMS</span></a></li>
                <li><a href="email.php"><i class="fa fa-user-plus"></i> <span>Email</span></a></li>
                <li><a href="group-sms.php"><i class="fa fa-user-plus"></i> <span>Group SMS</span></a></li>

                <li class="navigation-header"><span>Profile</span> <i class="fa fa-bars" title="Content"></i></li>
                <li><a href="user-profile.php"><i class="fa fa-users"></i> <span>My Profile</span></a></li>
                <li><a href="change-password.php"><i class="fa fa-user-plus"></i> <span>Change Password</span></a></li>
                <li><a href="logout.php"><i class="fa fa-user-plus"></i> <span>Logout</span></a></li>
                <?php */ ?>
            </ul>
        </div>
    </div>
    <!-- /main navigation -->

</div>

<?php /* * / ?>

 <div class="sidebar-content">

		<!-- User menu -->
		<div class="sidebar-user">
			<div class="category-content">
				<div class="media">
					<a href="index.htm#" class="media-left"><img src="assets/images/users/user6.png" class="img-circle img-sm" alt=""></a>
					<div class="media-body">
						<span class="media-heading text-semibold">Andrew Brewer</span>
						<div class="text-size-mini text-muted">
							Network engineer
						</div>
					</div>

					<div class="media-right media-middle">
						<ul class="icons-list">
							<li>
								<a href="logout.php"><i class="fa fa-sign-out"></i></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- /user menu -->

		<!-- Main navigation -->
		<div class="sidebar-category sidebar-category-visible">
			<div class="category-content no-padding">
				<ul class="navigation navigation-main navigation-accordion">

					<!-- Main -->
					<li class="active">
						<a href="index.htm"><i class="fa fa-desktop"></i> <span>Dashboard</span></a>
					</li>
					<!-- /Main -->

					<!-- Content -->
					<li class="navigation-header"><span>Content</span> <i class="fa fa-bars" title="Content"></i></li>
					<li>
						<a href="index.htm#"><i class="fa fa-th"></i> <span>Bootstrap Components</span></a>
						<ul>
							<li><a href="bootstrap_modals.htm">Modals</a></li>
							<li><a href="bootstrap_dropdowns.htm">Dropdown menus</a></li>
							<li><a href="bootstrap_tabs.htm">Tabs component</a></li>
							<li><a href="bootstrap_accordions.htm">Accordions</a></li>
							<li><a href="bootstrap_buttons.htm">Buttons</a></li>
							<li><a href="bootstrap_popups.htm">Tooltips and popovers</a></li>
							<li><a href="bootstrap_alerts.htm">Alerts</a></li>
							<li><a href="bootstrap_pagination.htm">Pagination</a></li>
							<li><a href="bootstrap_labels.htm">Labels and badges</a></li>
							<li><a href="bootstrap_loaders.htm">Loaders and bars</a></li>
							<li><a href="bootstrap_media.htm">Media objects</a></li>
						</ul>
					</li>
					<li>
						<a href="index.htm#"><i class="fa fa-paper-plane"></i> <span>Appearance</span></a>
						<ul>
							<li><a href="appearance_content_panels.htm">Content panels</a></li>
							<li><a href="appearance_draggable_panels.htm">Draggable panels</a></li>
							<li><a href="appearance_typography.htm">Typography</a></li>
							<li><a href="appearance_helper_classes.htm">Helper classes</a></li>

						</ul>
					</li>
					<li>
						<a href="index.htm#"><i class="fa fa-star"></i> <span>Icons</span></a>
						<ul>
							<li><a href="icons_glyphicons.htm">Glyphicons</a></li>
							<li><a href="icons_fontawesome.htm">Font awesome</a></li>
							<li><a href="icons_icomoon.htm">Icomoon</a></li>
						</ul>
					</li>
					<li><a href="animations.htm"><i class="fa fa-spinner fa-pulse"></i> <span>CSS3 Animations</span></a></li>
					<li><a href="color_system.htm"><i class="fa fa-eyedropper"></i> <span>Color system</span></a></li>
					<li><a href="grid_system.htm"><i class="fa fa-th-large"></i> <span>Grid system</span></a></li>
					<!-- /Content -->

					<!-- Forms -->
					<li class="navigation-header"><span>Forms</span> <i class="fa fa-check-square-o" title="Forms"></i></li>
					<li>
						<a href="index.htm#"><i class="fa fa-pencil"></i> <span>Form components</span></a>
						<ul>
							<li><a href="form_basic.htm">Basic inputs</a></li>
							<li><a href="form_groups.htm">Input groups</a></li>
							<li><a href="form_checkboxes_radios.htm">Checkboxes &amp; radios</a></li>
							<li><a href="form_select2.htm">Select2 selects</a></li>
							<li><a href="form_tag_inputs.htm">Tag inputs</a></li>
							<li><a href="form_sliders_noui.htm">NoUI sliders</a></li>
							<li><a href="form_wizard.htm">Form Wizard</a></li>
						</ul>
					</li>
					<li>
						<a href="index.htm#"><i class="fa fa-text-height"></i> <span>Text Editors</span></a>
						<ul>
							<li><a href="editor_ckeditor.htm">CKEditor</a></li>
							<li><a href="editor_tinymce.htm">TinyMCE editor</a></li>
						</ul>
					</li>
					<li>
						<a href="index.htm#"><i class="fa fa-eyedropper"></i> <span>Pickers</span></a>
						<ul>
							<li><a href="pickers_date.htm">Date & Time pickers</a></li>
							<li><a href="pickers_colors.htm">Color pickers</a></li>
						</ul>
					</li>
					<!-- /forms -->

					<!-- Data & charts -->
					<li class="navigation-header"><span>Charts &amp; Graphs</span> <i class="fa fa-area-chart" title="Charts &amp; Graphs"></i></li>
					<li><a href="index.htm#"><i class="fa fa-pie-chart"></i> <span>C3 library</span></a>
						<ul>
							<li><a href="charts_c3_lines_areas.htm">Lines &amp; areas</a></li>
							<li><a href="charts_c3_bars_pies.htm">Bars &amp; pies</a></li>
							<li><a href="charts_c3_advanced.htm">Advanced examples</a></li>
							<li><a href="charts_c3_chart_axis.htm">Chart axis</a></li>
							<li><a href="charts_c3_grid_options.htm">Grid options</a></li>
						</ul>
					</li>
					<li><a href="index.htm#"><i class="fa fa-line-chart"></i> <span>Google charts</span></a>
						<ul>
							<li><a href="charts_google_lines.htm">Line charts</a></li>
							<li><a href="charts_google_bars.htm">Bar charts</a></li>
							<li><a href="charts_google_pies.htm">Pie charts</a></li>
							<li><a href="charts_google_bubbles.htm">Bubble &amp; scatter charts</a></li>
						</ul>
					</li>
					<!-- /data & charts -->

					<!-- Extensions -->
					<li class="navigation-header"><span>Extensions</span> <i class="fa fa-puzzle-piece" title="Extensions"></i></li>
					<li><a href="extensions_pnotify.htm"><i class="fa fa-warning"></i> <span>PNotify notifications</span></a></li>
					<li>
						<a href="index.htm#"><i class="fa fa-cloud-upload"></i> <span>File uploaders</span></a>
						<ul>
							<li><a href="extensions_bootstrap.htm">Bootstrap file uploader</a></li>
							<li><a href="extensions_dropzone.htm">Dropzone</a></li>
						</ul>
					</li>
					<li><a href="extension_calendar.htm"><i class="fa fa-calendar"></i> <span>Event calendars</span></a></li>
					<li>
						<a href="index.htm#"><i class="fa fa-map"></i> <span>Maps integration</span></a>
						<ul>
							<li><a href="maps_vector.htm">Vector maps</a></li>
							<li>
								<a href="index.htm#">Google maps</a>
								<ul>
									<li><a href="maps_google_basic.htm">Basics</a></li>
									<li><a href="maps_google_markers.htm">Markers</a></li>
									<li><a href="maps_google_layers.htm">Layers</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<!-- /extensions -->

					<!-- Tables -->
					<li class="navigation-header"><span>Tables</span> <i class="fa fa-table" title="Tables"></i></li>
					<li>
						<a href="index.htm#"><i class="fa fa-table"></i> <span>Basic tables</span></a>
						<ul>
							<li><a href="table_basic.htm">Basic examples</a></li>
							<li><a href="table_borders.htm">Table borders</a></li>
							<li><a href="table_sizing.htm">Table sizing</a></li>
							<li><a href="table_styling.htm">Table styling</a></li>
						</ul>
					</li>
					<li>
						<a href="index.htm#"><i class="fa fa-th-large"></i> <span>Data tables</span></a>
						<ul>
							<li><a href="datatable_basic.htm">Basic datatable</a></li>
							<li><a href="datatable_advanced.htm">Advanced datatables</a></li>
						</ul>
					</li>
					<li>
						<a href="index.htm#"><i class="fa fa-plug"></i> <span>Data tables extensions</span></a>
						<ul>
							<li><a href="datatable_extension_row_reorder.htm">Row reorder</a></li>
							<li><a href="datatable_extension_column_reorder.htm">Columns reorder</a></li>
							<li><a href="datatable_extension_state_saving.htm">State Saving</a></li>
							<li><a href="datatable_extension_fixed_columns.htm">Fixed columns</a></li>
							<li><a href="datatable_extension_fixed_header.htm">Fixed header</a></li>
							<li><a href="datatable_extension_autofill.htm">Auto fill</a></li>
							<li><a href="datatable_extension_key_table.htm">Key table</a></li>
							<li><a href="datatable_extension_export_options.htm">Export options</a></li>
							<li><a href="datatable_extension_columns_selection.htm">Columns selection</a></li>
						</ul>
					</li>
					<li><a href="datatable_responsive.htm"><i class="fa fa-arrows-alt"></i> <span>Responsive tables</span></a></li>
					<!-- /tables -->

					<!-- Pages -->
					<li class="navigation-header"><span>Pages</span> <i class="fa fa-file-o" title="Pages"></i></li>
					<li><a href="page_email.htm"><i class="fa fa-envelope"></i> <span>Email</span></a></li>
					<li>
						<a href="index.htm#"><i class="fa fa-money"></i> <span>Invoice</span></a>
						<ul>
							<li><a href="invoice_list.htm">Invoice list</a></li>
							<li><a href="invoice_template.htm">Invoice template</a></li>
						</ul>
					</li>
					<li><a href="timeline.htm"><i class="fa fa-file-text-o"></i> <span>Timeline</span></a></li>
					<li><a href="page_tasks.htm"><i class="fa fa-tasks"></i> <span>Tasks</span></a></li>
					<li><a href="gallery.htm"><i class="fa fa-file-image-o"></i> <span>Media Gallery</span></a></li>
					<li><a href="search.htm"><i class="fa fa-search"></i> <span>Search</span></a></li>
					<li>
						<a href="index.htm#"><i class="fa fa-users"></i> <span>User pages</span></a>
						<ul>
							<li><a href="user_cards.htm">Users cards</a></li>
							<li><a href="user_list.htm">Users list</a></li>
							<li><a href="user_profile.htm">Simple user profile</a></li>
						</ul>
					</li>
					<li>
						<a href="index.htm#"><i class="fa fa-user-plus"></i> <span>Login &amp; registration</span></a>
						<ul>
							<li><a href="login_simple.htm">User login</a></li>
							<li><a href="login_registration.htm">Simple registration</a></li>
							<li><a href="login_registration_advanced.htm">Detailed registration</a></li>
							<li><a href="login_unlock.htm">Unlock user</a></li>
							<li><a href="login_recover.htm">Reset password</a></li>
							<li><a href="login_tabbed.htm">Tabbed form</a></li>
						</ul>
					</li>
					<li>
						<a href="index.htm#"><i class="fa fa-info-circle"></i> <span>Support</span></a>
						<ul>
							<li><a href="support_faq.htm">FAQ page</a></li>
							<li><a href="support_knowledgebase.htm">Knowledgebase</a></li>
							<li><a href="support_center.htm">Support Center</a></li>
						</ul>
					</li>
					<li>
						<a href="index.htm#"><i class="fa fa-warning"></i> <span>Error pages</span></a>
						<ul>
							<li><a href="error_403.htm">Error 403</a></li>
							<li><a href="error_404.htm">Error 404</a></li>
							<li><a href="error_405.htm">Error 405</a></li>
							<li><a href="error_500.htm">Error 500</a></li>
							<li><a href="error_503.htm">Error 503</a></li>
							<li><a href="error_offline.htm">Offline page</a></li>
						</ul>
					</li>
					<li><a href="contact.htm"><i class="fa fa-phone"></i> <span>Contact Page</span></a></li>
					<!-- /pages -->

					<!-- Others -->
					<li class="navigation-header"><span>Extras</span> <i class="fa fa-folder-o" title="Extras"></i></li>
					<li><a href="page_starter.htm"><i class="fa fa-file-o"></i> <span>Starter Page</span></a></li>
					<li>
						<a href="index.htm#"><i class="fa fa-sitemap"></i> <span>Menu levels</span></a>
						<ul>
							<li><a href="index.htm#">Second level</a></li>
							<li>
								<a href="index.htm#">Second level with child</a>
								<ul>
									<li><a href="index.htm#">Third level</a></li>
									<li>
										<a href="index.htm#">Third level with child</a>
										<ul>
											<li><a href="index.htm#">Fourth level</a></li>
											<li><a href="index.htm#">Fourth level</a></li>
										</ul>
									</li>
									<li><a href="index.htm#">Third level</a></li>
								</ul>
							</li>
							<li><a href="index.htm#">Second level</a></li>
						</ul>
					</li>
					<!-- /Others -->

				</ul>
			</div>
		</div>
		<!-- /main navigation -->

	</div>
 <?php / * */ ?>