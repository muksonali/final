<%@ include file="admin_top.jsp" %>
<%@ include file="connection.jsp"%>
<%@page import="java.sql.*"%>
<center><h3>Admin-Transfer Money</h3>
    <form  action="submit" method="post">
 
        <table style="width:50%">
            
            <tr>
                <td>From Account No.</td>
                <td>
                    
                    
                    <input type="text" required  name="fromaccountnumber2" value='<%=request.getParameter("fromaccountnumber")%>'>
                </td>
            </tr>
            
            <tr>
                <td>To Account No.</td>
                <td>
                    
                    
                    <input type="text" required  name="toaccountnumber2" value='<%=request.getParameter("toaccountnumber")%>'>
                </td>
            </tr>
             <tr>
                <td>dated</td>
                <td>
                    
                    
                    <input type="text" required name="dated2" value='<%=request.getParameter("dated")%>' placeholder="Amount">
                </td>
            </tr>
            <tr>
                <td>Amount</td>
                <td>
                    
                    
                    <input type="text" required name="amount2"  value='<%=request.getParameter("amount")%>' placeholder="Amount">
                </td>
            </tr>
            <tr>
                <td>Date on which to be transferred</td>
                <td>
                    
                    
                    <input type="date" required value='<%=request.getParameter("dateonwhichtransfer")%>' name="dateonwhichtransfer2"  placeholder="Dated">
                </td>
            </tr>
             
            <tr>
                <td><input type="submit" name="btn" Value="Admin_Transfer_Money">
                </td>
            </tr>
        </table>
        
      
        
</form></center>