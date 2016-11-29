<%@ include file="top.jsp" %>

<table style="background-color:black; font-weight:bold; font-size:15px">
    <tr>
        <td><a href="customer_home.jsp">Employee Home</a></td>
         <td><a href="customer_Update_Profile.jsp">My Profile</a></td>
         <td><a href="customer_view_balance.jsp">My Transactions</a></td>
          <td><a href="customer_add_benefeciary.jsp">Add Benefeciary</a></td>
          <td><a href=" customer_view_beneficiaries.jsp">View Beneficiaries</a></td>
          <td><a href="customer_service_request.jsp">Service Request</a></td>
           <td><a href="customer_inbox.jsp">Inbox</a></td>
         <td><a href="logout.jsp"> Logout</a></td>
        </tr>
       </table>
        <form method="post">
            <h1> If you want to logout then please press following button</h1>
        <input type="submit" value="Signout" name="btn">
    </form>
             <%
try
        {
String b=request.getParameter("btn");
if(b.equals("Signout"))
    {
  application.setAttribute("customeraccoutnumber", null);
    response.sendRedirect("index.jsp");
}
}catch(Exception w){}
%>
  