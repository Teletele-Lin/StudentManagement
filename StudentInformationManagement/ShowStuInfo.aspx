<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowStuInfo.aspx.cs" Inherits="StudentInformationManagement.ShowStuInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="layui/css/layui.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <br />
    <div style="width:85%">
        <blockquote class="site-text layui-elem-quote">
          学生信息  >  学生信息列表
        </blockquote>
 
  <div class="layui-inline">
    <label class="layui-label">学号</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="stuID" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox> 
    </div>
 </div>
 <div class="layui-inline">
      <label class="layui-form-label">姓名</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="stuName" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox>
    </div>
</div>
 <div class="layui-inline">
      <label class="layui-form-label">班级</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="stuClass" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox>
    </div>
 </div>
 <div class="layui-inline">
     <label class="layui-form-label"></label>
      <asp:Button ID="btnSearch" runat="server"   Text="查询"  CssClass="layui-btn" OnClick="btnSearch_Click"/> 
  </div>
   <asp:Repeater ID="RpStuInfo" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
            <table cellpadding="2" cellspacing="1" class="layui-table">
                <thead>
                    <tr>
                        <th  style="text-align:center;">学号</th>
                        <th  style="text-align:center;">姓名</th>
                        <th  style="text-align:center;">性别</th>
                        <th  style="text-align:center;">所在班级</th>
                        <th  style="text-align:center;">联系电话</th>
                        <th  style="text-align:center;">邮箱</th>
                        <th  style="text-align:center;">QQ</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td align="center"><%#Eval("stuid")%> </td>
                <td align="center"><%#Eval("stuname")%> </td>
                <td align="center"><%#Eval("stugender")%> </td>
                <td align="center"><%#Eval("stuclass")%> </td>
                <td align="center"><%#Eval("stutelephone")%> </td>
                <td align="center"><%#Eval("stuemail")%> </td>
                <td align="center"><%#Eval("stuQQ")%> </td>
             </tr>
        </ItemTemplate>
        <FooterTemplate>

            </table></FooterTemplate>
    </asp:Repeater>

          <asp:Repeater ID="Repeater1" runat="server" Visible="False">
        <HeaderTemplate>
            <table cellpadding="2" cellspacing="1" class="layui-table">
                <thead>
                    <tr>
                        <th  style="text-align:center;">学号</th>
                        <th  style="text-align:center;">姓名</th>
                        <th  style="text-align:center;">性别</th>
                        <th  style="text-align:center;">所在班级</th>
                        <th  style="text-align:center;">联系电话</th>
                        <th  style="text-align:center;">邮箱</th>
                        <th  style="text-align:center;">QQ</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td align="center"><%#Eval("stuid")%> </td>
                <td align="center"><%#Eval("stuname")%> </td>
                <td align="center"><%#Eval("stugender")%> </td>
                <td align="center"><%#Eval("stuclass")%> </td>
                <td align="center"><%#Eval("stutelephone")%> </td>
                <td align="center"><%#Eval("stuemail")%> </td>
                <td align="center"><%#Eval("stuQQ")%> </td>
             </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table></FooterTemplate>
    </asp:Repeater>
        <asp:Button ID="Button1" runat="server" Text="返回" Visible="False" CssClass="layui-btn" OnClick="Button1_Click" />
        <br />


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString %>" SelectCommand="SELECT * FROM [stuinfo]"></asp:SqlDataSource>




    </div>
    </form>
   
</body>
</html>
