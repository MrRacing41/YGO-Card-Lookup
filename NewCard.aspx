<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="NewCard.aspx.vb" Inherits="YGO_Card_Lookup.NewCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
    <br />
    New Card</h1>
<p>
    &nbsp;</p>
    <p>
        Please enter card name to add below:</p>
<p>
    <asp:TextBox ID="txtCARD" runat="server" Height="28px" Width="28%"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\LookupDB.mdb;Persist Security Info=True" InsertCommand="INSERT INTO Cards([User], Cards) VALUES (?, ?)" ProviderName="System.Data.OleDb">
            <InsertParameters>
                <asp:ControlParameter ControlID="lblUSER" DefaultValue="" Name="User" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCARD" DefaultValue="User" Name="Card" PropertyName="Text" />
            </InsertParameters>
    </asp:SqlDataSource>
</p>
    <p>
        <asp:Label ID="lblUSER" runat="server" Text="label" Visible="False"></asp:Label>
</p>
    <p>
        <asp:Button ID="btnGO" runat="server" Text="Add!" Height="28px" Width="120px" />
</p>
    <p>
        <asp:Label ID="lblCON" runat="server" Text=" "></asp:Label>
</p>
</asp:Content>
