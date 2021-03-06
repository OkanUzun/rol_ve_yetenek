<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

  <link rel="apple-touch-icon" sizes="57x57" href="img/favicon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="img/favicon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="img/favicon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="img/favicon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="img/favicon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="img/favicon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="img/favicon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="img/favicon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="img/favicon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192" href="img/favicon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="img/favicon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png">
  <link rel="manifest" href="img/favicon/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="img/favicon/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">

  <title>Rol ve Yetenek Uygulaması</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/materialdesignicons.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.min.css">

  <script src="js/jquery.min.js"></script>
  <script src="js/chart.bundle.min.js"></script>
  <script type="text/javascript">
    // Toast Notification
    function ToastBuilder(options) {
      // options are optional
      var opts = options || {};

      // setup some defaults
      opts.defaultText = opts.defaultText || 'Toast boş';
      opts.displayTime = opts.displayTime || 3000;
      opts.target = opts.target || 'body';

      return function (text) {
        $('<div/>').addClass('toast').prependTo($(opts.target)).text(text || opts.defaultText).queue(function (next) {
          $(this).css({
            'opacity': 1
          });
          var topOffset = 10;
          $('.toast').each(function () {
            var $this = $(this);
            var height = $this.outerHeight();
            var offset = 15;
            $this.css('top', topOffset + 'px');

            topOffset += height + offset;
          });
          next();
        }).delay(opts.displayTime).queue(function (next) {
          var $this = $(this);
          var height = $this.outerHeight() + 20;
          $this.css({
            'top': '-' + height + 'px',
            'opacity': 0
          });
          next();
        }).delay(600).queue(function (next) {
          $(this).remove();
          next();
        });
      };
    }
    var showtoast = new ToastBuilder();
  </script>
  <?php

    include "dbsettings.php";

    if (isset($_POST["user-login"])) {
      $sql  = 'BEGIN SP_USER_LOGIN(:user_id,:user_pw,:is_valid); END;';
      $stmt = oci_parse($conn, $sql);

      oci_bind_by_name($stmt, ':user_id', $user_id);
      oci_bind_by_name($stmt, ':user_pw', $user_pw);
      oci_bind_by_name($stmt, ':is_valid', $message);

      $user_id = $_POST["user_id"];
      $salt    = "498#2D83B631%3800EBD!801600D*7E3CC13";
      $user_pw = hash('sha512', $salt.$_POST["user_pw"]);

      oci_execute($stmt);

      if ($message == 1) {
        if (isset($_POST["rememberme"])) {
          setcookie('username', $_POST["user_id"], time() + (86400 * 30), "/");
          setcookie('password', $_POST["user_pw"], time() + (86400 * 30), "/");
        }
        else {
          setcookie('username', $_POST["user_id"], false);
          setcookie('password', $_POST["user_pw"], false);
        }

        session_start();

        $_SESSION['timeout']  = time();
        $_SESSION['username'] = $user_id;
        header("Location:dashboard.php");
      }
      else {
        echo '<script type="text/javascript">window.onload = function() {showtoast("Hatalı Giriş");$(".toast").addClass("toast-error");}</script>';
      }
    }
  ?>
</head>
<body class="login">
<div class="container">
  <div class="row">
    <div class="col-xs-12 col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-xl-4 offset-xl-4">
      <form method="post">
        <div class="card card-login">
          <div class="card-header"><span class="highlight">Roleaby</span> Giriş</div>
          <div class="card-block">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Kullanıcı Adı" name="user_id" value="<?php if (isset($_COOKIE["username"]))
                echo $_COOKIE["username"];
              else
                echo ""; ?>">
              <i class="mdi mdi-account"></i>
            </div>
            <div class="form-group">
              <input type="password" class="form-control" placeholder="********" name="user_pw" value="<?php if (isset($_COOKIE["password"]))
                echo $_COOKIE["password"];
              else
                echo ""; ?>">
              <i class="mdi mdi-key"></i>
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-success" name="user-login">Giriş Yap</button>
            </div>
            <div class="form-group">
              <input id="remember" type="checkbox" name="rememberme" class="form-control" checked="true"/>
              <label for="remember">Beni Hatırla</label>
              <a href="pass-recovery.php" class="forgot">Şifremi Unuttum</a>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<?php include 'footer.php' ?>