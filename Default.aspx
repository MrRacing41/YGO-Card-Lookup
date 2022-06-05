<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/Default.aspx.vb" Inherits="YGO_Card_Lookup._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1><b>
        Welcome to YGO Lookup!
    </b></h1>

    <p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        You can upload all your cards here to search through later. Basically this website is a dictionary for all your cards.</p>
<p>
        &nbsp;</p>
<table class="nav-justified">
    <tr>
        <td class="modal-sm" style="width: 202px">
        <asp:Button ID="btnADD" runat="server" BackColor="White" ForeColor="#660066" Height="64px" Text="Add Cards" Width="177px" />
        </td>
        <td>
        <asp:Button ID="btnLOOK" runat="server" BackColor="White" ForeColor="#660066" Height="64px" Text="Lookup" Width="177px" />
        </td>
    </tr>
</table>
<p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>
