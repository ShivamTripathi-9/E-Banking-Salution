<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
int accountno=Integer.parseInt(session.getAttribute("accountno").toString());
int amt=Integer.parseInt(request.getParameter("amt"));
int balance;
String query="select balance from account where accountno='"+accountno+"'";
DbManager db=new DbManager();
ResultSet rs=db.Select(query);
rs.next();
balance=rs.getInt("balance");
balance=balance+amt;
query="update account set balance='"+balance+"' where accountno='"+accountno+"'";
boolean res=db.insertDeleteUpdate(query);
session.invalidate();
if(db.insertDeleteUpdate(query)==true)
{
    out.print("<script>alert('Amount is credited'); window.location.href='index.jsp';</script>");
}
else
{
 out.print("<script>alert('Amount is not credited'); window.location.href='index.jsp';</script>");   
}
%>