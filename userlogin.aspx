<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="Transportation.userlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
</head>
<body style="background-color:#7FFFD4">
    <form id="form1" runat="server">

                <style type="text/css">
                    .button {
   border-top: 1px solid #96d1f8;
   background: #65a9d7;
   background: -webkit-gradient(linear, left top, left bottom, from(#3e779d), to(#65a9d7));
   background: -webkit-linear-gradient(top, #3e779d, #65a9d7);
   background: -moz-linear-gradient(top, #3e779d, #65a9d7);
   background: -ms-linear-gradient(top, #3e779d, #65a9d7);
   background: -o-linear-gradient(top, #3e779d, #65a9d7);
   padding: 5px 10px;
   -webkit-border-radius: 8px;
   -moz-border-radius: 8px;
   border-radius: 8px;
   -webkit-box-shadow: rgba(0,0,0,1) 0 1px 0;
   -moz-box-shadow: rgba(0,0,0,1) 0 1px 0;
   box-shadow: rgba(0,0,0,1) 0 1px 0;
   text-shadow: rgba(0,0,0,.4) 0 1px 0;
   color: white;
   font-size: 14px;
   font-family: Georgia, serif;
   text-decoration: none;
   vertical-align: middle;
   }
.button:hover {
   border-top-color: #28597a;
   background: #28597a;
   color: #ccc;
   }
.button:active {
   border-top-color: #1b435e;
   background: #0a5689;
   }
                    #form1 {
                        background-color: #666666;
                    }
                </style>

        <div align="Center">

            <asp:Image ID="Image2" runat="server" Height="183px"  ImageUrl ="~/neha/Images/maxresdefault.jpg"  Width="75%" />     
             


        </div>
        <br />
        <br />
        <br />
    <div align="center">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1"  CssClass="button" runat="server" Text="Login" OnClick="Button1_Click" Height="39px" Width="101px" />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/neha/userregistration.aspx">User Registration</asp:LinkButton>
            </td>
        </tr>
    </table>
    </div>
        <br />
        <br />
        <br />
         <br />
        <br />
        <br />

        <div>
            <img src="Images/tai-sao-uber-mua-lai-cac-cong-ty-ban-do.png" height="200px" width="100%" />
          &nbsp;</div>
    </form>
</body>
</html>
