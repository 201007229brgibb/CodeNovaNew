<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.Master" CodeFile="ProdRemove.aspx.cs" Inherits="ProdRemove" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

    .style15
    {
        width: 412px;
        text-align: right;
    }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
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
     </div></div>
    <br />
    <table cellspacing="0" width="100%">
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style7">
    <asp:Button ID="cmdRemove" Text="Confirm Removeal" runat="server" 
                    style="text-align: center; margin-left: 173px;" Width="153px" 
                    onclick="cmdRemove_Click" />
            </td>
            <td class="styleB">
                &nbsp;</td>
        </tr>
    </table>
    </asp:Content>
