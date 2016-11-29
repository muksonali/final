<%@ include file="customer_top.jsp" %>
<%@ include file="connection.jsp"%>
<%@page import="java.sql.*"%>
<center><h3>Customer-Transfer Money</h3>



    <form name="frm" action="submit" method="post">
 
        <table style="width:50%">
            
           
            
            <tr>
                <td>Benefeceiry Account No.</td>
                <td>
                    
                    
                    <input type="text" required  name="toaccountnumber" value='<%=request.getParameter("accouttowhichtransfer")%>' placeholder="FullName">
                </td>
            </tr>
            <tr>
                <td>Amount</td>
                <td>
                    
                    
                    <input type="text" required name="amount" placeholder="Amount">
                </td>
            </tr>
            <tr>
                <td>Date on which to be transferred</td>
                <td>
                    
                    
                    <input type="date" required name="dateonwhichtransfer"  placeholder="Dated">
                </td>
            </tr>
             
            <tr>
                <td><input type="submit" name="btn" Value="Customer_Transfer_Money">
                </td>
            </tr>
        </table>
        
      
        
</form></center>