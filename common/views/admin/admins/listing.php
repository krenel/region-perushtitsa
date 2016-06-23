<?php require_once __DIR__.'/../include/header.php'; ?>
<?php require_once __DIR__.'/../include/sidebar.php'; ?>

<div id="content" class="span10">
    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="index.php">Home</a>
            <i class="icon-angle-right"></i>
        </li>
        <li><a href="#">Dashboard</a></li>
    </ul>


    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header">
                <h2><i class="halflings-icon white align-justify"></i><span class="break"></span>Striped Table</h2>
                <div class="box-icon">
                    <a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
                    <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <a href="index.php?c=admin&m=create" class="glyphicons-icon user_add pull-right"></a>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Administrator name</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php

//                    $adminCollection = new AdminCollection();
//
//                    $page = isset($_GET['page'])? (int)$_GET['page'] : 1;
//                    $perPage = 10;
//                    $offset  = ($page) ? ($page-1) * $perPage : 0;
//
//                    $rows = count($adminCollection->getAll(array(), -1, 0));
//
//                    $pagination = new Pagination();
//                    $pagination->setPerPage($perPage);
//                    $pagination->setTotalRows($rows);
//                    $pagination->setBaseUrl("http://localhost/obshtina Perushtitsa/admin/admin.php");
//
//                    $admins = $adminCollection->getAll(array(), $offset, $perPage);

                    foreach($admins as $admin): ?>
                        <tr>
                            <td><?php echo $admin->getAdname(); ?></td>
                            <td class="center">
                                <!-- CRUD buttons -->
                                <a class="glyphicons-icon pencil" href="index.php?c=admin&m=update&id=<?php echo $admin->getId(); ?>">
                                    <i class="halflings-icon white edit"></i>
                                </a>
                                <a class="glyphicons-icon bin" href="index.php?c=admin&m=delete&id=<?php echo $admin->getId(); ?>">
                                    <i class="halflings-icon white trash"></i>
                                </a>
                                <!-- /CRUD buttons -->
                            </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
                <?php echo $pagination->create(); ?>
            </div>
        </div><!--/span-->
    </div><!--/row-->




</div>

<?php require_once __DIR__.'/../include/footer.php'; ?>
