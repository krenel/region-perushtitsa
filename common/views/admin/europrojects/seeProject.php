<?php require_once __DIR__.'/../include/header.php'; ?>
<?php require_once __DIR__.'/../include/sidebar.php'; ?>


<div id="content" class="span10">
    <div class="box span12">
        <div class="box-header" data-original-title="">
            <h2><i class="halflings-icon white list"></i><span class="break"></span>Description List</h2>
        </div>
        <div class="box-content">
            <dl>
                <dt>Име на проект:</dt>
                <dd><?php echo $project->getProjectname(); ?></dd>
                <dt>Източник на финансиране:</dt>
                <dd><?php echo $project->getFundingsource(); ?></dd>
                <dt>Стойност на проекта:</dt>
                <dd><?php echo $project->getCost(); ?></dd>
                <dt>Период на изпълнение:</dt>
                <dd><?php echo $project->getTimeline(); ?></dd>
                <dt>Постигнати резултати:</dt>
                <dd><?php echo $project->getDescription(); ?></dd>
            </dl>
        </div>
    </div>
    <a href="index.php?c=europroject&m=index"><button class="btn btn-large btn-warning">Back</button></a>
<div/>

<?php require_once __DIR__.'/../include/footer.php'; ?>
