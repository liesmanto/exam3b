<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Customers"%>
<% Customers customer = (Customers) request.getAttribute("customer");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Natasha's Exam 3b</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
    </head>
    <body>
        
        <%@include file="includes/header.jsp" %>
        
        <%@include file="includes/nav.jsp" %>
        
        <div class="main">
            <div class="updateForm">
            <h1>Update Customer</h1>
            <form name="updateForm" action="updateCustomer" method="post">

                <table class="add">
                    <tr>
                        <td class="right">Customer ID:</td>
                        <td><input type="text" name="custID" value="<%= customer.getCustID()%>" readonly/></td>
                    </tr>
                    <tr>
                        <td class="right">First Name:</td>
                        <td><input type="text" name="firstName" value="<%= customer.getFirstName()%>" required/></td>
                    </tr>

                    <tr>
                        <td class="right">Last Name:</td>
                        <td><input type="text" name="lastName" value="<%= customer.getLastName()%>" required/></td>
                    </tr>

                    <tr>
                        <td class="right">Address 1:</td>
                        <td><input type="text" name="addrOne" value="<%= customer.getAddrOne()%>" required/></td>
                    </tr>

                    <tr>
                        <td class="right">Address 2:</td>
                        <td><input type="text" name="addrTwo" value="<%= customer.getAddrTwo()%>"/></td>
                    </tr>

                    <tr>
                        <td class="right">City</td>
                        <td><input type="text" name="city" value="<%= customer.getCity()%>" required/></td>
                    </tr>

                    <tr>
                        <td class="right">State:</td>
                        <td><input type="text" name="state" value="<%= customer.getState()%>" required/></td>
                    </tr>

                    <tr>
                        <td class="right">Zip Code:</td>
                        <td><input type="text" name="zip" value="<%= customer.getZip()%>" required/></td>
                    </tr>

                    <tr>
                        <td class="right">Email Address:</td>
                        <td><input type="text" name="emailAddr" value="<%= customer.getEmailAddr()%>" required/></td>
                    </tr>
                </table>
                <input type="submit" name="submit" value="Update"/>
            </form>
        </div>
     </div>
     <%@include file="includes/footer.jsp" %>          
    </body>
</html>
