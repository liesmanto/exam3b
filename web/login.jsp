<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Natasha's Exam 3b</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
    </head>
    
    <body>
        <%@include file="includes/header.jsp" %>
        
        <%@include file="includes/loginNav.jsp" %>
        
        <div class="main">
        <h1>Log In</h1>
        
        <form name="addForm" action="adminIndex.jsp" method="post">
            <table class="add">
                <tr>
                    <td class="right">Username:</td>
                    <td><input type="username" name="username" value="" required/></td>
                </tr>

                <tr>
                    <td class="right">Password</td>
                    <td><input type="password" name="password" value="" required/></td>
                </tr>

            </table>
            <input type="submit" name="submit" value="Submit"/>
        </form>
        </div>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
