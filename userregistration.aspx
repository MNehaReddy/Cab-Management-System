<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userregistration.aspx.cs" Inherits="Transportation.userregistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:#666666">
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="165px" ImageUrl="~/neha/Images/14296294645599.jpg" Width="49%" />
            <asp:Image ID="Image2" runat="server" Height="165px" ImageUrl="~/neha/Images/14296294645599.jpg" Width="50%" />
        </div>
        <br /><div align="center"><h1>
        <asp:Label ID="Label5" runat="server" Text="User Registation "></asp:Label>
        <br /></h1></div>
        <br />
        
    <div align="center">
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Phone No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Password" TextMode="password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">

                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Height="30px" Width="70px" />

            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
