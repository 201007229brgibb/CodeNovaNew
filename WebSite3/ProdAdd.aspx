<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.Master" CodeFile="ProdAdd.aspx.cs" Inherits="ProdAdd" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
 
 
td.styleA
{
    color: #00FFFF;
    font-family: 'Imprint MT Shadow';
    font-weight: bolder;text-align:left;
}
td

    
td.styleB
{
    font-size: 13px;
}  
        .style8
        {
            color: #FFFFFF;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
        }
        .style9
        {
            font-family: "Times New Roman", Times, serif;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table cellspacing="0" width="100%">
        <tr>
            <td class="styleA">
                &nbsp;</td>
            <td class="styleB" style="text-align: right; width: 560px; font-weight: bold;">
    <asp:Label Text="Product Name :*" runat="server" CssClass="style8" />
            </td>
            <td class="styleB">
    <asp:TextBox ID="txtName" runat="server" CssClass="style9" />
            </td>
        </tr>
        <tr>
            <td class="styleA">
                &nbsp;</td>
            <td class="styleB" style="text-align: right; width: 560px; font-weight: bold;">
    <asp:Label Text="Make :" runat="server" CssClass="style8" />
            </td>
            <td class="styleB">
    <asp:TextBox ID="txtMake" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="styleA">
                &nbsp;</td>
            <td class="styleB" style="text-align: right; width: 560px; font-weight: bold;">
    <asp:Label Text="Modle :" runat="server" CssClass="style8" />
            </td>
            <td class="styleB">
    <asp:TextBox ID="txtModle" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="styleA">
                &nbsp;</td>
            <td class="styleB" style="text-align: right; width: 560px; font-weight: bold;">
    <asp:Label Text="Colour :" runat="server" CssClass="style8" />
            </td>
            <td class="styleB">
    <asp:TextBox ID="txtColour" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="styleA">
                &nbsp;</td>
            <td class="styleB" style="text-align: right; width: 560px; font-weight: bold;">
    <asp:Label Text="Year :" runat="server" CssClass="style8" />
            </td>
            <td class="styleB">
    <asp:TextBox ID="txtYear" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="styleA">
                &nbsp;</td>
            <td class="styleB" style="text-align: right; width: 560px; font-weight: bold;">
    <asp:Label Text="Mileage :" runat="server" CssClass="style8" />
            </td>
            <td class="styleB">
    <asp:TextBox ID="txtMilage" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="styleA">
                &nbsp;</td>
            <td class="styleB" style="text-align: right; width: 560px; font-weight: bold;">
    <asp:Label Text="Description :*" runat="server" CssClass="style8" />
            </td>
            <td class="styleB">
    <asp:TextBox ID="txtDescription" TextMode="MultiLine" Height="100" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="styleA">
            &nbsp;</td>
            <td class="styleB" style="text-align: right; width: 560px; font-weight: bold;">
            <asp:Label Text="Image :" runat ="server" CssClass="style8"></asp:Label>
            </td>
            <td class="styleB">
                <asp:FileUpload ID="imFile" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="styleA">
                &nbsp;</td>
            <td class="styleB" style="text-align: right; width: 560px; font-weight: bold;">
    <asp:Label Text="Price :*" runat="server" CssClass="style8" />
            </td>
            <td class="styleB">
    <asp:TextBox ID="txtPrice" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="styleA">
                &nbsp;</td>
            <td class="styleB" 
                
                style="width: 560px; color: #FFFFFF; font-weight: bold; font-family: 'Times New Roman', Times, serif;">
                &nbsp;</td>
            <td class="styleB">
    <asp:Button ID="cmdAdd" Text="Add Product" runat="server" onclick="cmdAdd_Click" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </asp:Content>