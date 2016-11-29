<%@ include file="customer_top.jsp" %>
<%@ include file="connection.jsp"%>
<%@page import="java.sql.*"%>

<center><h2>Service Request</h2>
<form method="post" action="submit">
<table style="text-align:left; width:50%">
    <tr>
        <td>Do You Want To Apply,Then Press following Button ?</td>
    </tr>
      <tr>
        <td><input type="text" value='<%=request.getParameter("description")%>' name="description"></td>
    </tr>
     <tr>
        <td><input type="Submit" value="Apply" name="btn"></td>
    </tr>
   
</table>




</form></center>
