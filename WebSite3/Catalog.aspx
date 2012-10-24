<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.Master" CodeFile="Catalog.aspx.cs" Inherits="Catalog" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style8
        {
            width: 280px;
            text-align: center;
            color: #FFFFFF;
        }
        .style15
        {
            text-align: center;
            color: #FFFFFF;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table cellpadding="10" cellspacing="10" ><tr><td class="style8">Product</td><td class="style15">Image</td>
        <td class="style15">Make</td><td class="style15">Model</td>
        <td class="style15">Colour</td><td class="style15">Description</td>
        <td class="style15">Price</td></tr>
    <asp:Literal ID="lit" runat="server">
    </asp:Literal>
    </table>

</asp:Content>
