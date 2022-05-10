<?php
session_start(); 
?>
<html>
    <head>
        <title>Home</title>
        <link rel="stylesheet" href="css/homestyle.css">
    </head>

    <body>

    <div class="header">
        <h1>Header</h1>
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

    <div class="footer">
        <p>Footer</p>
    </div>

    </body>
</html>