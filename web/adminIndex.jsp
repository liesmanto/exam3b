<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Natasha's Exam 3b</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
    </head>
    <body>
        <div class="wrap"> <!-- div to hold all other divs -->
            <!--Header-->
            <%@include file="includes/header.jsp" %>
        
            <!--Navigation-->
            <%@include file="includes/nav.jsp" %>
            
            <!--Main-->
            <div class="main">
            <h1>Welcome Admin!</h1>
                <p>
                    This is the Customers Database for Software Design and Development Exam3b.
                    <br>
                    Click <a href="read">here</a> or 'Customers List' on the navigation menu to view Customers Database              
                </p>
            </div>
            
            <!--Footer-->
            <%@include file="includes/footer.jsp" %>
            
        </div> <!-- close the wrap div -->
    </body>
</html>