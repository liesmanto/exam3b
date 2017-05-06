<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customers Database</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
    </head>
    
    <% String table = (String) request.getAttribute("table"); %>
    
    <body id="read">
    <div class="wrap"> <!-- div to hold all other divs -->
            <!--Header-->
            <%@include file="includes/header.jsp" %>

            <!--Navigation-->
            <%@include file="includes/nav.jsp" %>
            <!--Main-->
            <div class="main">
                <h1>Customers Database</h1>
                <%= table %>
                
                <a href="add">Add Database</a>

            </div>

            <!--Footer-->
            <%@include file="includes/footer.jsp" %>
        </div> <!-- close the wrap div -->
    </body>
</html>