<%-- <html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
    </head>
    <body >
        <%@include file="Header.jsp"%>
        <script>
            jQuery.validator.addMethod("checkemail", function(value, element) {
                return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
            }, "Please enter the email format as abc@gmail.com");

            jQuery(document).ready(function($) {
                $("#login").validate({
                    rules: {
                        email: {
                            required: true,
                            checkemail: true
                        },
                        pw: {
                            required: true,
                            minlength: 6
                        },
                    },
                    messages: {
                        email: {
                            required: "Please enter the email.",
                        },
                        pw: {
                            required: "Please enter the password.",
                            minlength: "Please enter the password greater than or equal to 6.",
                        },
                    }
                });
            });



        </script>
        <style>
            .error{
                color:red;
            }
            .button{
                padding: 5px;
                width: 6%;
                background: cornflowerblue;
                color: white;
            }

            #msg
            {
                background: green;
                color:black;
                border: 1px solid green;
                width:24%;
                font-weight: bold;
                font-size: 25px;
                padding: 5px;
            }
            td input{
                display:block;
            }
        </style>

    <center>

        <% if (request.getAttribute("status") != null) {%>
        <div id="msg">  <%= request.getAttribute("status")%></div>
        <%}%>

        <form method="POST" id="login" action="register">
            <font color="blue" size="4">
            <h2> Login  </h2>
            </font>
            <br>
            <div class="container ">
                <div class="form-group col-md-4">
                    <label >Email address</label>
                    <input type="email" class="form-control" placeholder="Enter email"  name="email">
                </div>
                <div class="form-group col-md-4">
                    <label >Password</label>
                    <input type="password" class="form-control"  placeholder="Enter Password" name="pw">
                </div>
                <button type="submit" class="btn btn-primary" name="login">Submit</button>
                <div style="text-align: center; margin-top: 15px;">
                    <a href="Fpass.jsp">Forgot password?</a>
                </div>
            </div>
        </form>

    </center>

    <%@include file="Footer.jsp"%>
</body>
</html> --%>






<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    
    <style>
    #msg {
        background: green;
        color: black;
        border: 1px solid green;
        width: 30%;
        font-weight: bold;
        font-size: 25px;
        padding: 5px;
        margin: 15px auto;
    }

    .form-container {
        max-width: 500px;
        margin: 50px auto;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        background-color: rgba(0, 0, 0, 0.3); 
    }
</style>
    
</head>
<body style="background-color: rgba(0, 0, 0, 0.1);">

<%@ include file="Header.jsp" %>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 form-container">
            <% if (request.getAttribute("status") != null) { %>
                <div id="msg"><%= request.getAttribute("status")%></div>
            <% } %>

            <form method="POST" action="register">
                <div class="form-group">
                    <label>Email address</label>
                    <input type="text" class="form-control" placeholder="Enter email" name="email" required>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" placeholder="Enter Password" name="pw" required>
                </div>
                <button type="submit" class="btn btn-primary" name="login">Submit</button>
                <div class="text-center mt-3">
                    <a href="Fpass.jsp">Forgot password?</a>
                </div>
            </form>
        </div>
    </div>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
