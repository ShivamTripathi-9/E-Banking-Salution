

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(session.getAttribute("accountno")==null)
    {
        response.sendRedirect("index.jsp");
           }
    else
    {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fund Transfer</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body bgcolor="#f79431">
        <div id="main">
            <form action="transfercode.jsp" method="post">
                <h1>Fund Transfer</h1>
                <table>
                    <tr>
                        <td >Enter account no</td>
                        <td>
                            <input type="number" name="secondaccountno"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter a amount to transfer</td>
                        <td>
                            <input type="number" name="amt"/>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="Transfer"/>
                        </td>
                    </tr>
                </table>
            </form>
            
        </div>
        
    </body>
</html>
<% } %>