
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
        <%@include file="includes/header.jsp" %>
        
        <%@include file="includes/nav.jsp" %>
        
        <div class="main">

        <h1>Add A Customer</h1>
        
        <form name="addForm" action="addCustomer" method="post">
            <table class="add">
                <tr>
                    <td class="right">First Name:</td>
                    <td><input type="text" name="firstName" value="" required/></td>
                </tr>

                <tr>
                    <td class="right">Last Name:</td>
                    <td><input type="text" name="lastName" value="" required/></td>
                </tr>

                <tr>
                    <td class="right">Address 1:</td>
                    <td><input type="text" name="addrOne" value="" required/></td>
                </tr>

                <tr>
                    <td class="right">Address 2:</td>
                    <td><input type="text" name="addrTwo" value=""/></td>
                </tr>

                <tr>
                    <td class="right">City</td>
                    <td><input type="text" name="city" value="" required/></td>
                </tr>

                <tr>
                    <td class="right">State:</td>
                    <td><input type="text" name="state" value="" required/></td>
                </tr>

                <tr>
                    <td class="right">Zip Code:</td>
                    <td><input type="text" name="zip" value="" required/></td>
                </tr>

                <tr>
                    <td class="right">Email Address:</td>
                    <td><input type="text" name="emailAddr" value="" required/></td>
                </tr>
            </table>
            <input type="submit" name="submit" value="Submit"/>
        </form>
        </div>
        <%@include file="includes/footer.jsp" %>
        </div>
    </body>
</html>
