<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/prod.Master" CodeFile="ProdAdd.aspx.cs" Inherits="ProdAdd" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label Text="Product Name :*" runat="server" />
    <asp:TextBox ID="txtName" runat="server" />
    <br />
    <asp:Label Text="Make :" runat="server" />
    <asp:TextBox ID="txtMake" runat="server" />
    <br />
    <asp:Label Text="Modle :" runat="server" />
    <asp:TextBox ID="txtModle" runat="server" />
    <br />
    <asp:Label Text="Colour :" runat="server" />
    <asp:TextBox ID="Colour" runat="server" />
    <br />
    <asp:Label Text="Year :" runat="server" />
    <asp:TextBox ID="txtYear" runat="server" />
    <br />
    <asp:Label Text="Mileage :" runat="server" />
    <asp:TextBox ID="txtMilage" runat="server" />
    <br />
    <asp:Label Text="Description :*" runat="server" />
    <asp:TextBox ID="txtDescription" TextMode="MultiLine" Height="100" runat="server" />
    <br />
    <asp:Label Text="Price :*" runat="server" />
    <asp:TextBox ID="txtPrice" runat="server" />
    <br />
    <asp:Button ID="cmdAdd" Text="Add Product" runat="server" />
</asp:Content>