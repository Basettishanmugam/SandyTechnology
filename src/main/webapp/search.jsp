<%-- <%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.student"%>
<%@page import="Model.Registration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Search</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <%@include file="Header.jsp"%>
    <style>
        .jumbotron {
            background-color: white;
        }
    </style>
    <center>
        <% if (session.getAttribute("id") != null && session.getAttribute("id").equals("1")) { %>
            <font color="blue" size="4">
                <h2>Search module</h2>
            </font>
            <br><br>
            <form action="search" method="POST">
                <div class="form-group col-md-4">
                    <label>Student id:</label>
                    <input type="text" name="id" class="form-control">
                </div>
                <button type="submit" class="btn btn-primary" name="submit">Search</button>
            </form>
            <% if (request.getParameter("id") != null) { %>
                <div class="container">
                    <div class="jumbotron">
                        <table class="table">
                            <thead>
                                <tr style="background-color: lightblue;">
                                    <br>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody id="table">
                                <% Registration reg = new Registration(session);
                                    ArrayList<student> mydata = reg.getUserinfo(request.getParameter("id"));
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
                                </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            <% } %>
        <% } %>
    </center>
    <%@include file="Footer.jsp"%>
</body>
</html>
 --%>
 
<!--   -->
 
 
 
 
 
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Model.student"%>
<%@ page import="Model.Registration"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Search</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        .search-container {
            min-height: 100vh;
            align-items: center;
            justify-content: center;
        }
        .search-form-container {
            max-width: 400px;
            width: 100%;
            height:100%;
            background-color: rgba(0, 0, 0, 0.2);
            padding: 10px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
            margin-left: 350px;
        }
        .result-table-container {
            padding: 20px;
            margin:10px;
            border-radius: 10px;
            margin-top: 30px;
            margin-left:100px;
            background-color: rgba(0, 0, 0, 0.2);
            max-width: 900px; 
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body style="background-color: rgba(0, 0, 0, 0.1); ">
    <%@ include file="Header.jsp" %>

    <div class="container search-container">
        <% if (session.getAttribute("id") != null && session.getAttribute("id").equals("1")) { %>
            <div class="search-form-container">
                <h2 class="text-center mb-4">Search Module</h2>
                <form action="search" method="POST">
                    <div class="form-group">
                        <label for="id">Student ID:</label>
                        <input type="text" id="id" name="id" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block" name="submit">Search</button>
                </form>
            </div>
            <% if (request.getParameter("id") != null) { %>
                <div class="result-table-container">
                    <table class="table table-bordered">
                        <thead class="thead-light">
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% Registration reg = new Registration(session);
                            ArrayList<student> mydata = reg.getUserinfo(request.getParameter("id"));
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
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            <% } %>
        <% } %>
    </div>

    <%@ include file="Footer.jsp" %>
</body>
</html>
