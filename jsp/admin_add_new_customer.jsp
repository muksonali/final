<%@ include file="admin_top.jsp" %>
<center><h3>Admin-Add New Customer</h3>
<script type="text/javascript">
    function check()   
{   
var passw=  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;    
var txtpass=document.forms["frm"]["password"];
var mno=/^\d{10}$/;
var txtcontactnumber=document.forms["frm"]["contactnumber"];
var amt=document.forms["frm"]["initiallydepositedamount"];
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
        else if(amt.value<1000)
            { alert('Ammount is not SufficientMin.1000/-is required');  
return false;  
                }
else  
{   
return true;
}  
}  

</script>
<form name="frm" action="submit" method="post">
									
									<table style="width:50%">
                                                                             <tr>
                                                                                 <td>Account Number</td>
                                                                                 <td>
										<input type="text"   name="accountnumber" placeholder="Account Number" required>
                                                                         </td></tr>
                                                                         <tr>
                                                                             <td>Password<br><font size="-2">(at least one numeric digit,<br> one uppercase,<br> and one lowercase letter)</font></td>
                                                                             <td>
                                                                                 
									
										<input type="password"  name="password" placeholder="Password" required>
                                                                             </td>
                                                                         </tr>
                                                                         
                                                                        
                                                                           <tr>
                                                                             <td>Full Name</td>
                                                                             <td>
                                                                                 
									
										<input type="text"  name="fullname" placeholder="FullName" required>
                                                                             </td>
                                                                         </tr>
                                                                           <tr>
                                                                             <td>Address</td>
                                                                             <td>
                                                                                 
									
										<input type="text"  name="address" placeholder="Address" required>
                                                                             </td>
                                                                         </tr>
                                                                         <tr>
                                                                             <td>Mobile Number<br><font size="-2">(Only 10 digit number without<br> country code eg 9999999999)</font></td>
                                                                             <td>
                                                                                 
									
										<input type="text"  name="contactnumber" placeholder="Mobile Number" required>
                                                                             </td>
                                                                         </tr>
                                                                          <tr>
                                                                             <td>Initially Deposited Amount<br>(Min.1000/-)</td>
                                                                             <td>
                                                                                 
									
										<input type="text"  name="initiallydepositedamount" required placeholder="Initially Deposited Amount">
                                                                             </td>
                                                                         </tr>
                                                                         <tr>
                                                                           <td><input type="submit" name="btn" onclick="return check();" Value="Admin_Add_Customer">
                                                                           </td>
                                                                       </tr>
                                                                   </table>
								
									
                                                                         
                                                                 </form></center>