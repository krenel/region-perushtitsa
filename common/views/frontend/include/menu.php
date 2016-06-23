<div id="divBoxed" class="container">
    <?php $page = basename($_SERVER['PHP_SELF'], '.php'); ?>
    <div class="transparent-bg" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;z-index: -1;zoom: 1;"></div>

    <div class="divPanel notop nobottom">
        <div class="row-fluid">
            <div class="span12">

                <div id="divLogo" class="pull-left span8">
                    <a href="index.php" ><img class="pull-left" src="admin/images/Gerb.png" alt=""></a>
                    <a href="index.php" id="divSiteTitle">Регион Перущица</a><br/>
                    <a href="index.php" id="divTagLine">САЙТ ЗА МИНАЛОТО, НАСТОЯЩЕТО И БЪДЕЩЕТО НА ГРАДЪТ</a>
                </div>

                <div id="divWeather" class="pull-right span4">
                    <h4 id="wheather-point"></h4>
                    <h5 id="hPa"></h5>
                    <h5 id="wind"></h5>
                    <h5 id="date"></h5>
                </div>

                <div id="divMenuRight" class="span12">
                    <div class="navbar">
                        <button type="button" class="btn btn-navbar-highlight btn-large btn-primary" data-toggle="collapse" data-target=".nav-collapse">
                            Меню <span class="icon-chevron-down">
                                <ul class="nav nav-pills ddmenu">
                                    <li><a href="index.php">Начало</a></li>
                                    <li><a href="index.php?c=history&m=history">История</a></li>
                                    <li class="dropdown">
                                        <a href="index.php?c=landmarkfront&m=index" class="dropdown-toggle">Забележителности <b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <?php $landmarksCollection = new LandmarksCollection();
                                            $landmarks = $landmarksCollection->getAll(array()); ?>
                                            <?php foreach($landmarks as $landmark) { ?>
                                                <li><a href="index.php?c=landmarkfront&m=showOne&id=<?php echo $landmark->getId(); ?>"><?php echo $landmark->getName(); ?></a></li>
                                            <?php } ?>
                                        </ul>
                                    </li>
                                    <li><a href="index.php?c=FrontNews&m=index">Новини</a></li>
                                    <?php if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] == 1 && isset($_SESSION['user'])) { ?>
                                        <li><a href="index.php?c=projectlist&m=index">Европроекти</a></li>
                                        <li><a href="index.php?c=loginuser&m=update&id=<?php echo $_SESSION['user']->getId(); ?>">Здравей: <span id="username"><?php echo $_SESSION['user']->getUsername(); ?></span></a></li>
                                    <?php } ?>
                                    <?php if (!isset($_SESSION['user'])) { ?>
                                        <li><a href="index.php?c=loginuser&m=login">Вход</a></li>
                                    <?php } ?>
                                    <?php if (isset($_SESSION['user'])) { ?>
                                        <li><a href="index.php?c=loginuser&m=logout">Изход</a></li>
                                    <?php } ?>
                                </ul>
                            </span>
                        </button>
                        <div class="nav-collapse collapse">
                            <ul class="nav nav-pills ddmenu">
                                <li><a href="index.php">Начало</a></li>
                                <li><a href="index.php?c=history&m=history">История</a></li>
                                <li class="dropdown">
                                    <a href="index.php?c=landmarkfront&m=index" class="dropdown-toggle">Забележителности <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <?php $landmarksCollection = new LandmarksCollection();
                                         $landmarks = $landmarksCollection->getAll(array()); ?>
                                        <?php foreach($landmarks as $landmark) { ?>
                                        <li><a href="index.php?c=landmarkfront&m=showOne&id=<?php echo $landmark->getId(); ?>"><?php echo $landmark->getName(); ?></a></li>
                                        <?php } ?>
                                    </ul>
                                </li>
                                <li><a href="index.php?c=FrontNews&m=index">Новини</a></li>
                                <?php if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] == 1 && isset($_SESSION['user'])) { ?>
                                    <li><a href="index.php?c=projectlist&m=index">Европроекти</a></li>
                                    <li><a href="index.php?c=loginuser&m=update&id=<?php echo $_SESSION['user']->getId(); ?>">Здравей: <span id="username"><?php echo $_SESSION['user']->getUsername(); ?></span></a></li>
                                <?php } ?>
                                    <?php if (!isset($_SESSION['user'])) { ?>
                                    <li><a href="index.php?c=loginuser&m=login">Вход</a></li>
                                    <?php } ?>
                                <?php if (isset($_SESSION['user'])) { ?>
                                    <li><a href="index.php?c=loginuser&m=logout">Изход</a></li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        var options = {
            enableHighAccuracy: true,
            timeout: 5000,
            maximumAge: 0
        };

        function success(pos) {
            var crd = pos.coords;

            console.log('Your current position is:');
            console.log('Latitude : ' + crd.latitude);
            console.log('Longitude: ' + crd.longitude);
            console.log('More or less ' + crd.accuracy + ' meters.');
        };

        function error(err) {
            console.warn('ERROR(' + err.code + '): ' + err.message);
        };

        var latitude = '42.04881483';
        var longitude = '24.5480111';

        var month = {
            0 : 'Януари',
            1 : 'Февруари',
            2 : 'Март',
            3 : 'Април',
            4 : 'Май',
            5 : 'Юни',
            6 : 'Юли',
            7 : 'Август',
            8 : 'Септември',
            9 : 'Октомври',
            10 : 'Ноември',
            11 : 'Декември',
        }

        var day = {

            0 : 'Неделя',
            1 : 'Понеделник',
            2 : 'Вторник',
            3 : 'Сряда',
            4 : 'Четвъртък',
            5 : 'Петък',
            6 : 'Събота',

        }

        function clicked (){
            $.ajax({

                url:'http://api.openweathermap.org/data/2.5/weather?lat='+latitude+'&lon='+longitude+'&appid=e342e9156b8541d4b3990d0df72f08b1' ,
                method: 'GET',
                success: function success1(data){
                    var temp = data.main.temp;
                    temp = Math.round(temp);
                    hPa = data.main.pressure;
                    wind = data.wind.speed;
                    date = new Date();
                    if(temp > 272 ){
                        $('#wheather-point').text('Перущица - ' + (temp - 272) +'°C');
                        $('#hPa').text('Атмосферно налягане: '+ (hPa) +' hPa');
                        $('#wind').text('Вярър: '+ (wind) + ' м/с.');
                        $('#date').text('Дата: ' + (date.getUTCDate()) + '.' + (month[date.getMonth()]) + '.' + (date.getFullYear())+ '-' +(day[date.getDay()]));

                    } else {
                        $('#wheather-point').text('Перущица - -' + (temp - 272) +'°C');
                        $('#hPa').text('Атмосферно налягане: '+ (hPa) +' hPa');
                        $('#wind').text('Вярър: '+ (wind) + ' м/с.');
                        $('#date').text('Дата: ' + (date.getUTCDate()) + '.' + (date.getMonth()) + '.' + (date.getFullYear()));
                    }

                },
                error: function error1(){}

            });
        };
        window.onload = clicked();
    </script>