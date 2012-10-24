<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.Master" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    
    <style type="text/css">
        .style5
    {
            text-align: right;
            width: 631px;
            font-weight: bold;
        }
    .style25
    {
            width: 471px;
            text-align: right;
            font-weight: bold;
            height: 32px;
        }
    .style26
    {
            width: 120px;
            height: 32px;
        }
    .style27
    {
        height: 32px;
    }
    .style22
    {
        width: 471px;
        text-align: right;
        font-weight: bold;
        height: 31px;
    }
    .style23
    {
        width: 120px;
        height: 31px;
            text-align: right;
            font-weight: bold;
        }
    .style24
    {
        height: 31px;
    }
    .style28
    {
        width: 471px;
        text-align: right;
        font-weight: bold;
        height: 30px;
    }
    .style29
    {
        width: 120px;
        height: 30px;
    }
    .style30
    {
        height: 30px;
    }
        .style31
        {
            width: 120px;
            height: 32px;
            text-align: right;
            font-weight: bold;
        }
    </style>
    
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table cellspacing="0" width="100%">
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td class="style31">
    <asp:Label Text="User Name:" runat="server" CssClass="style13" 
                    
                    
                    style="color: #FFFFFF; font-family: 'Times New Roman', Times, serif; font-size: large;" 
                    ID="Label1"/>
            </td>
            <td class="style27">
    <asp:TextBox ID="txtUserName" runat="server" CssClass="style13" />
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style23">
    <asp:Label Text="Password:" runat="server" CssClass="style13" 
                    
                    
                    style="color: #FFFFFF; font-family: 'Times New Roman', Times, serif; font-size: large;" 
                    ID="Label2"/>
            </td>
            <td class="style24">
    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="style13" />
            </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style29">
                &nbsp;</td>
            <td class="style30">
    <asp:Button ID="cmdLogin" Text="Login" runat="server" 
        onclick="cmdLogin_Click" CssClass="style13" />
            </td>
        </tr>
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style27">
                &nbsp;
            <asp:Label ID="MessageLabel" runat="server" ForeColor="Red" Text="Label" 
                Visible="false" CssClass="style13"></asp:Label>
            </td>
        </tr>
    </table>
<br />
<br />
</asp:Content>