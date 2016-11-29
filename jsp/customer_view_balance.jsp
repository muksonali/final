<%@ include file="customer_top.jsp" %>
<%@ include file="connection.jsp"%>
<%@page import="java.sql.*"%>
								<form  method="post">
									<div class="title"><h3>My  Transaction</h3></div>
									<table style="width:100%; text-align:center" border>
									<tr style="width:100%; text-align:center">
									<th style="text-align:center">Account Number
									</th>
									<th style="text-align:center">Dated
									</th>
                                                                         <th style="text-align:center">Particulars
									</th>
									<th style="text-align:center">Amount Withdrawn
									</th>
									<th style="text-align:center">Amount Deposited
									</th>
									<th style="text-align:center">Balance
									</th>
                                                                        
                                                                        
									</tr>
									<%
									try
									{
								Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select * from tbltransaction where accountnumber='"+application.getAttribute("customeraccoutnumber")+"'");
									while(rs.next())
									{
                                                                            String accountnumber=rs.getString("accountnumber");
                                                                             String dated=rs.getString("dated"); 
                                                                             String particular=rs.getString("particular");
                                                                              String amountwithdrawn=rs.getString("amountwithdrawn");
                                                                               String amountdeposited=rs.getString("amountdeposited");
                                                                                String balance=rs.getString("balance");
                                                                             
                                                                             
                                                                            
										out.print("<tr>");
                                                                                out.print("<td>");
										out.print(accountnumber);
										out.print("</td>");
										out.print("<td>");
										out.print(dated);
										out.print("</td>");
										out.print("<td>");
										out.print(particular);
										out.print("</td>");
										out.print("<td>");
										out.print(amountwithdrawn);
										out.print("</td>");
										out.print("<td>");
										out.print(amountdeposited);
										out.print("</td>");
                                                                                out.print("<td>");
										out.print(balance);
										out.print("</td>");
										
										out.print("</tr>");
									}
									
									}catch(Exception e1){out.print(""+e1);}
									%>
									</table>
								</form>