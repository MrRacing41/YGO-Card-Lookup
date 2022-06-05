<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Lookup.aspx.vb" Inherits="YGO_Card_Lookup.Lookup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
    <br />
    Lookup</h1>
<p>
    &nbsp;</p>
    <p>
        Please enter card name to lookup below:</p>
<p>
    <asp:TextBox ID="txtCARD" runat="server"></asp:TextBox>
    <asp:Label ID="lblUSER" runat="server" Text="Label" Visible="False"></asp:Label>
</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Cards" HeaderText="Cards" SortExpression="Cards" />
                <asp:CommandField HeaderText="Controls" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Cards] WHERE [ID] = ? AND (([Cards] = ?) OR ([Cards] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Cards] ([Cards], [ID]) VALUES (?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [Cards], [ID] FROM [Cards] WHERE (([User] = ?) AND ([Cards] = ?))" UpdateCommand="UPDATE [Cards] SET [Cards] = ? WHERE [ID] = ? AND (([Cards] = ?) OR ([Cards] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Cards" Type="String" />
                <asp:Parameter Name="original_Cards" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Cards" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="lblUSER" Name="User" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtCARD" Name="Cards" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Cards" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Cards" Type="String" />
                <asp:Parameter Name="original_Cards" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
</p>
</asp:Content>
