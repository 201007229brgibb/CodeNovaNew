<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/prod.Master" CodeFile="ProdEdit.aspx.cs" Inherits="ProdEdit" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
   
    <style type="text/css">
        .style8
        {
            font-family: "Imprint MT Shadow";
            font-weight: bolder;
            text-align: left;
          
        }
        .style9
        {
            font-size: 13px;
        
        }
        .style10
        {
            font-size: 13px;
            text-align: right;
            width: 235px;
         
        }
        .style11
        {
            color: black;
            font-family: "Imprint MT Shadow";
            font-weight: bolder;
            text-align: right;
            
        }
        .style13
        {
            color:black;
            font-family: "Times New Roman", Times, serif;
        }
        .style14
        {
            font-size: medium;
            text-align: right;
            color: #FFFFFF;
            font-weight: bold;
            font-family: "Times New Roman", Times, serif;
            width: 609px;
        
        }
        .style15
        {
            font-size: large;
            text-align: right;
            font-weight: bold;
            width: 235px;
        }
        .style16
        {
            font-size: 13px;
            width: 235px;
            
        }
        .style17
        {
            color: black;
            font-family: "Imprint MT Shadow";
            font-weight: bolder;
            text-align: right;
            width: 480px;
        }
        .style18
        {
            color: #FFFFFF;
            font-family: "Imprint MT Shadow";
            font-weight: bolder;
            text-align: left;
            width: 480px;
        }
        .style19
        {
            font-size: large;
            text-align: right;
            color: #FFFFFF;
            font-weight: bold;
            font-family: "Times New Roman", Times, serif;
            width: 235px;
        }
        .style20
        {
            color: #FFFFFF;
            font-family: "Times New Roman", Times, serif;
            width: 361px;
        }
    </style>
   
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <table cellspacing="0" width="100%">
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style15">
    <asp:Label ID="Label1" Text="Product Name :" runat="server" CssClass="style20" />
            </td>
            <td class="style9">
    <asp:TextBox ID="txtName" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style15">
    <asp:Label ID="Label2" Text="Make :" runat="server" CssClass="style20" />
            </td>
            <td class="style9">
    <asp:TextBox ID="txtMake" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style15">
    <asp:Label ID="Label3" Text="Modle :" runat="server" CssClass="style20" />
            </td>
            <td class="style9">
    <asp:TextBox ID="txtModle" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style15">
    <asp:Label ID="Label4" Text="Colour :" runat="server" CssClass="style20" />
            </td>
            <td class="style9">
    <asp:TextBox ID="Colour" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style15">
    <asp:Label ID="Label5" Text="Year :" runat="server" CssClass="style20" />
            </td>
            <td class="style9">
    <asp:TextBox ID="txtYear" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style15">
    <asp:Label ID="Label6" Text="Mileage :" runat="server" CssClass="style20" />
            </td>
            <td class="style9">
    <asp:TextBox ID="txtMilage" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style15">
    <asp:Label ID="Label7" Text="Description :" runat="server" CssClass="style20" />
            </td>
            <td class="style9">
    <asp:TextBox ID="txtDescription" TextMode="MultiLine" Height="100" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style19">
    <asp:Label Text="Price :*" runat="server" ID="Label9" CssClass="style8" />
            </td>
            <td class="style9">
    <asp:TextBox ID="txtPrice" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style10">
    <asp:Button ID="cmdEdit" Text="Edit Product" runat="server" style="margin-right: 0px" 
                    Width="108px" />
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label8" Text="Price :" runat="server" />
    <br />
    </asp:Content>
