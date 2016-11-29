<%@ include file="customer_top.jsp" %>
<center><h3>Customer-Change Benefeciary Status</h3>
<form action="submit" method="post">
									
									<table style="width:50%">
                                                                              <tr>
                                                                                 <td>Beneficiary FullName</td>
                                                                                 <td>
										<input type="text"   name="fullname" value='<%=request.getParameter("name")%>' placeholder="Beneficiary FullName" required>
                                                                         </td></tr>
                                                                         
                                                                             <tr>
                                                                                 <td>Account Number</td>
                                                                                 <td>
										<input type="text"   name="accountnumber" value='<%=request.getParameter("accountnumber")%>' placeholder="Account Number" required>
                                                                         </td></tr>
                                                                         
                                                                         
                                                                         <tr>
                                                                                 <td>Beneficiary Contact Number</td>
                                                                                 <td>
										<input type="text"   name="contactnumber" value='<%=request.getParameter("contactnumber")%>' placeholder="Beneficiary Contact Number" required>
                                                                         </td></tr>
                                                                         
                                                                          
                                                                        
                                                                         
                                                                         <tr>
                                                                           <td><input type="submit" name="btn" Value="Customer_Activate_Beneficiary">
                                                                           </td>
                                                                           <td><input type="submit" name="btn" Value="Customer_DeActivate_Beneficiary">
                                                                           </td>
                                                                       </tr>
                                                                   </table>
								
									
                                                                         
                                                                 </form></center>