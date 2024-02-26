<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="RainbowSchoolAzure.Classes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="classId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="294px" Width="573px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="classId" HeaderText="classId" ReadOnly="True" SortExpression="classId" />
            <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
            <asp:BoundField DataField="SeatsCount" HeaderText="SeatsCount" SortExpression="SeatsCount" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowDbConnectionString %>" DeleteCommand="DELETE FROM [Classes] WHERE [classId] = @original_classId AND [ClassName] = @original_ClassName AND (([SeatsCount] = @original_SeatsCount) OR ([SeatsCount] IS NULL AND @original_SeatsCount IS NULL))" InsertCommand="INSERT INTO [Classes] ([classId], [ClassName], [SeatsCount]) VALUES (@classId, @ClassName, @SeatsCount)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Classes]" UpdateCommand="UPDATE [Classes] SET [ClassName] = @ClassName, [SeatsCount] = @SeatsCount WHERE [classId] = @original_classId AND [ClassName] = @original_ClassName AND (([SeatsCount] = @original_SeatsCount) OR ([SeatsCount] IS NULL AND @original_SeatsCount IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_classId" Type="Int32" />
            <asp:Parameter Name="original_ClassName" Type="String" />
            <asp:Parameter Name="original_SeatsCount" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="classId" Type="Int32" />
            <asp:Parameter Name="ClassName" Type="String" />
            <asp:Parameter Name="SeatsCount" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ClassName" Type="String" />
            <asp:Parameter Name="SeatsCount" Type="Int32" />
            <asp:Parameter Name="original_classId" Type="Int32" />
            <asp:Parameter Name="original_ClassName" Type="String" />
            <asp:Parameter Name="original_SeatsCount" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
