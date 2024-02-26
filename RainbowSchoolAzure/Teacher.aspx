<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="RainbowSchoolAzure.Teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TeacherId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="295px" Width="583px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" ReadOnly="True" SortExpression="TeacherId" />
            <asp:BoundField DataField="Teacher_Name" HeaderText="Teacher_Name" SortExpression="Teacher_Name" />
            <asp:BoundField DataField="TSubject" HeaderText="TSubject" SortExpression="TSubject" />
            <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowDbConnectionString %>" DeleteCommand="DELETE FROM [Teachers] WHERE [TeacherId] = @original_TeacherId AND [Teacher_Name] = @original_Teacher_Name AND [TSubject] = @original_TSubject AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL))" InsertCommand="INSERT INTO [Teachers] ([TeacherId], [Teacher_Name], [TSubject], [Experience]) VALUES (@TeacherId, @Teacher_Name, @TSubject, @Experience)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Teachers]" UpdateCommand="UPDATE [Teachers] SET [Teacher_Name] = @Teacher_Name, [TSubject] = @TSubject, [Experience] = @Experience WHERE [TeacherId] = @original_TeacherId AND [Teacher_Name] = @original_Teacher_Name AND [TSubject] = @original_TSubject AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_TeacherId" Type="Int32" />
            <asp:Parameter Name="original_Teacher_Name" Type="String" />
            <asp:Parameter Name="original_TSubject" Type="String" />
            <asp:Parameter Name="original_Experience" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TeacherId" Type="Int32" />
            <asp:Parameter Name="Teacher_Name" Type="String" />
            <asp:Parameter Name="TSubject" Type="String" />
            <asp:Parameter Name="Experience" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Teacher_Name" Type="String" />
            <asp:Parameter Name="TSubject" Type="String" />
            <asp:Parameter Name="Experience" Type="Int32" />
            <asp:Parameter Name="original_TeacherId" Type="Int32" />
            <asp:Parameter Name="original_Teacher_Name" Type="String" />
            <asp:Parameter Name="original_TSubject" Type="String" />
            <asp:Parameter Name="original_Experience" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</p>
<p>
</p>
</asp:Content>
