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
                <asp:TemplateField HeaderText="Member ID" InsertVisible="False" SortExpression="MemberID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("MemberID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MemberID") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="lbInsert" runat="server" OnClick="lbInsert_Click">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditName" runat="server" ErrorMessage="Name is required"
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" ErrorMessage="Name is required"
                            ControlToValidate="txtName" Text="*" ForeColor="Red" ValidationGroup="INSERT"></asp:RequiredFieldValidator>
                    </FooterTemplate>                    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address" SortExpression="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtMobile" runat="server" TextMode="Number"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" SelectedValue='<%# Bind("Gender") %>'>
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvEditGender" runat="server" ErrorMessage="Gender is required"
                            ControlToValidate="DropDownList3" Text="*" ForeColor="Red" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvInsertGender" runat="server" ErrorMessage="Gender is required"
                            ControlToValidate="ddlGender" Text="*" ForeColor="Red" InitialValue="Select Gender" ValidationGroup="INSERT"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
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
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="INSERT"/>
        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red"/>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MembersConnectionString %>" DeleteCommand="DELETE FROM [Members] WHERE [MemberID] = @MemberID" InsertCommand="INSERT INTO [Members] ([Name], [Address], [Email], [Mobile], [Gender]) VALUES (@Name, @Address, @Email, @Mobile, @Gender)" SelectCommand="SELECT * FROM [Members]" UpdateCommand="UPDATE [Members] SET [Name] = @Name, [Address] = @Address, [Email] = @Email, [Mobile] = @Mobile, [Gender] = @Gender WHERE [MemberID] = @MemberID">
            <DeleteParameters>
                <asp:Parameter Name="MemberID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="Int32" />
                <asp:Parameter Name="Gender" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="Int32" />
                <asp:Parameter Name="MemberID" Type="Int32" />
                <asp:Parameter Name="Gender" Type="String" />
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
