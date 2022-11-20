<?php
    require_once "../includes/initiate.php";

	$denied=false;
	if(isset($_GET['denied'])){$denied=true;}

    sns_header('Dashboard');
?>

<div id="desktop" class="container page">

<?php if($denied==true){?>
<div class="alert alert-danger" role="alert">Acceso Denegado!</div>
<?php }?>

<div class="panel panel-default">
<div class="panel-heading theme-patients"><span class="inlineicon patients-mini">Pacientes</span><i class="pull-right desktop-live-symbol glyphicon glyphicon-refresh"></i></div>
<div class="panel-body patients-dpanel-hadjust">

    <div class="patients-activity-frame fb-pull">
        <div class="patients-activity-content">
        </div>
    </div>


    <div class="fotoer-buttons patients-buttons">
        <?php if(display_permission("register_patient")==true){?><a href="../patients/register-patient.php"><li class="inl-edit">Nuevo Paciente</li></a><?php }?>
        <?php if(display_permission("patients_directory")==true){?><a href="../patients/"><li class="inl-patient">Pacientes</li></a><?php }?>
        <a href="../patients/recent-activity.php"><li class="inl-recent">Actividad Reciente</li></a>
        <?php if(display_permission("pending_prescriptions")==true){?><a href="../patients/pending-reports.php"><li class="inl-pending">Reportes Pendientes (<?php echo count_pending();?>)</li></a><?php }?>
    </div>

</div></div>

<div class="row">

    <div class="col-md-4">
        <div class="panel panel-default">
        <div class="panel-heading theme-staff"><span class="inlineicon staff-mini">Staff</span><i class="pull-right desktop-live-symbol glyphicon glyphicon-refresh"></i></div>
        <div class="panel-body panel-desktop-staff ">

            <div class="staff-activity-frame fb-pull staff-dpanel-hadjust">
                <div class="staff-activity-content">
                </div>
            <div class="end-panel"></div>
            </div>
            <div class="fotoer-buttons staff-buttons">
                <?php if(display_permission("add_staff")==true){?><a href="../staff/register.php"><li class="inl-edit">Nuevo Miembro</li></a><?php }?>
                <?php if(display_permission("staff_directory")==true){?><a href="../staff/"><li class="inl-staff">Miembros del Staff</li></a><?php }?>
            </div>
        </div></div>

    </div>
</div>    



<div class="row">
    <div class="col-md-6">
        
        <div class="panel panel-default">
        <div class="panel-heading theme-medicines"><span class="inlineicon medicine-mini">Medicamentos</span><i class="pull-right desktop-live-symbol glyphicon glyphicon-refresh"></i></div>
        <div class="panel-body panel-med-stats">
        <?php if(display_permission("consumed_stock_local")==true): ?>
        <div class="fb-pull medicine-dpanel-hadjust">
            <div class="desktop-meds-cel">

                <div class="consumed-activity-frame">
                    <div class="consumed-activity-content">
                    </div>
                </div>

            </div> <!-- desktop-meds-cel -->
        </div>
        <?php endif;?>
        <div class="fotoer-buttons _medicines-buttons">
            <?php if(display_permission("introduce_medicine")==true){?><a href="../medicines/new.php"><li class="inl-edit">Nuevo Medicamento</li></a><?php }?>
            <?php if(display_permission("update_stock")==true){?><a href="../medicines/update-stock.php"><li class="inl-edit">Actualizar Farmacia</li></a><?php }?>
            <?php if(display_permission("consumed_stock_local")==true){?><a href="../medicines/stocks.php"><li class="inl-stock">Inventario Local</li></a><?php }?>
            <?php if(display_permission("medicine_directory")==true){?><a href="../medicines/"><li class="inl-medicine">Directorio</li></a><?php }?>
        </div>

        </div></div>

    </div> <!-- col -->

</div>

<?php sns_footer();?>