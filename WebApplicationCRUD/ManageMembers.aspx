<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageMembers.aspx.cs" Inherits="WebApplicationCRUD.ManageMembers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MemberID" DataSourceID="SqlDataSource1" ShowFooter="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="MemberID" HeaderText="Member ID" InsertVisible="False" ReadOnly="True" SortExpression="MemberID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MembersConnectionString %>" DeleteCommand="DELETE FROM [Members] WHERE [MemberID] = @MemberID" InsertCommand="INSERT INTO [Members] ([Name], [Address], [Email], [Mobile]) VALUES (@Name, @Address, @Email, @Mobile)" SelectCommand="SELECT * FROM [Members]" UpdateCommand="UPDATE [Members] SET [Name] = @Name, [Address] = @Address, [Email] = @Email, [Mobile] = @Mobile WHERE [MemberID] = @MemberID">
            <DeleteParameters>
                <asp:Parameter Name="MemberID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="Int32" />
                <asp:Parameter Name="MemberID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="MemberID">
        </asp:DropDownList>

        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Text="High" Value="0" />
            <asp:ListItem Text="Medium" Value="1" />
            <asp:ListItem Text="Low" Value="2" />
        </asp:RadioButtonList>

        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Text="High" Value="0" />
            <asp:ListItem Text="Medium" Value="1" />
            <asp:ListItem Text="Low" Value="2" />
        </asp:DropDownList>

    </form>
</body>
</html>
