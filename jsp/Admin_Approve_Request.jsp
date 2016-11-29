<%@ include file="admin_top.jsp" %>
<%@ include file="connection.jsp"%>
<%@page import="java.sql.*"%>

<center><h2>Service Request</h2>
<form method="post" action="submit">
<table style="text-align:left; width:50%">
    <tr>
        <td colspan="2">Do You Want To Approve,Then Press following Button ?</td>
    </tr>
     <tr>
         <td>Account Number</td>   <td><input type="text" value='<%=request.getParameter("accountnumber")%>' name="accountnumber"></td>
    </tr>
     <tr>
         <td>Service</td>   <td><input type="text" value='<%=request.getParameter("servicename")%>' name="servicename"></td>
    </tr>
    <tr>
         <td>Dated</td>   <td><input type="text" value='<%=request.getParameter("dated")%>' name="dated"></td>
    </tr>
      <tr>
      <td>Description</td>    <td><input type="text" value='<%=request.getParameter("description")%>' name="description"></td>
    </tr>
     <tr>
        <td><input type="Submit" value="Approve" name="btn"></td>
    </tr>
   
</table>




</form></center>
