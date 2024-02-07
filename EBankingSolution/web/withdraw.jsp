

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
        <title>Withdraw Amount</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
     <body bgcolor="f79431">
        <div id="main">
            <h1>Withdraw Amount</h1>
            <form action="withdrawcode.jsp" method="post">
                <table>
                    <tr>
                        <td style="color: yellow">Enter Amount</td>
                        <td> <input type="number" name="amt"/></td>
                        
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="Submit"/>
                        </td>
                    </tr>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
<% }%>