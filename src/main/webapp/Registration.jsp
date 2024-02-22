<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>SSTECH REGISTRATION</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    </head>
    <body>
        <%@include file="Header.jsp"%>
        <script>



            //            jQuery.validator.addMethod( name, method [, message ] )
//            
// value---> "current value of the validated element".
//elememt---> " element to be validated ".

            jQuery.validator.addMethod("checkemail", function(value, element) {
                return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
            });
            jQuery(document).ready(function($) {
                $("#signup").validate({
                    //ignore: [],
                    rules: {
                        name: {
                            required: true
                        },
                        email: {
                            required: true,
                            checkemail: true
                        },
                        phone: {
                            required: true,
                            minlength: 10,
                            maxlength: 10
                        },
                        pw: {
                            required: true,
                            minlength: 6
                        },
                        cp: {
                            required: true,
                            minlength: 6,
                            equalTo: "#pw"
                        }
                    },
                    messages: {
                        name: {
                            required: "Please enter the name."
                        },
                        email: {
                            required: "Please enter the email.",
                            email: "Please enter valid email id"
                        },
                        phone: {
                            required: "Please enter the number.",
                            minlength: "Please enter the  10 digit number .",
                            maxlength: "more than 10 digits."
                        },
                        pw: {
                            required: "Please enter the password.",
                            minlength: "Please enter the password greater than or equal to  6.",
                        },
                        cp: {
                            required: "Please reenter the password.",
                            minlength: "Please enter the password greater than or equal to 6.",
                            equalTo: "mismatch password"
                        }
                    }
                });
            });
        </script>
        <style>
            .error{   
                color:red;
            }
            input{
                display: block;
            }
            #msg
            {
                background: red;
                color:black;
                border: 1px solid red;
                width:24%;
                font-weight: bold;
                font-size: 25px;
                padding: 5px;
            }
        </style>
    <center>

        <br><br>

        <% if (request.getAttribute("status") != null) {%>
        <div id="msg">  <%= request.getAttribute("status")%></div>
        <%}%>


        <form method="POST" id ="signup" action="register">
            <font color="blue"> 

            <h2> <b>SSTECH Registration Form</b></h2>
            </font>
            <table>
                <tr>
                    <td> NAME  </td>
                    <td> <input type="text" id="name" name="name"></td>
                </tr>   
                <tr>
                    <td> PHONE NUMBER   </td>
                    <td> <input type="number" name="phone" > </td>
                </tr>
                <tr>
                    <td> Email  </td>
                    <td>   <input type="email" name="email"></td>
                </tr>
                <tr>
                    <td> Password  </td>
                    <td>   <input type="password" id="pw" name="pw"></td>
                </tr>
                <tr>
                    <td> Confirm Password  </td>
                    <td>   <input type="password" name="cp"></td> 
                </tr>
                <tr>
                    <td> </br> <input type="submit" name="register" value="Register"></td>
                </tr>
            </table>
        </form>
    </center>
      <%@include file="Footer.jsp"%>
</body>
</html> --%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>SSTECH REGISTRATION</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    
    
</head>

<body style="background-color: rgba(0, 0, 0, 0.1); background-size: cover; background-position: center; ">

    <%@include file="Header.jsp"%>
    <div class="container mt-5" style="background-color: rgba(255, 255, 255, 0.9); padding: 10px; border-radius: 10px; max-width: 500px; height: 750px; background-size: cover; background-position: center;">
        <% if (request.getAttribute("status") != null) { %>
        <div class="alert alert-danger" role="alert">
            <%= request.getAttribute("status")%>
        </div>
        <% } %>

        <form method="POST" id="register" action="register">
            <div class="text-center">
                <h2 class="text-primary">SSTECH Registration Form</h2>
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="number" class="form-control" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="pw">Password</label>
                <input type="password" class="form-control" id="pw" name="pw" minlength="6" required>
            </div>
            <div class="form-group">
                <label for="cp">Confirm Password</label>
                <input type="password" class="form-control" id="cp" name="cp" minlength="6" equalTo="#pw" required>
            </div>
            <button type="submit" name="register" class="btn btn-primary">Register</button>
        </form>
    </div>

    <script>
        $(document).ready(function () {
            $("#register").validate();
        });
    </script>

    <%@include file="Footer.jsp"%> 
</body>

</html>

