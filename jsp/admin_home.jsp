<%@ include file="admin_top.jsp" %>
<%@ include file="connection.jsp"%>
<%@page import="java.sql.*"%>
								<form  method="post">
									<div class="title">Admin<h3>View Requests</h3></div>
									<table style="width:100%; text-align:center" border>
									<tr style="width:100%; text-align:center">
									<th style="text-align:center">Account Number
									</th>
									<th style="text-align:center">Service
									</th>
									<th style="text-align:center">Dated
									</th>
									<th style="text-align:center">Description
									</th>
									<th style="text-align:center">Status
									</th>
                                                                         <th style="text-align:center">Change Status
									</th>
                                                                          
									</tr>
									<%
									try
									{
								Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select * from tblrequest where status='Not Approved Yet'");
									while(rs.next())
									{
                                                                            String accountnumber=rs.getString("fromaccountnumber");
                                                                             String servicename=rs.getString("servicename"); 
                                                                             String dated=rs.getString("dated");
                                                                              String description=rs.getString("description");
                                                                               String status=rs.getString("status");
                                                                              
                                                                             
                                                                             
                                                                            
										out.print("<tr>");
                                                                                out.print("<td>");
										out.print(accountnumber);
										out.print("</td>");
										out.print("<td>");
										out.print(servicename);
										out.print("</td>");
										out.print("<td>");
										out.print(dated);
										out.print("</td>");
										out.print("<td>");
										out.print(description);
										out.print("</td>");
										out.print("<td>");
										out.print(status);
										out.print("</td>");
                                                                             
										out.print("<td>");
										out.print("<a href='Admin_Approve_Request.jsp?accountnumber="+accountnumber+"&servicename="+servicename+"&dated="+dated+"&description="+description+"&status="+status+"'>Click To Approve</a>");
										out.print("</td>");
										out.print("</tr>");
									}
									
									}catch(Exception e1){out.print(""+e1);}
									%>
									</table>
								</form>