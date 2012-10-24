<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.Master" CodeFile="ConfirmTransaction.aspx.cs" Inherits="ConfirmTransaction" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style17
        {
            width: 374px;
        }
        .style18
        {
            width: 241px;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table cellspacing="0" width="100%">
        <tr>
            <td class="style18" style="text-align: right">
                &nbsp;</td>
            <td class="style6" style="text-align: right">
    <asp:Button ID="cmdComplete" runat="server" Text="Complete Transaction" 
                    style="margin-right: 0px" Width="166px" />
            </td>
            <td class="style17">
    <asp:Button ID="cmdCancel" runat="server" Text="Cancel" />
            </td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        </table>
    </asp:Content>