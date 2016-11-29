<%@ include file="customer_top.jsp" %>
<%@ include file="connection.jsp"%>
<%@page import="java.sql.*"%>
								<form  method="post">
									<div class="title">Customer<h3>Inbox</h3></div>
									<table style="width:100%; text-align:center" border>
									<tr style="width:100%; text-align:center">
									<th style="text-align:center">Account number
									</th>
									<th style="text-align:center">Service
									</th>
									<th style="text-align:center">Dated
									</th>
									<th style="text-align:center">Description
									</th>
									<th style="text-align:center">Status
									</th>
                                                                       
									</tr>
									<%
									try
									{
								Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select * from tblrequest where fromaccountnumber='"+application.getAttribute("customeraccoutnumber")+"'");
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
                                                                             
										
										out.print("</tr>");
									}
									
									}catch(Exception e1){out.print(""+e1);}
									%>
									</table>
								</form>