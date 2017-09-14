<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplicationCRUD.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="container"> <%--responsive content--%>
    <%--<div style="overflow-x:auto;"> <%--responsive content--%>
    <table>
        <%--1--%>
        <tr>
            <td style="text-align:right; width: 50%">
                Name: 
            </td>

            <td style="text-align:left; width: 50%">
                <asp:TextBox ID="txtName" runat="server" required=""></asp:TextBox>             
            </td>
        </tr>

        <%--2--%>
        <tr>
            <td style="text-align:right; width: 50%">
                Address: 
            </td>

            <td style="text-align:left; width: 50%">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" AutoCompleteType="BusinessCity"></asp:TextBox>
            </td>
        </tr>

        <%--3--%>
        <tr>
            <td style="text-align:right; width: 50%">
                Email: 
            </td>

            <td style="text-align:left; width: 50%">                
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" required=""></asp:TextBox>
            </td>
        </tr>

        <%--4--%>
        <tr>
            <td style="text-align:right; width: 50%">
                Mobile:
            </td>

            <td style="text-align:left; width: 50%">                
                <asp:TextBox ID="txtMobile" runat="server" TextMode="Number"></asp:TextBox>
            </td>
        </tr>

        <%--5--%>
        <tr>
            <td style="text-align:right; width: 50%">
                &nbsp;
            </td>

            <td style="text-align:left; width: 50%">                
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Onclick="btnSubmit_Click"/>
            </td>
        </tr>

    </table>
    </div>
    </form>
</body>
</html>
