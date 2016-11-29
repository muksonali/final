   <%
if(application.getAttribute("adminusername")!=null)
    {%>

<%@ include file="top.jsp" %>
<table style="background-color:black; font-weight:bold; font-size:20px">
    <tr>
        <td><a href="admin_home.jsp">Admin Home</a></td>
         <td><a href="admin_add_new_customer.jsp">Add New Customer</a></td>
          <td><a href="admin_view_customers.jsp">View Customers</a></td>
            <td><a href="admin_view_customer_balances.jsp">View Customer's Balances</a></td>
               <td><a href="Admin_View_Transfer.jsp">View Customer's Transfer</a></td>
                 <td><a href="admin_logout.jsp">Sign Out</a></td>
        </tr>
       </table>
       <%
} else {
response.sendRedirect("error.jsp");
}%>
