<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookCab.aspx.cs" Inherits="Transportation.BookCab" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #666666">
    <form id="form1" runat="server">
       
        <div align="Center">

            <asp:Image ID="Image2" runat="server" Height="183px"  ImageUrl ="~/neha/Images/maxresdefault.jpg"  Width="75%" />     
             


        </div>
        <br />
    <div>
        
      <div>
          
           <asp:GridView ID="GridView1"   AutoGenerateColumns="false"    runat="server" 
               DataKeyNames="CabID,DriverId,DriverEmail,DriverPhno,fare" OnRowCommand="GridView1_RowCommand">
               <Columns>
                   <asp:BoundField HeaderText="CabModel" DataField="CabModel" />
                   <asp:BoundField HeaderText="Fare PER KM" DataField="fare" />
                   <asp:BoundField HeaderText="Locaion" DataField="Locaion" />
                   <asp:BoundField HeaderText="DriverName" DataField="DriverName" />                 
                   <asp:BoundField HeaderText="DriverPhno" DataField="DriverPhno" />
                   <asp:TemplateField>
                       <ItemTemplate>
                           <asp:LinkButton ID="LinkButton1" runat="server" CommandName="SelectCab">Select</asp:LinkButton>
                       </ItemTemplate>
                   </asp:TemplateField>
                   <asp:BoundField Visible="false" DataField="DriverEmail" />
                                  

               </Columns>
           </asp:GridView>
       </div>
        <div>
            <asp:Label ID="lblFare"  runat="server"></asp:Label>
        </div>
<asp:Button ID="btnRevise" runat="server" OnClick="btnRevise_Click" Text="Revise Search" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lnklogout" runat="server" Text="LogOut" OnClick="lnklogout_Click" style="background-color: Yellow; "></asp:LinkButton>
        
        
    </div>
    </form>
</body>
</html>
