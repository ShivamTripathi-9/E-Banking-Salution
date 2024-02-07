

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body bgcolor="#f79431">
        <div id="main">
            <h1>Create New Account</h1>
            <form action="createaccountcode.jsp" method="post">
                <table style="margin: 0 auto;width: 80%;">
                    <tr>
                        <td style="color:yellow">Enter Name</td>
                        <td><input type="text" name="name" required="true"></td>
                    </tr>
                    <tr>
                        <td style="color:yellow">Select Gender</td>
                        <td style="color: yellow">
                            <input type="radio" name="gender" value="Male"/>Male
                            <input type="radio" name="gender" value="Female"/>Female
                        </td>
                    </tr>
                    <tr>
                        <td style="color:yellow">Enter Address</td> 
                        <td>
                            <textarea name="address"></textarea>
                        </td>     
                    </tr>
                    <tr>
                        <td style="color:yellow">Enter Contact No</td>
                        <td>
                            <input type="number" name="contactno"/>   
                        </td>
                    </tr>
                    <tr>
                        <td style="color:yellow">Enter Email Address</td>
                        <td>
                            <input type="email" name="emailaddress"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="color:yellow">Enter Pan No</td>
                        <td>
                            <input type="text" name="panno"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="color:yellow">Enter Aadhar No</td>
                        <td>
                            <input type="text" name="aadharno"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="color:yellow">Enter Opening Balance</td>
                        <td>
                            <input type="=number" name="balance"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="color:yellow">Enter Password</td>
                        <td>
                    <input type="password" name="password"/>
                        </td>
                    </tr>
                    <tr>
                        <td> </td>
                        <td style="color:yellow">
                            <input type="submit" value="Create"/>
                        </td>
                    </tr>
                    
                    
                </table>
                
            </form>
            
        </div>
    </body>
</html>
