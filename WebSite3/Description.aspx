<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.Master" CodeFile="Description.aspx.cs" Inherits="Description" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        
    </div>
    <div>
    <table>
        <tr><td>
                <asp:Literal ID ="literal2" runat ="server"></asp:Literal>
            </td>
            <td>
            <table border ="2" cellpadding="5" cellspacing="2">
                <asp:Literal ID="literal1" runat="server">
                </asp:Literal>
            </table>
            </td></tr>
            <tr><td><asp:Literal ID = "literal3" runat="server"></asp:Literal></td></tr>
        </table>
     </div>
</asp:Content>