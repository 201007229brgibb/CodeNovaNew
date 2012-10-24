<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.Master" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style6
        {
            width: 586px;
        }
        .style7
        {
            width: 204px;
        }
    .style8
    {
            width: 631px;
            text-align: right;
            font-weight: bold;
        }
        .style9
        {
            color: #FFFFFF;
            font-family: "Times New Roman", Times, serif;
        }
    .style12
    {
        width: 586px;
        text-align: right;
        font-weight: bold;
        height: 41px;
    }
    .style13
    {
        width: 586px;
        text-align: right;
        font-weight: bold;
        height: 22px;
    }
    .style14
    {
        width: 204px;
        height: 22px;
    }
    .style15
    {
        height: 22px;
    }
    .style16
    {
        width: 586px;
        text-align: right;
        font-weight: bold;
        height: 39px;
    }
    .style17
    {
        width: 204px;
        height: 39px;
    }
    .style18
    {
        height: 39px;
    }
    .style19
    {
            width: 586px;
            text-align: right;
            font-weight: bold;
            height: 34px;
        }
    .style20
    {
            width: 204px;
            height: 34px;
        }
    .style21
    {
        height: 34px;
    }
    .style22
    {
            width: 586px;
            text-align: right;
            font-weight: bold;
            height: 31px;
        }
    .style23
    {
            width: 204px;
            height: 31px;
        }
    .style24
    {
        height: 31px;
    }
    .style25
    {
            width: 586px;
            text-align: right;
            font-weight: bold;
            height: 32px;
        }
    .style26
    {
            width: 204px;
            height: 32px;
        }
    .style27
    {
        height: 32px;
    }
    .style28
    {
        width: 586px;
        text-align: right;
        font-weight: bold;
        height: 30px;
    }
    .style29
    {
        width: 204px;
        height: 30px;
    }
    .style30
    {
        height: 30px;
    }
        .style31
        {
            color: #FFFFFF;
            font-family: "Times New Roman", Times, serif;
            width: 423px;
            font-size: large;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table cellspacing="0" width="100%">
        <tr>
            <td class="style25">
    <asp:Label ID="Label1" Text="Username :*" runat="server" CssClass="style31" />
            </td>
            <td class="style26">
    <asp:TextBox ID="txtUserName" runat="server" />
            </td>
            <td class="style27">
    <asp:RequiredFieldValidator ID="reqUsername" runat="server" ErrorMessage="A username is required." ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style22">
    <asp:Label ID="Label2" Text="Password :*" runat="server" CssClass="style31" />
            </td>
            <td class="style23">
    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
            </td>
            <td class="style24">
    <asp:RequiredFieldValidator ID="reqPass" runat="server" ErrorMessage="A password is required." ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style28">
    <asp:Label ID="Label3" Text="Confrim Password :*" runat="server" CssClass="style31" />
            </td>
            <td class="style29">
    <asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server" />
            </td>
            <td class="style30">
    <asp:RequiredFieldValidator ID="reqConfirm" runat="server" ErrorMessage="Please confirm password." ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="compConfirm" runat="server" ErrorMessage="Passwords do not match." ControlToValidate="txtConfirmPassword" ForeColor="Red" Operator="Equal" ControlToCompare="txtPassword"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style25">
    <asp:Label ID="Label4" Text="Email :*" runat="server" CssClass="style31" />
            </td>
            <td class="style26">
    <asp:TextBox ID="txtEmail" runat="server" />
            </td>
            <td class="style27">
    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="An email adress is required." ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;
    <asp:RegularExpressionValidator ID="regexEmail" runat="server" ErrorMessage="Invalid Email adress." ControlToValidate="txtEmail"
    ValidationExpression="\w+([-+.']\w+)*@\w+([-+.']\w+)*\.\w+([-.]\w+)*"
    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
    <asp:Label ID="Label9" Text="Title :" runat="server" CssClass="style31" />
            </td>
            <td class="style20">
    <asp:DropDownList ID="lstTitle" runat="server">
        <asp:ListItem Text="Mr." Value="0" />
        <asp:ListItem Text="Ms." Value="1" />
        <asp:ListItem Text="Mrs." Value="2" />
        <asp:ListItem Text="Dr." Value="3" />
    </asp:DropDownList>
            </td>
            <td class="style21">
                </td>
        </tr>
        <tr>
            <td class="style22">
    <asp:Label ID="Label5" Text="Adress :" runat="server" CssClass="style31" />
            </td>
            <td class="style23">
                <asp:TextBox ID="txtAdress" runat="server" />
            </td>
            <td class="style24">
                </td>
        </tr>
        <tr>
            <td class="style12">
    <asp:Label ID="Label6" Text="Additional Contact Detail :" runat="server" 
                    CssClass="style31" />
                </td>
            <td class="style7">
    <asp:TextBox ID="txtContact" runat="server" />
                </td>
            <td class="styleB">
                </td>
        </tr>
        <tr>
            <td class="style19">
    <asp:Label ID="Label7" Text="First Name :" runat="server" CssClass="style31" />
                </td>
            <td class="style20">
    <asp:TextBox ID="txtFName" runat="server" />
                </td>
            <td class="style21">
                </td>
        </tr>
        <tr>
            <td class="style16">
    <asp:Label ID="Label8" Text="Last Name :" runat="server" CssClass="style31" />
                </td>
            <td class="style17">
    <asp:TextBox ID="txtLName" runat="server" />
                </td>
            <td class="style18">
                </td>
        </tr>
        <tr>
            <td class="style13">
    <asp:Label ID="Label10" Text="Account Number :*" runat="server" CssClass="style31" />
                </td>
            <td class="style14">
    <asp:TextBox ID="txtAccount" runat="server" MaxLength="10"/>
                </td>
            <td class="style15">
    <asp:RequiredFieldValidator ID="reqAccount" runat="server" ErrorMessage="An account number is required." ControlToValidate="txtAccount" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="compAccount" runat="server" ErrorMessage="Invalid Account number" ControlToValidate="txtAccount" Operator="DataTypeCheck" Type="Integer" ForeColor="Red"></asp:CompareValidator>
                </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
    <asp:Button ID="cmdAdd" Text="Register" runat="server" onclick="cmdAdd_Click" />
                </td>
            <td class="styleB">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="styleB">
                &nbsp;</td>
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
    <br />
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