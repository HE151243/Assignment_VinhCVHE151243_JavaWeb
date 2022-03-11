<%-- 
    Document   : login
    Created on : Mar 10, 2022, 10:09:47 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <!--Made with love by Mutiullah Samim -->

        <!--Bootsrap 4 CDN-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <!--Fontawesome CDN-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

        <!--Custom styles-->
        <link rel="stylesheet" type="text/css" href="styles.css">
        <style>
            @import url('https://fonts.googleapis.com/css?family=Numans');

            html,body{
                /*                margin-top: 100px;
                                background-image: url(img/contact-bg.jpg);
                                background-repeat: no-repeat;
                                background-size: cover;
                                background-position: center center;
                                text-align: center;
                                padding: 100px 0px;*/

                background-image: url(img/contact-bg.jpg);
                background-size: cover;
                background-repeat: no-repeat;
                height: 100%;
                font-family: 'Numans', sans-serif;

            }

            .container{
                height: 100%;
                align-content: center;
            }

            .card{
                height: 370px;
                margin-top: auto;
                margin-bottom: auto;
                width: 400px;
                background-color: rgba(0,0,0,0.5) !important;
            }

            .social_icon span{
                font-size: 60px;
                margin-left: 10px;
                color: #FFC312;
            }

            .social_icon span:hover{
                color: white;
                cursor: pointer;
            }

            .card-header h3{
                color: white;
            }

            .social_icon{
                position: absolute;
                right: 20px;
                top: -45px;
            }

            .input-group-prepend span{
                width: 50px;
                background-color: #FFC312;
                color: black;
                border:0 !important;
            }

            input:focus{
                outline: 0 0 0 0  !important;
                box-shadow: 0 0 0 0 !important;

            }

            .remember{
                color: white;
            }

            .remember input
            {
                width: 20px;
                height: 20px;
                margin-left: 15px;
                margin-right: 5px;
            }

            .login_btn{
                color: black;
                background-color: #FFC312;
                width: 100px;
            }

            .login_btn:hover{
                color: black;
                background-color: white;
            }

            .links{
                color: white;
            }

            .links a{
                margin-left: 4px;
            }
        </style>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="d-flex justify-content-center h-100">             
                <div class="card" > <!-- sign up -->
                    <div class="card-header">
                        <h3>Đăng ký</h3>
                        <h6 style="color: red">${ms}</h6>           
                    </div>
                    <div class="card-body" >
                        <form action="account" method="post">
                            <input hidden="" name="go" value="signUp">
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <input type="text" class="form-control" id="username" name="username" placeholder="Tài khoản">

                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="password" class="form-control" id="password" placeholder="Mật khẩu">
                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input type="password" class="form-control" id="confirm_password" name="password" placeholder="Nhập lại mật khẩu"> <br>

                            </div>
                            <div>
                                <span id='message'></span>
                            </div>

                            <div class="form-group">
                                <input type="" id="btn-signUp" readonly="" name="submit" value="Đăng ký" class="btn float-right login_btn">
                            </div>
                        </form>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links">
                            Quay lại trang <a href="account?go=login">Đăng nhập</a>
                        </div>				
                    </div>
                </div>
            </div>
        </div>
    </body>

    <script type="text/javascript">
        $('#password, #confirm_password, #username').on('keyup', function () {
            if ($('#password').val() == $('#confirm_password').val() && $('#password').val().length > 5 && $('#username').val().length > 5) {
                $('#message').html('Hợp lệ').css('color', 'green');
                document.getElementById("btn-signUp").setAttribute("type", "submit");
            } else if ($('#password').val().length < 6) {
                $('#message').html('Mật khẩu phải có ít nhất 6 ký tự').css('color', 'red');
                document.getElementById("btn-signUp").setAttribute("type", "");
                document.getElementById("btn-signUp").setAttribute("readonly", "true");
            } else if($('#password').val() != $('#confirm_password').val()){
                $('#message').html('Mật khẩu không trùng nhau').css('color', 'red');
                document.getElementById("btn-signUp").setAttribute("type", "");
                document.getElementById("btn-signUp").setAttribute("readonly", "true");
            } else{
                $('#message').html('Tài khoản phải có ít nhất 6 ký tự').css('color', 'red');
                document.getElementById("btn-signUp").setAttribute("type", "");
                document.getElementById("btn-signUp").setAttribute("readonly", "true");
            }
        });
    </script>
</html>
