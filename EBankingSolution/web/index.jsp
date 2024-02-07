

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Banking Solution</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body bgcolor="#f79431">
        <div id="main">
            <h1>E-Banking Solution</h1>
            <%
                if(session.getAttribute("accountno")!=null)
                {
                    
      
            %>
            <p style="color:white; text-align: center;">Your account no <%=session.getAttribute("accountno")%></p>
            <%
                
            }
            %>
            <%
                if(session.getAttribute("msg")!=null)
                {
            %>
            <p style="color: white;text-align: center"><%=session.getAttribute("msg")%></p>
            <%
            
                }
            session.invalidate();
            %>
            <table>
                <tr>
                    <td>
                        <button class="mybtn" onclick="window.location.href='createaccount.jsp'">Create New Account</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button class="mybtn" onclick="window.location.href='login.jsp'">Deposit Amount</button>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <button class="mybtn" onclick="window.location.href='login.jsp'">Withdraw Amount</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button class="mybtn" onclick="window.location.href='login.jsp'">Fund Transfer</button>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <button class="mybtn" onclick="window.location.href='login.jsp'">Balance Enquiry</button>
                    </td>
                </tr>
                
                
            </table>
        </div>
    </body>
</html>
