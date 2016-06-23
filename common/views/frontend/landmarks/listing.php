<?php include '/../include/header.php'; ?>
<?php include '/../include/menu.php'; ?>

<div class="contentArea">

  <div class="divPanel notop page-content">

    <div class="breadcrumbs">
        <a href="index.php?c=index&m=index">Home</a> &nbsp;/&nbsp; <span>Забележителности</span>
    </div>

    <!--Edit Portfolio Content Area here-->
    <div class="row-fluid">
        <div class="span12">

            <h1>Забележителности</h1>
            <div class="yoxview">
                <div class="row-fluid">
                    <ul class="thumbnails">
                        <?php foreach ($landmarks as $landmark) { ?>
                        <?php             $landmarkImagesCollection = new LandmarksImagesCollection();
                            $landmarkImages = $landmarkImagesCollection->getAll(array());
                            $landmarkImages = $landmarkImagesCollection->getOneImgL($landmark->getId()); ?>
                        <li class="span3">
                            <div class="thumbnail">
                                <img class="landmarkImg" src="admin/images/landmarks/<?php echo $landmarkImages->getImg(); ?>" alt="Thumbnail Placeholder" title="Thumbnail Placeholder" />
                                <div class="caption">
                                    <h4><?php echo $landmark->getName(); ?></h4>
                                    <p><?php echo substr($landmark->getDescription(),0,150) ?>...</p>
                                    <p><a href="index.php?c=landmarkfront&m=showOne&id=<?php echo $landmark->getId(); ?>" class="btn btn-primary">Още...</a></p>
                                </div>
                            </div>
                        </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>

        </div>

    </div>
    <!--/End Portfolio Content Area-->
        <iframe frameborder=0 style='width:100%;height:500px' src='//www.zeemaps.com/pub?group=2021586&legend=1&list=1'> </iframe>
        <div id="footerInnerSeparator"></div>
  </div>
</div>

    <script src="scripts/jquery.min.js" type="text/javascript"></script>
    <script src="scripts/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="scripts/default.js" type="text/javascript"></script>

    <script src="scripts/wookmark/js/jquery.wookmark.js" type="text/javascript"></script>
    <script type="text/javascript">$(window).load(function () {var options = {autoResize: true,container: $('#gridArea'),offset: 10};var handler = $('#tiles li');handler.wookmark(options);$('#tiles li').each(function () { var imgm = 0; if($(this).find('img').length>0)imgm=parseInt($(this).find('img').not('p img').css('margin-bottom')); var newHeight = $(this).find('img').height() + imgm + $(this).find('div').height() + $(this).find('h4').height() + $(this).find('p').not('blockquote p').height() + $(this).find('iframe').height() + $(this).find('blockquote').height() + 5;if($(this).find('iframe').height()) newHeight = newHeight+15;$(this).css('height', newHeight + 'px');});handler.wookmark(options);handler.wookmark(options);});</script>
    <script src="scripts/yoxview/yox.js" type="text/javascript"></script>
    <script src="scripts/yoxview/jquery.yoxview-2.21.js" type="text/javascript"></script>
    <script type="text/javascript">$(document).ready(function () {$('.yoxview').yoxview({autoHideInfo:false,renderInfoPin:false,backgroundColor:'#ffffff',backgroundOpacity:0.8,infoBackColor:'#000000',infoBackOpacity:1});$('.yoxview a img').hover(function(){$(this).animate({opacity:0.7},300)},function(){$(this).animate({opacity:1},300)});});</script>

    <script>

            $('.span3:nth-child(4n+1)').css("margin-left","0px");

        function changebg() {
            document.body.style.background = "url('bgs/bg1.jpg') no-repeat fixed";
        }
        window.onload =  changebg();


    </script>

<?php include '/../include/footer.php'; ?>