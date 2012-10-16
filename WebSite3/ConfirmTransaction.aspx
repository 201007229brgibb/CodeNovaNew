<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/prod.Master" CodeFile="ConfirmTransaction.aspx.cs" Inherits="ConfirmTransaction" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="cmdComplete" runat="server" Text="Complete Transaction" />
    <asp:Button ID="cmdCancel" runat="server" Text="Cancel" />
</asp:Content>