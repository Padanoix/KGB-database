<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>KGB</title>
        <link rel="icon" href="image/favicon.ico" type="image/x-icon" />
        <link rel="stylesheet" href="pstyle.css" media="screen" type="text/css" />
    </head>
    <body>
        <div id="content">
            <!-- tester si l'utilisateur est connecté -->
            <?php
                session_start();
                if($_SESSION['username'] !== ""){
                    $user = $_SESSION['username'];
                    // afficher un message
                    echo "Bonjour $user, vous êtes connecté";
                }
            ?>
            
        </div>
    </body>
</html>