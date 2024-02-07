<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
//Here we write code to transfer amout
  int fromaccount=Integer.parseInt(session.getAttribute("accountno").toString());
  int toaccount=Integer.parseInt(request.getParameter("secondaccountno"));
  int amt=Integer.parseInt(request.getParameter("amt"));
  DbManager db=new DbManager();
  
  String query="select balance from account where accountno='"+fromaccount+"'";
  ResultSet rs=db.Select(query);
  rs.next();
  int balance1=rs.getInt("balance");
  if(balance1<amt)
  {
      session.invalidate();
      out.print("<script>alert('Insufficient balane');window.location.href='index.jsp'</script>");
  }
  else
  {
  query="select balance from account where accountno='"+toaccount+"'";
  rs=db.Select(query);
  if(rs.next())
  {
  int balance2=rs.getInt("balance");
  balance1=balance1-amt;
  balance2=balance2+amt;
  String query1="update account set balance='"+balance1+"' where accountno='"+fromaccount+"'";
  String query2="update account set balance='"+balance2+"' where accountno='"+toaccount+"'";
  db.insertDeleteUpdate(query1);
  db.insertDeleteUpdate(query2);
  session.invalidate();
  out.print("<script>alert('Fund is transferred');window.location.href='index.jsp'</script>");
  }
  else
  {
      session.invalidate();
      out.print("<script>alert('Account doesnot exist');window.location.href='index.jsp'</script>");
  }
  }
%>