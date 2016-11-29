<%@ include file="customer_top.jsp" %>
<%@ include file="connection.jsp"%>
<%@page import="java.sql.*"%>
								<form  method="post">
									<div class="title">Customer<h3>View Beneficiaries</h3></div>
									<table style="width:100%; text-align:center" border>
									<tr style="width:100%; text-align:center">
									<th style="text-align:center">Account Number
									</th>
									<th style="text-align:center">Name
									</th>
									<th style="text-align:center">Contact Number
									</th>
									<th style="text-align:center">Dated
									</th>
									<th style="text-align:center">Status
									</th>
                                                                        
                                                                          <th style="text-align:center">Change Status
									</th>
                                                                          <th style="text-align:center">Transfer Money
									</th>
									</tr>
									<%
									try
									{
								Statement st=con.createStatement();
									ResultSet rs=st.executeQuery("select * from tblrequest where fromaccountnumber='"+application.getAttribute("customeraccoutnumber")+"' and servicename='Add_Beneficiary'");
									while(rs.next())
									{
                                                                            String description=rs.getString("description");
                                                                             String status=rs.getString("status"); 
                                                                             String dated=rs.getString("dated");
                                                                             String[] str=description.split(",");
                                                                             
                                                                             
                                                                             
                                                                            
										out.print("<tr>");
                                                                                out.print("<td>");
										out.print(str[2]);
										out.print("</td>");
										out.print("<td>");
										out.print(str[1]);
										out.print("</td>");
										out.print("<td>");
										out.print(str[3]);
										out.print("</td>");
										out.print("<td>");
										out.print(dated);
										out.print("</td>");
										out.print("<td>");
										out.print(status);
										out.print("</td>");
                                                                             
										out.print("<td>");
                                                                                if(!status.equals("Not Approved Yet"))
										out.print("<a href='customer_Change_Beneficiary_Status.jsp?name="+str[1]+"&accountnumber="+str[2]+"&contactnumber="+str[3]+"'>Change Status</a>");
										out.print("</td>");
                                                                                out.print("<td>");
                                                                                if(!status.equals("Not Approved Yet") && !status.equals("DeActivate"))
										out.print("<a href='customer_Transfer_Money.jsp?accouttowhichtransfer="+str[2]+"'>Transfer Money</a>");
										out.print("</td>");
										out.print("</tr>");
									}
									
									}catch(Exception e1){out.print(""+e1);}
									%>
									</table>
								</form>