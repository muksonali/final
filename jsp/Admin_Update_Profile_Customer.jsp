<%@ include file="admin_top.jsp" %>
<center><h3>Admin-Update Customer</h3>
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
    <form  name="frm"  action="submit" method="post">
        
        <table style="width:50%">
            
            <tr>
                <td>Account Number</td>
                <td>
                    
                    
                    <input type="text"  name="accountnumber" value='<%=request.getParameter("accountnumber")%>' placeholder="Account Number">
                </td>
            </tr>
            
            <tr>
                <td>Full Name</td>
                <td>
                    
                    
                    <input type="text"  name="fullname" value='<%=request.getParameter("fullname")%>' placeholder="FullName">
                </td>
            </tr>
            <tr>
                <td>Address</td>
                <td>
                    
                    
                    <input type="text"  name="address" value='<%=request.getParameter("address")%>' placeholder="Address">
                </td>
            </tr>
            <tr>
                <td>Mobile Number<br><font size="-2">(Only 10 digit number without<br> country code eg 9999999999)</font></td>
                <td>
                    
                    
                    <input type="text"  name="contactnumber" value='<%=request.getParameter("contactnumber")%>' placeholder="Mobile Number">
                </td>
            </tr>
             <tr>
                <td>Password<br><font size="-2">(at least one numeric digit,<br> one uppercase,<br> and one lowercase letter)</font></td>
                <td>
                    
                    
                    <input type="text"  name="password" value='<%=request.getParameter("pwd")%>' placeholder="Password">
                </td>
            </tr>
            <tr>
                <td><input type="submit" name="btn" onclick="return check();" Value="Admin_Update_Customer">
                </td>
                 <td><input type="submit" name="btn" Value="Admin_Delete_Customer">
                </td>
            </tr>
        </table>
        
      
        
</form></center>