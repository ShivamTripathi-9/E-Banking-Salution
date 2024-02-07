

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body bgcolor="#f79431">
        <div id="main">
            <h1>Login Here</h1>
            <form action="logincode.jsp" method="post">
                <table>
                    <tr>
                        <td style="color: yellow">Enter Account No.</td>
                        <td><input type="number" name="accountno"/></td>
                    </tr>
                    <tr>
                        
                        <td style="color: yellow">Enter Password.</td>
                        <td><input type="number" name="password"/></td>
                    </tr>
                    <tr>
                        <td style="color: yellow">Select Operation </td>
                        <td>
                            <select name="operation">
                                <option value="select">--Select--</option>
                                <option value="deposit">Deposit Amount</option>
                                <option value="withdraw">Withdraw Amount</option>
                                <option value="transfer">Fund Transfer</option>
                                <option value="enquiry">Balance Enquiry</option>
                            </select>
                            
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td ><input type="submit" value="Login" /></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
