<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="temperory.Registration" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Registration form</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--<link rel="stylesheet" href="style.css">--%>
    <link href="StyleSheet2.css" rel="stylesheet" />
</head>
<form id="form1" runat="server" autocomplete="off">
      <div>
            <div class="box">
                <h1>Registration form</h1>
                <div class="inputbox">
                     
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-Control" required ></asp:TextBox>
                          <label for="username">UserName</label>
                   
                </div>
                <div class="inputbox">
                    
                     
                     
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-Control" required ></asp:TextBox>
                    <label for="email">Email</label>
                     
                    
                </div>

                <div class="inputbox">
                     <asp:TextBox ID="TextBox2" runat="server" CssClass="form-Control" type="password" required ></asp:TextBox>
                    <label for="username">Password</label>
                </div>
                <div class="inputbox">
                      <asp:TextBox ID="TextBox3" runat="server" CssClass="form-Control" type="password" required ></asp:TextBox>
                    <label for="password">Confirm password</label>
                </div>
                
                    
               
                <div class="inputbox">
                     <asp:TextBox ID="TextBox4" runat="server" CssClass="form-Control" required ></asp:TextBox>
                    <label for="number">Phone number</label>
                </div>
                <asp:Button ID="btnRegistration" runat="server" Text="Register" OnClick="btnRegistration_Click" />

                <br />
                <asp:Label id="errormasge"  runat="server" Font-Size="Medium" ForeColor="#CC0000"></asp:Label>
                
            </div>
        </div>
    </form>
</body>
</html>
