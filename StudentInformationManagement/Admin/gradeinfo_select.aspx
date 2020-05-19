<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gradeinfo_select.aspx.cs" Inherits="StudentInformationManagement.Admin.gradeinfo_select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../layui/css/layui.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="gradeid" DataSourceID="SqlDataSource1" CssClass="layui-table" AllowPaging="True" AllowSorting="True">
                <Columns>
                   
                    <asp:BoundField DataField="gradeid" HeaderText="成绩编号" ReadOnly="True" SortExpression="gradeid" />
                    <asp:BoundField DataField="gradestuname" HeaderText="学生姓名" SortExpression="gradestuname" />
                    <asp:BoundField DataField="gradecourse" HeaderText="所学课程" SortExpression="gradecourse" />
                    <asp:BoundField DataField="gradenumber" HeaderText="成绩得分" SortExpression="gradenumber" />
                    <asp:BoundField DataField="gradeothers" HeaderText="其它说明" SortExpression="gradeothers" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" DeleteText="删除" EditText="编辑" HeaderText="操作"/>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString %>" DeleteCommand="DELETE FROM [gradeinfo] WHERE [gradeid] = @gradeid" InsertCommand="INSERT INTO [gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (@gradeid, @gradestuname, @gradecourse, @gradenumber, @gradeothers)" SelectCommand="SELECT * FROM [gradeinfo]" UpdateCommand="UPDATE [gradeinfo] SET [gradestuname] = @gradestuname, [gradecourse] = @gradecourse, [gradenumber] = @gradenumber, [gradeothers] = @gradeothers WHERE [gradeid] = @gradeid">
                <DeleteParameters>
                    <asp:Parameter Name="gradeid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="gradeid" Type="String" />
                    <asp:Parameter Name="gradestuname" Type="String" />
                    <asp:Parameter Name="gradecourse" Type="String" />
                    <asp:Parameter Name="gradenumber" Type="String" />
                    <asp:Parameter Name="gradeothers" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="gradestuname" Type="String" />
                    <asp:Parameter Name="gradecourse" Type="String" />
                    <asp:Parameter Name="gradenumber" Type="String" />
                    <asp:Parameter Name="gradeothers" Type="String" />
                    <asp:Parameter Name="gradeid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
