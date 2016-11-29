/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.*;
import java.net.*;

import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
/**
 *
 * @author PC
 */
public class submit extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet submit</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet submit at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
    * Handles the HTTP <code>GET</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
    * Handles the HTTP <code>POST</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       // processRequest(request, response);
        PrintWriter out=response.getWriter();
           ServletContext session=request.getSession().getServletContext();//if want to change
		String accountnumber=request.getParameter("accountnumber");
		String pwd=request.getParameter("password");
		
		String dated=request.getParameter("dated");
		String fullname=request.getParameter("fullname");
		
                
                String address=request.getParameter("address");
                  String contactnumber=request.getParameter("contactnumber");
                      String initiallydepositedamount=request.getParameter("initiallydepositedamount"); 
                       String description=request.getParameter("description");
                     String servicename=request.getParameter("servicename");
                     
                    String b=request.getParameter("btn");
               String toaccountnumber=request.getParameter("toaccountnumber");
               String amount=request.getParameter("amount");
               String dateonwhichtransfer=request.getParameter("dateonwhichtransfer");
               
                String fromaccountnumber2=request.getParameter("fromaccountnumber2");
                String toaccountnumber2=request.getParameter("toaccountnumber2");
               String amount2=request.getParameter("amount2");
               String dateonwhichtransfer2=request.getParameter("dateonwhichtransfer2");
                String dated2=request.getParameter("dated2");
               
		  // try
	      //  {
		if(b.equals("Admin_Add_Customer"))
		{
			try
			{
                            connection c2=new connection();
                            Connection con2=c2.getConnection();
                            Statement st2=con2.createStatement();
                            ResultSet rs2=st2.executeQuery("select * from tblcustomer where accountnumber='"+accountnumber+"'");
                            if(rs2.next())
                            {
                                out.print("<script type='text/javascript'>alert('Accout Number Already Exist.Please Choose Another one')</script>");
                                response.sendRedirect("admin_add_new_customer.jsp");
                            }
                                else
                                {
                            { java.util.Date d=new java.util.Date();
                            java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MM-yy");
			connection c=new connection();
			Connection con=c.getConnection();
		Statement st=con.createStatement();
		st.executeUpdate("insert into tblcustomer(accountnumber,password,dated,fullname,address,contactnumber) values('"+accountnumber+"','"+pwd+"','"+sdf.format(d)+"','"+fullname+"','"+address+"','"+contactnumber+"')");
                
		con.close();
                            }
                            {connection c=new connection();
                            java.util.Date d=new java.util.Date();
                            java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MM-yy");
                                    
                Connection con=c.getConnection();
		Statement st=con.createStatement();
		st.executeUpdate("insert into tbltransaction(accountnumber,dated,particular,amountwithdrawn,amountdeposited,balance) values('"+accountnumber+"','"+sdf.format(d)+"','Initial Amount','','"+initiallydepositedamount+"','"+initiallydepositedamount+"')");
                
		con.close();
                            }
                            
		//out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
		response.sendRedirect("admin_view_customers.jsp");
                                }
			}catch(Exception e1){out.print(""+e1);}
		}
                    try {
                if (b.equals("Admin_Update_Customer")) {

connection c=new connection();
			Connection con=c.getConnection();
                    Statement st = con.createStatement();
                    st.executeUpdate("update tblcustomer set password='"+pwd+"',fullname='" + fullname + "',address='" + address + "',contactnumber='" + contactnumber + "' where accountnumber='" + accountnumber + "'");

                    con.close();
                    //out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
                    response.sendRedirect("admin_view_customers.jsp");
                }
            } catch (Exception e1) {
                out.print("" + e1);
            }
                
                try {
                if (b.equals("Admin_Delete_Customer")) {
                    {
connection c=new connection();
			Connection con=c.getConnection();
                    Statement st = con.createStatement();
                    st.executeUpdate("delete from tblcustomer  where accountnumber='" + accountnumber + "'");

                    con.close();
                    }
                     {
connection c=new connection();
			Connection con=c.getConnection();
                    Statement st = con.createStatement();
                    st.executeUpdate("delete from tbltransaction  where accountnumber='" + accountnumber + "'");

                    con.close();
                    }
                     {
connection c=new connection();
			Connection con=c.getConnection();
                    Statement st = con.createStatement();
                    st.executeUpdate("delete from tblrequest  where fromaccountnumber='" + accountnumber + "'");

                    con.close();
                    }
                     {
connection c=new connection();
			Connection con=c.getConnection();
                    Statement st = con.createStatement();
                    st.executeUpdate("delete from tbltransfer  where fromaccountnumber='" + accountnumber + "'");

                    con.close();
                    }
                    //out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
                    response.sendRedirect("admin_view_customers.jsp");
                    
                }
            } catch (Exception e1) {
                out.print("" + e1);
            }
                
                
                
                    
                      try {
                if (b.equals("Customer_Transfer_Money")) {
                    
                    
                               double balance=0;
                            {
                                connection c=new connection();

			Connection con=c.getConnection();
                    Statement st = con.createStatement();
                 ResultSet rs=   st.executeQuery("select * from tbltransaction where accountnumber='"+session.getAttribute("customeraccoutnumber")+"'");
while(rs.next())
{
   balance=Double.parseDouble(rs.getString("balance"));
}
                    con.close();
                            }
                    
                    if((balance-Double.parseDouble(amount))>1000)
                    {
 java.util.Date d=new java.util.Date();
                            java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MM-yy");
connection c=new connection();

			Connection con=c.getConnection();
                    Statement st = con.createStatement();
                    st.executeUpdate("insert into tbltransfer(fromaccountnumber,toaccountnumber,dated,amount,dateonwhichtransfer,status)values('"+session.getAttribute("customeraccoutnumber")+"','"+toaccountnumber+"','"+sdf.format(d)+"','"+amount+"','"+dateonwhichtransfer+"','pending')");

                    con.close();
                    //out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
                    response.sendRedirect("customer_view_beneficiaries.jsp");
                    }
                    else
                    {
                                   response.sendRedirect("error2.jsp");
                    }
                }
            } catch (Exception e1) {
                out.print("" + e1);
            }
               
               
               
                    try {
                if (b.equals("Admin_Transfer_Money")) {
                    {
connection c=new connection();

			Connection con=c.getConnection();
                    Statement st = con.createStatement();
                    st.executeUpdate("update tbltransfer set status='Completed' where fromaccountnumber='"+fromaccountnumber2+"'and toaccountnumber='"+toaccountnumber2+"' and dated='"+dated2+"'and amount='"+amount2+"' and dateonwhichtransfer='"+dateonwhichtransfer2+"'");

                    con.close();
                    //out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
                  //  response.sendRedirect("Admin_View_Transfer.jsp");
                    }
                    {
                       double  balance=0,newbalance=0;
                       
                       {connection c=new connection();
			Connection con=c.getConnection();
                    Statement st = con.createStatement();
               ResultSet rs=     st.executeQuery("select * from tbltransaction where accountnumber='"+fromaccountnumber2+"'");
while(rs.next())
{
    balance=Double.parseDouble(rs.getString("balance"));
    
} con.close();
                       }      
               newbalance=balance-Double.parseDouble(amount2);
               {connection c=new connection();
                            java.util.Date d=new java.util.Date();
                            java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MM-yy");
                                    
                Connection con=c.getConnection();
		Statement st=con.createStatement();
		st.executeUpdate("insert into tbltransaction(accountnumber,dated,particular,amountwithdrawn,amountdeposited,balance) values('"+fromaccountnumber2+"','"+sdf.format(d)+"','Transfer Money to"+toaccountnumber2+"','"+amount2+"','','"+newbalance+"')");
                
		con.close();
                            }
                   
                    //out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
                   
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    {
                       double  balance=0,newbalance=0;
                       
                       {connection c=new connection();
			Connection con=c.getConnection();
                    Statement st = con.createStatement();
               ResultSet rs=     st.executeQuery("select * from tbltransaction where accountnumber='"+toaccountnumber2+"'");
while(rs.next())
{
    balance=Double.parseDouble(rs.getString("balance"));
    
} con.close();
                       }      
               newbalance=balance+Double.parseDouble(amount2);
               {connection c=new connection();
                            java.util.Date d=new java.util.Date();
                            java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MM-yy");
                                    
                Connection con=c.getConnection();
		Statement st=con.createStatement();
		st.executeUpdate("insert into tbltransaction(accountnumber,dated,particular,amountwithdrawn,amountdeposited,balance) values('"+toaccountnumber2+"','"+sdf.format(d)+"','Transferred Money from"+fromaccountnumber2+"','','"+amount2+"','"+newbalance+"')");
                
		con.close();
                            }
                   
                    //out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
                    response.sendRedirect("admin_view_customer_balances.jsp");
                    }
                }
            } catch (Exception e1) {
                out.print("" + e1);
            }
               
               
               
               
                    
                      try {
                if (b.equals("Customer_Add_Beneficiary")) {
                    
                    
                    
 java.util.Date d=new java.util.Date();
                            java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MM-yy");
                            int g=0;
                
                            {
                            connection c=new connection();

			Connection con=c.getConnection();
                    Statement st = con.createStatement();
                 ResultSet rs=   st.executeQuery("select * from tblcustomer where accountnumber='"+accountnumber+"' and fullname='"+fullname+"' and contactnumber='"+contactnumber+"'");
if(rs.next())
{
    g=1;
}
                    con.close();
                            }
                            if(g==1)
                            {
connection c=new connection();

			Connection con=c.getConnection();
                    Statement st = con.createStatement();
                    st.executeUpdate("insert into tblrequest(fromaccountnumber,servicename,dated,description,status)values('"+session.getAttribute("customeraccoutnumber")+"','Add_Beneficiary','"+sdf.format(d)+"','"+(session.getAttribute("customeraccoutnumber")+","+fullname+","+accountnumber+","+contactnumber)+"','Not Approved Yet')");

                    con.close();
                    //out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
                    response.sendRedirect("customer_view_beneficiaries.jsp");
                            }
                            if(g==0)
                            {
                                response.sendRedirect("error.jsp");
                               // out.print("<script type='text/javascript'>alert('Wrong Info Entered')</script>");
                            }
                }
            } catch (Exception e1) {
                out.print("" + e1);
            }
                    
                     try
                    {
                         if (b.equals("Customer_Activate_Beneficiary")) {

connection c=new connection();

			Connection con=c.getConnection();
 //  
                    Statement st = con.createStatement();
                    st.executeUpdate("update tblrequest set status='Activate' where fromaccountnumber='"+session.getAttribute("customeraccoutnumber")+"' and servicename='Add_Beneficiary' and description='"+(session.getAttribute("customeraccoutnumber")+","+fullname+","+accountnumber+","+contactnumber)+"' ");

                    con.close();
                    //out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
                response.sendRedirect("customer_view_beneficiaries.jsp");
                }
                
                    }catch(Exception e1){out.print(""+e1);}    
             
                    try
                    {
                         if (b.equals("Customer_DeActivate_Beneficiary")) {

connection c=new connection();

			Connection con=c.getConnection();
 //  
                    Statement st = con.createStatement();
                    st.executeUpdate("update tblrequest set status='DeActivate' where fromaccountnumber='"+session.getAttribute("customeraccoutnumber")+"' and servicename='Add_Beneficiary' and description='"+(session.getAttribute("customeraccoutnumber")+","+fullname+","+accountnumber+","+contactnumber)+"' ");

                    con.close();
                    //out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
                response.sendRedirect("customer_view_beneficiaries.jsp");
                }
                
                    }catch(Exception e1){out.print(""+e1);}    
                    try
                    {
                         if (b.equals("Apply")) {
 java.util.Date d=new java.util.Date();
                            java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MM-yy");
connection c=new connection();

			Connection con=c.getConnection();
 
                    Statement st = con.createStatement();
                    st.executeUpdate("insert into tblrequest(fromaccountnumber,servicename,dated,description,status)values('"+session.getAttribute("customeraccoutnumber")+"','"+description+"','"+sdf.format(d)+"','','Not Approved Yet')");

                    con.close();
                    //out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
                response.sendRedirect("customer_inbox.jsp");
                }
                
                    }catch(Exception e1){out.print(""+e1);}
                    
                    
                    
                     try
                    {
                         if (b.equals("Approve")) {

connection c=new connection();

			Connection con=c.getConnection();
 
                    Statement st = con.createStatement();
                    st.executeUpdate("update tblrequest set status='Approved' where fromaccountnumber='"+accountnumber+"' and servicename='"+servicename+"' and dated='"+dated+"' and description='"+description+"' ");

                    con.close();
                    //out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
                response.sendRedirect("admin_home.jsp");
                }
                
                    }catch(Exception e1){out.print(""+e1);}
                    try
                    {
                         if (b.equals("Customer_Update_Profile")) {

connection c=new connection();

			Connection con=c.getConnection();
 
                    Statement st = con.createStatement();
                      st.executeUpdate("update tblcustomer set fullname='" + fullname + "',address='" + address + "',contactnumber='" + contactnumber + "' where accountnumber='" + session.getAttribute("customeraccoutnumber") + "'");

                    con.close();
                    //out.print("<script type='text/javascript'>alert('Data Saved Successfully');</script>");
                response.sendRedirect("customer_home.jsp");
                }
                
                    }catch(Exception e1){out.print(""+e1);}
    }

    /** 
    * Returns a short description of the servlet.
    */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
