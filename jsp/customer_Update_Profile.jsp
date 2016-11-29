<%@ include file="customer_top.jsp" %>
<%@ include file="connection.jsp"%>
<%@page import="java.sql.*"%>
<center><h3>Customer-Update Profile</h3>
<script type="text/javascript">
    function check()   
{   
var passw=  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;    
var txtpass=document.forms["frm"]["password"];
var mno=/^\d{10}$/;
var txtcontactnumber=document.forms["frm"]["contactnumber"];
if(!txtpass.value.match(passw))   
{   

alert('Wrong Password Format')  
return false;  
}  
else if(!txtcontactnumber.value.match(mno))
    {
        alert('Wrong Mobile Number Format')  
return false;  
        }
else  
{   
return true;
}  
}  

</script>
    <form name="frm" action="submit" method="post">
        <%!String accountnumber="";
String fullname=""; 
                                                                             String address="";
                                                                              String contactnumber="";

                      %>
        <%
        try
                {
            Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select * from tblcustomer where accountnumber='"+application.getAttribute("customeraccoutnumber")+"'");
									while(rs.next())
									{
                                                                            accountnumber=rs.getString("accountnumber");
                                                                             fullname=rs.getString("fullname"); 
                                                                             address=rs.getString("address");
                                                                              contactnumber=rs.getString("contactnumber");
                                                                              
                                                                                }
        }catch(Exception e1){}
        
        
        %>
        <table style="width:50%">
            
            <tr>
                <td>Account Number</td>
                <td>
                    
                    
                    <input type="text"  name="accountnumber" value='<%=accountnumber%>' placeholder="Account Number">
                </td>
            </tr>
            
            <tr>
                <td>Full Name</td>
                <td>
                    
                    
                    <input type="text"  name="fullname" value='<%=fullname%>' placeholder="FullName">
                </td>
            </tr>
            <tr>
                <td>Address</td>
                <td>
                    
                    
                    <input type="text"  name="address" value='<%=address%>' placeholder="Address">
                </td>
            </tr>
            <tr>
                <td>Contact Number</td>
                <td>
                    
                    
                    <input type="text"  name="contactnumber" value='<%=contactnumber%>' placeholder="Contact Number">
                </td>
            </tr>
             
            <tr>
                <td><input type="submit" name="btn" onclick="return check();" Value="Customer_Update_Profile">
                </td>
            </tr>
        </table>
        
      
        
</form></center>