<?php require_once __DIR__.'/../include/header.php'; ?>
<?php require_once __DIR__.'/../include/sidebar.php'; ?>

<!-- start: Content -->
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
                <a href="index.php?c=europroject&m=create" class="glyphicons-icon circle_plus pull-right"></a>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Project Name</th>
                        <th>Funding Source</th>
                        <th>Cost</th>
                        <th>Timeline</th>
                        <th>description</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php


//                    $projectCollection = new EuroProjectsCollection();
//
//                    $page = isset($_GET['page'])? (int)$_GET['page'] : 1;
//                    $perPage = 10;
//                    $offset  = ($page) ? ($page-1) * $perPage : 0;
//
//                    $rows = count($projectCollection->getAll(array(), -1, 0));
//
//                    $pagination = new Pagination();
//                    $pagination->setPerPage($perPage);
//                    $pagination->setTotalRows($rows);
//                    $pagination->setBaseUrl("http://localhost/obshtina Perushtitsa/admin/europrojects.php");
//
//                    $europrojects = $projectCollection->getAll(array(), $offset, $perPage);


                    foreach($projects as $project): ?>
                        <tr>
                            <td><?php echo $project->getProjectname(); ?></td>
                            <td class="center"><?php echo $project->getfundingSource(); ?></td>
                            <td class="center"><?php echo $project->getCost(); ?></td>
                            <td class="center"><?php echo $project->getTimeline(); ?></td>
                            <td class="center"><?php echo $project->getDescription(); ?></td>
                            <td class="center">
                                <!-- CRUD buttons -->
                                <a class=" glyphicons-icon picture" href="index.php?c=europroject&m=projectImages&id=<?php echo $project->getId(); ?>">
                                    <i class="halflings-icon white edit"></i>
                                </a>
                                <a class=" glyphicons-icon circle_info" href="index.php?c=europroject&m=seeProject&id=<?php echo $project->getId(); ?>">
                                    <i class="halflings-icon white edit"></i>
                                </a>
                                <a class="glyphicons-icon pencil" href="index.php?c=europroject&m=update&id=<?php echo $project->getId(); ?>">
                                    <i class="halflings-icon white edit"></i>
                                </a>
                                <a class="glyphicons-icon circle_remove" href="index.php?c=europroject&m=delete&id=<?php echo $project->getId(); ?>">
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
</div><!--/.fluid-container-->

<?php require_once __DIR__.'/../include/footer.php'; ?>
