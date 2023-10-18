<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="temperory.SignIn" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--<link rel="stylesheet" href="style.css">--%>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <div>
            <div class="box">
                <h1>Sign In</h1>
                <div class="inputbox">
                   
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-Control" ></asp:TextBox>
                   
                        
                          <label for="username">UserName</label>
                    </div>
                <div style="padding-bottom:10px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <div class="inputbox">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-Control" Type="password" ></asp:TextBox>
                   
                    <label for="password">Password</label>
                </div>
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:Button ID="btnLogin" runat="server"  Text="Sign In" OnClick="btnLogin_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="btnRegistraion" runat="server" Text="Register here" OnClick="btnRegistraion_Click1"  CssClass="boxRegister" CausesValidation="False" UseSubmitBehavior="False"/>
                <br /><br />
                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>

                
            </div>
        </div>
    </form>

</body>
</html>



