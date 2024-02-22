<%-- <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME Page</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <style>
        h1{
            text-align: center;
            text-shadow: 2px 1px 2px black;
        }
        .errmsg{
            background: green;
            padding: 10px;
            width: 50%;
            color: white;
            font-weight: bold;
        }
    </style>
    <body>
        <%@include file="Header.jsp"%>
    <center>
        <% if (request.getAttribute("status") != null) {%>
        <h1 class="errmsg"> <%= request.getAttribute("status")%></h1>
        <%}%>
        <br>
        <div>
            <h1>SSTECH SOLUTIONS</h1>
        </div>
        <% if (session.getAttribute("uname") != null) {%>
        <h1>  Welcome <%= session.getAttribute("uname")%></h1>
        <h1>  email: <%= session.getAttribute("email")%></h1>
        <h1> id <%= session.getAttribute("id")%></h1>
        <%}%>
    </center>
    <%@include file="Footer.jsp"%>
</body>
</html> --%>






<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>HOME Page</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <style>
        body {
            background-image: url('sstechbgm.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        h1 {
            text-align: center;
            text-shadow: 2px 1px 2px black;
            color: white; /* Set text color to white for better visibility on the background */
        }

        .errmsg {
            background: green;
            padding: 10px;
            width: 50%;
            color: white;
            font-weight: bold;
            margin: 0 auto; /* Center the element horizontally */
            margin-bottom: 20px; /* Add some space below the element */
        }
    </style>
</head>

<body>
    <%@include file="Header.jsp"%>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <% if (request.getAttribute("status") != null) { %>
                <h1 class="errmsg"> <%= request.getAttribute("status")%></h1>
                <% } %>
                <br>
                <div>
                    <h1>SSTECH SOLUTIONS</h1>
                </div>
                <% if (session.getAttribute("uname") != null) { %>
                <h1>Welcome <%= session.getAttribute("uname")%></h1>
                <h1>Email: <%= session.getAttribute("email")%></h1>
                <h1>ID: <%= session.getAttribute("id")%></h1>
                <% } %>
            </div>
        </div>
    </div>
    <%@include file="Footer.jsp"%>
</body>

</html>

