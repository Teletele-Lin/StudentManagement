<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowClassInfo.aspx.cs" Inherits="StudentInformationManagement.ShowClassInfo" %>

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
          班级信息  >  班级信息列表
        </blockquote>
 
  <div class="layui-inline">
    <label class="layui-label">班级编号</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="classNumber" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox> 
    </div>
 </div>
 <div class="layui-inline">
      <label class="layui-form-label">班级名称</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="className" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox>
    </div>
</div>
 <div class="layui-inline">
      <label class="layui-form-label">所属专业</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="classMajor" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox>
    </div>
 </div>
 <div class="layui-inline">
     <label class="layui-form-label"></label>
      <asp:Button ID="btnSearch" runat="server"   Text="查询"  CssClass="layui-btn" OnClick="btnSearch_Click"/> 
  </div>
   <asp:Repeater ID="RpClassInfo" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
            <table cellpadding="2" cellspacing="1" class="layui-table">
                <thead>
                    <tr>
                        <th  style="text-align:center;">班级编号</th>
                        <th  style="text-align:center;">班级名称</th>
                        <th  style="text-align:center;">所属专业</th>
                        <th  style="text-align:center;">人数</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td align="center"><%#Eval("classid")%> </td>
                <td align="center"><%#Eval("classname")%> </td>
                <td align="center"><%#Eval("classmajor")%> </td>
                <td align="center"><%#Eval("classcount")%> </td>
             </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table></FooterTemplate>
    </asp:Repeater>


        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
            <table cellpadding="2" cellspacing="1" class="layui-table">
                <thead>
                    <tr>
                        <th  style="text-align:center;">班级编号</th>
                        <th  style="text-align:center;">班级名称</th>
                        <th  style="text-align:center;">所属专业</th>
                        <th  style="text-align:center;">人数</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td align="center"><%#Eval("classid")%> </td>
                <td align="center"><%#Eval("classname")%> </td>
                <td align="center"><%#Eval("classmajor")%> </td>
                <td align="center"><%#Eval("classcount")%> </td>
             </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table></FooterTemplate>
        </asp:Repeater>
        <asp:Button ID="Button1" runat="server" Text="返回" Visible="False" CssClass="layui-btn" OnClick="Button1_Click" />
        <br />


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString %>" SelectCommand="SELECT * FROM [classinfo]"></asp:SqlDataSource>


    </div>
    </form>
   
</body>
</html>
