<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="classinfo_select.aspx.cs" Inherits="StudentInformationManagement.classinfo_select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../layui/css/layui.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="classid" DataSourceID="SqlDataSource1" CSSClass="layui-table">   
                <Columns >
                    <asp:BoundField DataField="classid" HeaderText="班级编号" ReadOnly="True" SortExpression="classid">
                    </asp:BoundField>
                    <asp:BoundField DataField="classname" HeaderText="班级名称" SortExpression="classname" />
                    <asp:BoundField DataField="classmajor" HeaderText="所属专业" SortExpression="classmajor" />
                    <asp:BoundField DataField="classcount" HeaderText="人数" SortExpression="classcount" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" DeleteText="删除" EditText="编辑" HeaderText="操作" />
                </Columns>
                    
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString %>" DeleteCommand="DELETE FROM [classinfo] WHERE [classid] = @classid" InsertCommand="INSERT INTO [classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (@classid, @classname, @classmajor, @classcount)" SelectCommand="SELECT * FROM [classinfo]" UpdateCommand="UPDATE [classinfo] SET [classname] = @classname, [classmajor] = @classmajor, [classcount] = @classcount WHERE [classid] = @classid">
                <DeleteParameters>
                    <asp:Parameter Name="classid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="classid" Type="String" />
                    <asp:Parameter Name="classname" Type="String" />
                    <asp:Parameter Name="classmajor" Type="String" />
                    <asp:Parameter Name="classcount" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="classname" Type="String" />
                    <asp:Parameter Name="classmajor" Type="String" />
                    <asp:Parameter Name="classcount" Type="String" />
                    <asp:Parameter Name="classid" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
  
        </div>
    </form>
</body>
</html>
