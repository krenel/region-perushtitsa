<div id="divFooter" class="footerArea">

    <div class="divPanel">

        <div class="row-fluid">
            <div class="span3" id="footerArea1">
                <h3>Редовни събития</h3>
                <p>
                    -14 Февруари - Трифон Зарезан тържественно зарязване на лозите<br/>
                    -9 май: годишно честване в памет на подвига на Априлци в гр. Перущица, с театрални сцени и тържествена проверка-заря.<br/>
                    -20 януари: къпанки - традиция, свързана с Ивановден.<br/>
                </p>
                <p>
                    <a href="#" title="Sitemap">Документация</a>
                </p>
            </div>
            <div class="span3" id="footerArea2">

                <h3>Последни новини</h3>
                <?php
                $newsCollection = new NewsCollection();
                $news = $newsCollection->getAll(array(), 3, 0);
                    foreach ($news as $new) {
                ?>
                <p>
                    <a href="index.php?c=FrontNews&m=ShowOne&id=<?php echo $new->getId(); ?>" title=""><?php echo $new->getTitle(); ?></a><br />
                    <span style="text-transform:none;"><?php echo $new->getDate(); ?></span>
                </p>
                <?php } ?>
                <p>
                    <a href="index.php?c=FrontNews&m=index" title="">ВСИЧКИ НОВИНИ</a>
                </p>

            </div>
            <div class="span3" id="footerArea3">

                <h3>История</h3>
                <p>На североизток от днешна Перущица все още личат развалините на някогашния древен град Драговец.
                    На юг в гънките на Родопа планина се е издигала крепостта Перестица, брънка от отбранителната верига на Второто българско царство.
                    Археологията доказва, че в дългата си история Перущица е техен наследник, носейки вероятно името на славянския бог Перун.
                </p>

            </div>
            <div class="span3" id="footerArea4">

                <h3>Връзка с общината</h3>

                <ul id="contact-info">
                    <li>
                        <i class="general foundicon-phone icon"></i>
                        <span class="field">Телефон:</span>
                        <br />
                        03143 /27-86
                    </li>
                    <li>
                        <i class="general foundicon-mail icon"></i>
                        <span class="field">Email:</span>
                        <br />
                        <a href="perushtitsa_ob@abv.bg" title="Email">perushtitsa_ob@abv.bg</a>
                    </li>
                    <li>
                        <i class="general foundicon-home icon" style="margin-bottom:50px"></i>
                        <span class="field">Адрес:</span>
                        <br />
                        гр. Перущица, 4225<br />
                        ул. „Отец Паисий” №2<br />
                    </li>
                </ul>

            </div>
        </div>

        <br /><br />
        <div class="row-fluid">
            <div class="span12">
                <p class="copyright">
                    Пловдивски университет "Паисий Хилендарски" - Факултет по математика и информатика
                    - Бизнес информационни технологии - 4 курс - Калин Христов Кацаров - ф.н.1201561079
                </p>
            </div>
        </div>

    </div>
</div>
</div>
<br /><br /><br />

<script src="scripts/jquery.min.js" type="text/javascript"></script>
<script src="scripts/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="scripts/default.js" type="text/javascript"></script>


<script src="scripts/carousel/jquery.carouFredSel-6.2.0-packed.js" type="text/javascript"></script><script type="text/javascript">$('#list_photos').carouFredSel({ responsive: true, width: '100%', scroll: 2, items: {width: 320,visible: {min: 2, max: 6}} });</script><script src="scripts/camera/scripts/camera.min.js" type="text/javascript"></script>
<script src="scripts/easing/jquery.easing.1.3.js" type="text/javascript"></script>
<script type="text/javascript">function startCamera() {$('#camera_wrap').camera({ fx: 'scrollLeft', time: 2000, loader: 'none', playPause: false, navigation: true, height: '35%', pagination: true });}$(function(){startCamera()});</script>

</body>
</html>
