<%@ include file="admin_top.jsp" %>
<%@ include file="connection.jsp"%>
<%@page import="java.sql.*"%>
								<form  method="post">
									<div class="title">Admin<h3>View Transfer</h3></div>
									<table style="width:100%; text-align:center" border>
									<tr style="width:100%; text-align:center">
									<th style="text-align:center">From Account Number
									</th>
									<th style="text-align:center">To Account Number
									</th>
                                                                         <th style="text-align:center">Dated
									</th>
									<th style="text-align:center">Amount
									</th>
									<th style="text-align:center">Date on which Transfer
									</th>
                                                                         <th style="text-align:center">Status
									</th>
                                                                        
									<th style="text-align:center">Transfer
									</th>
                                                                        
                                                                        
									</tr>
									<%
									try
									{
								Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select * from tbltransfer");
									while(rs.next())
									{
                                                                            String fromaccountnumber=rs.getString("fromaccountnumber");
                                                                             String toaccountnumber=rs.getString("toaccountnumber"); 
                                                                             String dated=rs.getString("dated");
                                                                              String amount=rs.getString("amount");
                                                                               String dateonwhichtransfer=rs.getString("dateonwhichtransfer");
                                                                                String status=rs.getString("status");
                                                                             
                                                                             
                                                                            
										out.print("<tr>");
                                                                                out.print("<td>");
										out.print(fromaccountnumber);
										out.print("</td>");
										out.print("<td>");
										out.print(toaccountnumber);
										out.print("</td>");
										out.print("<td>");
										out.print(dated);
										out.print("</td>");
										out.print("<td>");
										out.print(amount);
										out.print("</td>");
										out.print("<td>");
										out.print(dateonwhichtransfer);
										out.print("</td>");
                                                                                out.print("<td>");
										out.print(status);
										out.print("</td>");
										out.print("<td>");
										out.print("<a href='admin_transfer_money.jsp?fromaccountnumber="+fromaccountnumber+"&toaccountnumber="+toaccountnumber+"&dated="+dated+"&dateonwhichtransfer="+dateonwhichtransfer+"&amount="+amount+"'>Transfer</a>");
										out.print("</td>");
										out.print("</tr>");
									}
									
									}catch(Exception e1){out.print(""+e1);}
									%>
									</table>
								</form>