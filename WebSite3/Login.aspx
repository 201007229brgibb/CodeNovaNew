<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.Master" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label Text="User Name:" runat="server"/>
    <asp:TextBox ID="txtUserName" runat="server" />
    <br />
    <asp:Label Text="Password:" runat="server"/>
    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
    <br />
    <asp:Button ID="cmdLogin" Text="Login" runat="server" 
        onclick="cmdLogin_Click" />
</asp:Content>