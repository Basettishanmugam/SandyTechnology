<%-- <%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.student"%>
<%@page import="Model.Registration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
 <title>TODO supply a title</title>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width">
 <link rel="stylesheet" 
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
 <link rel="stylesheet" 
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 </head>
 <style>
 .errmsg{
 background: green;
 padding: 6px;
 width: 50%;
 color: white;
 font-weight: bold;
 }
 .jumbotron{
 background-color: white;
 }
 #search
 {
 width: 50%; 
 }
 
 </style>
 <body>
 <%@include file="Header.jsp"%>
 <center>
 <br>
 <font color="blue" size="4">
 <h2> Delete User </h2>
 </font>
 <% if (request.getAttribute("status") != null) {%>
 <h1 class="errmsg"> <%= request.getAttribute("status")%></h1>
 <%}%>
 <div class="container ">
 <div class="jumbotron">
 <input class="form-control" id="search" type="text" placeholder="Search..">
 <table class="table">
 <thead>
 <tr style="background-color: lightblue;">
 <br>
 <th>Id</th>
 <th>Name</th>
 <th>Email</th>
 <th>Phone</th>
 <th>Date</th>
 <th>Delete</th>
 </tr>
 </thead>
 <tbody id="table">
 <% if (session.getAttribute("id") != null && session.getAttribute("id").equals("1")) {
 Registration reg = new Registration(session);
 ArrayList<student> mydata = reg.getUserDetails();
 
 Iterator<student> itr = mydata.iterator();
 while (itr.hasNext()) {
 student s = itr.next();
 %>
 <tr>
 <td><%=s.getId()%></td>
 <td><%=s.getName()%></td>
 <td><%=s.getemail()%></td>
 <td><%=s.getphone()%></td>
 <td><%=s.getdate()%></td>
 <td>
 <form action="delete" method="POST">
 <input type="hidden" name="userid" value="<%=s.getId()%>"/>
 <input type="submit" class="btn btn-danger" value="Delete" />
 </form>
 </td>
 </tr> 
 <%}
 }%> 
 </tbody>
 </table>
 </div>
 </div>
 </center>
 
 <script>
$(document).ready(function(){
 $("#search").on("keyup", function() {
 var value = $(this).val().toLowerCase();
 //alert(value);
 $("#table tr").filter(function() {
 $(this).toggle($(this).text().toLowerCase().indexOf(value) > 0)
 //alert(this);
 });
 });
});
</script>
 <%@include file="Footer.jsp"%>
</body>
</html> --%>






<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.student"%>
<%@page import="Model.Registration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete User</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>

    .errmsg {
        background: green;
        padding: 6px;
        width: 50%;
        color: white;
        font-weight: bold;
    }

    .form-container {
        background-color:  rgba(0, 0, 0, 0.3);
        padding: 10px;
        height: 100%;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-top: 20px;
    }

    #search {
        width: 50%;
        margin-top: 20px;
    }
</style>
<body style="background-color: rgba(0, 0, 0, 0.1);">
    <%@include file="Header.jsp"%>
    <center>
        <br>
        <font color="blue" size="4">
            <h2>Delete User</h2>
        </font>
        <% if (request.getAttribute("status") != null) {%>
        <h1 class="errmsg"> <%= request.getAttribute("status")%></h1>
        <%}%>
        <div class="container form-container">
            <input class="form-control" id="search" type="text" placeholder="Search..">
            <table class="table">
                <thead>
                    <tr style="background-color: lightblue;">
                        <br>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Date</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody id="table">
                    <% if (session.getAttribute("id") != null && session.getAttribute("id").equals("1")) {
                        Registration reg = new Registration(session);
                        ArrayList<student> mydata = reg.getUserDetails();
                        
                        Iterator<student> itr = mydata.iterator();
                        while (itr.hasNext()) {
                            student s = itr.next();
                    %>
                    <tr>
                        <td><%=s.getId()%></td>
                        <td><%=s.getName()%></td>
                        <td><%=s.getemail()%></td>
                        <td><%=s.getphone()%></td>
                        <td><%=s.getdate()%></td>
                        <td>
                            <form action="delete" method="POST">
                                <input type="hidden" name="userid" value="<%=s.getId()%>"/>
                                <input type="submit" class="btn btn-danger" value="Delete" />
                            </form>
                        </td>
                    </tr> 
                    <%}
                    }%> 
                </tbody>
            </table>
        </div>
    </center>

    <script>
        $(document).ready(function(){
            $("#search").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#table tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > 0)
                });
            });
        });
    </script>

    <%@include file="Footer.jsp"%>
</body>
</html>