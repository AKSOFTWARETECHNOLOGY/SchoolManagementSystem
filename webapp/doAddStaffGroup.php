<?php session_start();
ob_start();

if(!isset($_SESSION['adminuserid']))
{
    header("Location: index.php");
}

include "config.php";

if(!empty($_REQUEST['staffId'])){
    $groupName = $_REQUEST['groupName'];
    $staffId = $_REQUEST['staffId'];
    $staff = explode(",",$staffId);
    $cnt = sizeof($staff);
    $user_id=$_SESSION['adminuserid'];
    $date = date("Y-m-d");

    if($cnt > 0){
        $insert_group_sql = "INSERT INTO `group_master` (group_name, group_type, group_status) values ('$groupName', 'Staffs','1')";
        $insert_group_exe = mysql_query($insert_group_sql);
        $group_id = mysql_insert_id();

        for($i = 0; $i<$cnt; $i++) {
            $insert_group_info_sql = "INSERT INTO `group_info` (group_id, user_id, school_id, group_info_status) values ('$group_id', '$staff[$i]','$user_id', '1')";
            $insert_group_info_exe = mysql_query($insert_group_info_sql);
        }

        header("Location: staff-group-list.php?suc=1");
    }
    else{
        header("Location: staff.php?err=1");
    }
}
else{
    header("Location: staff.php?err=2");
}

?>