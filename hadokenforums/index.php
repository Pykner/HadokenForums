<?php
session_start(); 
?>
<html>
    <head>
        <title>Home</title>
        <link rel="stylesheet" href="css/homestyle.css?t=<?php echo round(microtime(true)*1000);?>">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body>
        
    <script src="js/playsound.js"></script>
    <div class="header">

        <audio id="audio" src="sound/hadoken.mp3"></audio>   
        <img id="img" src="img/hadokenlogo.png" value="PLAY"  onclick="play()">

    </div>

    <nav class="navbar">
        <ul>
            <li><a href="index.php"><i class="fa fa-fw fa-home"></i>Home</a></li>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn"><i class="fa fa-wheelchair-alt"></i>Forums</a>
                <div class="dropdown-content">
                    <a href="#">See posts</a>
                    <a href="#">Create post</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn"><i class="fa fa-shower" ></i>Tournaments</a>
                <div class="dropdown-content">
                    <a href="#">Majors</a>
                    <a href="#">See tournaments</a>
                    <a href="#">Create tournament</a>
                    <a href="#">Manage tournaments</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn"><i class="fa fa-book"></i>Resources</a>
                <div class="dropdown-content">
                    <a href="#">See resources</a>
                    <a href="#">Submit resource</a>
                </div>
            </li>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn"><i class="fa fa-gamepad"></i>Matchmaking</a>
                <div class="dropdown-content">
                    <a href="#">See matchmaking</a>
                    <a href="#">Create matchmaking</a>
                    <a href="#">Manage matchmaking</a>
                </div>
            </li>
            
            <?php

            if(isset($_SESSION["username"])){
                ?><li style="float:right"><a href=""><i class="fa fa-user"></i><?php echo $_SESSION["username"]?></a>
            <?php
            }else{
                ?><li style="float:right"><a href=""><i class="fa fa-user"></i>login</a>
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
            <li><a href="">Website updates</a></li>
            <li><a href="">Articles</a></li>
            <li><a href="">Events</a></li>
            <li><a href="">New resources</a></li>
        </ul> 
    </div>
    <div class="whatisnewtxt">
        <?php /*this shit's gonna get replaced by a query*/
        ?>
                    <h2>13/05/2022 update</h2>
                    <p>Added what is new text</p>
                    <p>Added what is new navbar</p>
                    <p>Fixed layout</p>
                    <p>Added sex</p>
                </div>


    <div class="ltstpost">
            <H2>THIS IS WHERE THE LATEST POSTS GO</H2>
    </div>

    <div class="footer">
        <div class="about">
            <H3>About</H3><br>
            <a href="">Contact</a><br>
            <a href="">Creator</a>
        </div>
        <div class="stats">
            <H3>Forum stats</H3>
            <p>member number query</p>
            <p>post number query</p>
        </div>

        <div class="share">
            <H3>Share this page</H3>

        </div>       
    </div>

    </body>
</html>