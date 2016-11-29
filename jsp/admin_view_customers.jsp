<%@ include file="admin_top.jsp" %>
<%@ include file="connection.jsp"%>
<%@page import="java.sql.*"%>
								<form  method="post">
									<div class="title">Admin<h3>View Customers</h3></div>
									<table style="width:100%; text-align:center" border>
									<tr style="width:100%; text-align:center">
									<th style="text-align:center">Account Number
									</th>
									<th style="text-align:center">Password
									</th>
									<th style="text-align:center">Dated
									</th>
									<th style="text-align:center">FullName
									</th>
									<th style="text-align:center">Address
									</th>
                                                                         <th style="text-align:center">Contact No.
									</th>
                                                                          <th style="text-align:center">Update Profile
									</th>
									</tr>
									<%
									try
									{
								Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select * from tblcustomer");
									while(rs.next())
									{
                                                                            String accountnumber=rs.getString("accountnumber");
                                                                             String pwd=rs.getString("password"); 
                                                                             String dated=rs.getString("dated");
                                                                              String fullname=rs.getString("fullname");
                                                                               String address=rs.getString("address");
                                                                                String contactnumber=rs.getString("contactnumber");
                                                                             
                                                                             
                                                                            
										out.print("<tr>");
                                                                                out.print("<td>");
										out.print(accountnumber);
										out.print("</td>");
										out.print("<td>");
										out.print(pwd);
										out.print("</td>");
										out.print("<td>");
										out.print(dated);
										out.print("</td>");
										out.print("<td>");
										out.print(fullname);
										out.print("</td>");
										out.print("<td>");
										out.print(address);
										out.print("</td>");
                                                                                out.print("<td>");
										out.print(contactnumber);
										out.print("</td>");
										out.print("<td>");
										out.print("<a href='Admin_Update_Profile_Customer.jsp?accountnumber="+accountnumber+"&pwd="+pwd+"&dated="+dated+"&fullname="+fullname+"&address="+address+"&contactnumber="+contactnumber+"'>Update Profile</a>");
										out.print("</td>");
										out.print("</tr>");
									}
									
									}catch(Exception e1){out.print(""+e1);}
									%>
									</table>
								</form>