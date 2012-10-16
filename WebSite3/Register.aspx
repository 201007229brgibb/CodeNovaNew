<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/site.Master" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" Text="Username :*" runat="server" />
    <asp:TextBox ID="txtUserName" runat="server" />
    <asp:RequiredFieldValidator ID="reqUsername" runat="server" ErrorMessage="A username is required." ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label2" Text="Password :*" runat="server" />
    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
    <asp:RequiredFieldValidator ID="reqPass" runat="server" ErrorMessage="A password is required." ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" Text="Confrim Password :*" runat="server" />
    <asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server" />
    <asp:RequiredFieldValidator ID="reqConfirm" runat="server" ErrorMessage="Please confirm password." ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="compConfirm" runat="server" ErrorMessage="Passwords do not match." ControlToValidate="txtConfirmPassword" ForeColor="Red" Operator="Equal" ControlToCompare="txtPassword"></asp:CompareValidator>
    <br />
    <asp:Label ID="Label4" Text="Email :*" runat="server" />
    <asp:TextBox ID="txtEmail" runat="server" />
    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="An email adress is required." ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="regexEmail" runat="server" ErrorMessage="Invalid Email adress." ControlToValidate="txtEmail"
    ValidationExpression="\w+([-+.']\w+)*@\w+([-+.']\w+)*\.\w+([-.]\w+)*"
    ForeColor="Red"></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="Label5" Text="Adress :" runat="server" />
    <asp:TextBox ID="txtAdress" runat="server" />
    <br />
    <asp:Label ID="Label6" Text="Additional Contact Detail :" runat="server" />
    <asp:TextBox ID="txtContact" runat="server" />
    <br />
    <asp:Label ID="Label7" Text="First Name :" runat="server" />
    <asp:TextBox ID="txtFName" runat="server" />
    <br />
    <asp:Label ID="Label8" Text="Last Name :" runat="server" />
    <asp:TextBox ID="txtLName" runat="server" />
    <br />
    <asp:Label ID="Label9" Text="Title :" runat="server" />
    <asp:DropDownList ID="lstTitle" runat="server">
        <asp:ListItem Text="Mr." Value="0" />
        <asp:ListItem Text="Ms." Value="1" />
        <asp:ListItem Text="Mrs." Value="2" />
        <asp:ListItem Text="Dr." Value="3" />
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label10" Text="Account Number :*" runat="server" />
    <asp:TextBox ID="txtAccount" runat="server" MaxLength="10"/>
    <asp:RequiredFieldValidator ID="reqAccount" runat="server" ErrorMessage="An account number is required." ControlToValidate="txtAccount" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="compAccount" runat="server" ErrorMessage="Invalid Account number" ControlToValidate="txtAccount" Operator="DataTypeCheck" Type="Integer" ForeColor="Red"></asp:CompareValidator>
    <br />
    <asp:Button ID="cmdAdd" Text="Register" runat="server" onclick="cmdAdd_Click" />
</asp:Content>