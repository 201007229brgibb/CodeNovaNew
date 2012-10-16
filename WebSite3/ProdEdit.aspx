<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/prod.Master" CodeFile="ProdEdit.aspx.cs" Inherits="ProdEdit" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" Text="Product Name :" runat="server" />
    <asp:TextBox ID="txtName" runat="server" />
    <br />
    <asp:Label ID="Label2" Text="Make :" runat="server" />
    <asp:TextBox ID="txtMake" runat="server" />
    <br />
    <asp:Label ID="Label3" Text="Modle :" runat="server" />
    <asp:TextBox ID="txtModle" runat="server" />
    <br />
    <asp:Label ID="Label4" Text="Colour :" runat="server" />
    <asp:TextBox ID="Colour" runat="server" />
    <br />
    <asp:Label ID="Label5" Text="Year :" runat="server" />
    <asp:TextBox ID="txtYear" runat="server" />
    <br />
    <asp:Label ID="Label6" Text="Mileage :" runat="server" />
    <asp:TextBox ID="txtMilage" runat="server" />
    <br />
    <asp:Label ID="Label7" Text="Description :" runat="server" />
    <asp:TextBox ID="txtDescription" TextMode="MultiLine" Height="100" runat="server" />
    <br />
    <asp:Label ID="Label8" Text="Price :" runat="server" />
    <asp:TextBox ID="txtPrice" runat="server" />
    <br />
    <asp:Button ID="cmdEdit" Text="Edit Product" runat="server" />
</asp:Content>
