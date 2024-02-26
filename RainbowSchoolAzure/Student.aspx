<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="RainbowSchoolAzure.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
           <td><h2 class="text-center">Rainbow School Students Data</h2></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Student_Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="341px" Width="718px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Student_Id" HeaderText="Student_Id" ReadOnly="True" SortExpression="Student_Id" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Student_Address" HeaderText="Student_Address" SortExpression="Student_Address" />
                        <asp:BoundField DataField="class_Id" HeaderText="class_Id" SortExpression="class_Id" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowDbConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [Student_Id] = @original_Student_Id AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND [Student_Address] = @original_Student_Address AND (([class_Id] = @original_class_Id) OR ([class_Id] IS NULL AND @original_class_Id IS NULL))" InsertCommand="INSERT INTO [Students] ([Student_Id], [FirstName], [LastName], [Age], [Student_Address], [class_Id]) VALUES (@Student_Id, @FirstName, @LastName, @Age, @Student_Address, @class_Id)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Students]" UpdateCommand="UPDATE [Students] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Student_Address] = @Student_Address, [class_Id] = @class_Id WHERE [Student_Id] = @original_Student_Id AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND [Student_Address] = @original_Student_Address AND (([class_Id] = @original_class_Id) OR ([class_Id] IS NULL AND @original_class_Id IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Student_Id" Type="Int32" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_Age" Type="Int32" />
                        <asp:Parameter Name="original_Student_Address" Type="String" />
                        <asp:Parameter Name="original_class_Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Student_Id" Type="Int32" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Student_Address" Type="String" />
                        <asp:Parameter Name="class_Id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Student_Address" Type="String" />
                        <asp:Parameter Name="class_Id" Type="Int32" />
                        <asp:Parameter Name="original_Student_Id" Type="Int32" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_Age" Type="Int32" />
                        <asp:Parameter Name="original_Student_Address" Type="String" />
                        <asp:Parameter Name="original_class_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RainbowSchoolDBConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [StudentID] = @original_StudentID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([ClassID] = @original_ClassID) OR ([ClassID] IS NULL AND @original_ClassID IS NULL)) AND (([Marks] = @original_Marks) OR ([Marks] IS NULL AND @original_Marks IS NULL))" InsertCommand="INSERT INTO [Student] ([StudentID], [FirstName], [LastName], [ClassID], [Marks]) VALUES (@StudentID, @FirstName, @LastName, @ClassID, @Marks)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RainbowSchoolDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [FirstName] = @FirstName, [LastName] = @LastName, [ClassID] = @ClassID, [Marks] = @Marks WHERE [StudentID] = @original_StudentID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([ClassID] = @original_ClassID) OR ([ClassID] IS NULL AND @original_ClassID IS NULL)) AND (([Marks] = @original_Marks) OR ([Marks] IS NULL AND @original_Marks IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_StudentID" Type="Int32" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_ClassID" Type="Int32" />
                        <asp:Parameter Name="original_Marks" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="StudentID" Type="Int32" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="ClassID" Type="Int32" />
                        <asp:Parameter Name="Marks" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="ClassID" Type="Int32" />
                        <asp:Parameter Name="Marks" Type="Int32" />
                        <asp:Parameter Name="original_StudentID" Type="Int32" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_ClassID" Type="Int32" />
                        <asp:Parameter Name="original_Marks" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
