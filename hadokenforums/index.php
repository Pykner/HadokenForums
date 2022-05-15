<?php
session_start(); 
?>
<html>
    <head>
        <title>Home</title>
        <link rel="stylesheet" href="css/homestyle.css?t=<?php echo round(microtime(true)*1000);?>">
    </head>

    <body>
        
    <script src="js/playsound.js"></script>
    <div class="header">

        <audio id="audio" src="sound/hadoken.mp3"></audio>   
        <img id="img" src="img/hadokenlogo.png" value="PLAY"  onclick="play()">

    </div>

    <nav class="navbar">
        <ul>
            <li><a href="index.php">Home</a></li>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Forums</a>
                <div class="dropdown-content">
                    <a href="#">See posts</a>
                    <a href="#">Create post</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Tournaments</a>
                <div class="dropdown-content">
                    <a href="#">Majors</a>
                    <a href="#">See tournaments</a>
                    <a href="#">Create tournament</a>
                    <a href="#">Manage tournaments</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Resources</a>
                <div class="dropdown-content">
                    <a href="#">See resources</a>
                    <a href="#">Submit resource</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Matchmaking</a>
                <div class="dropdown-content">
                    <a href="#">See matchmaking</a>
                    <a href="#">Create matchmaking</a>
                    <a href="#">Manage matchmaking</a>
                </div>
            </li>
            
            <?php

            if(isset($_SESSION["username"])){
                ?><li style="float:right"><a href=""><?php echo $_SESSION["username"]?></a>
            <?php
            }else{
                ?><li style="float:right"><a href="">login</a>
                <?php
            }
            ?>
        </ul>
    </nav>
    
    <div class="welcome_text">
    <h2>Welcome to the hadoken forums</h2>
        <p>Hadoken forums is a community designed to: </p>

            <li>discuss fighting games</li><br>
            <li>keep up with, create and publicize tournaments</li><br>
            <li>find gameplay resources for your favorite games</li><br>
            <li>find matches with other players</li><br>
        
        <p>You can view all content here without an account but if you're interested in joining the community consider <a href="">creating an account!</a></p> 
    </div>
    
    <div class="whatisnew">
        <h3>What's new</h3>
        <ul>
            <li><button type="button" class="tabcollapse">Website updates</button></li>
                <div class="whatisnewtxt">
                    <h2>13/05/2022 update</h2>
                    <p>Added what is new text</p>
                    <p>Added what is new navbar</p>
                    <p>Fixed layout</p>
                    <p>Added sex</p>
                </div>
            <li><button type="button" class="tabcollapse">Articles</button></li>
                <div class="whatisnewtxt">
                        <h2>A</h2>
                        <p>AAAA text</p>
                        <p>Added AAAAA</p>
                        <p>Fixed AAAA</p>
                        <p>Added sex</p>
                    </div>

            <li><a href="">Events</a></li>
            <li><a href="">New resources</a></li>
        </ul> 
    </div>
    
    <script src="js/collapse.js"></script>

    <div class="footer">
        <p>Footer</p>
    </div>

    </body>
</html>