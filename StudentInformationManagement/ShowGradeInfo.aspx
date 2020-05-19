<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowGradeInfo.aspx.cs" Inherits="StudentInformationManagement.gradeInfo" %>

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
          成绩信息  >  成绩信息列表
        </blockquote>
 
  <div class="layui-inline">
    <label class="layui-label">成绩编号</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="gradeID" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox> 
    </div>
 </div>
 <div class="layui-inline">
      <label class="layui-form-label">学生对象</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="gradeStuName" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox>
    </div>
</div>
 <div class="layui-inline">
      <label class="layui-form-label">所学科目</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="gradeCourse" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox>
    </div>
 </div>
 <div class="layui-inline">
     <label class="layui-form-label"></label>
      <asp:Button ID="btnSearch" runat="server"   Text="查询"  CssClass="layui-btn" OnClick="btnSearch_Click"/> 
  </div>
   <asp:Repeater ID="RpGradeInfo" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
            <table cellpadding="2" cellspacing="1" class="layui-table">
                <thead>
                    <tr>
                        <th  style="text-align:center;">成绩编号</th>
                        <th  style="text-align:center;">学生姓名</th>
                        <th  style="text-align:center;">所学课程</th>
                        <th  style="text-align:center;">成绩得分</th>
                        <th  style="text-align:center;">其它</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td align="center"><%#Eval("gradeid")%> </td>
                <td align="center"><%#Eval("gradestuname")%> </td>
                <td align="center"><%#Eval("gradecourse")%> </td>
                <td align="center"><%#Eval("gradenumber")%> </td>
                <td align="center"><%#Eval("gradeothers")%> </td>
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
                        <th  style="text-align:center;">成绩编号</th>
                        <th  style="text-align:center;">学生姓名</th>
                        <th  style="text-align:center;">所学课程</th>
                        <th  style="text-align:center;">成绩得分</th>
                        <th  style="text-align:center;">其它</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td align="center"><%#Eval("gradeid")%> </td>
                <td align="center"><%#Eval("gradestuname")%> </td>
                <td align="center"><%#Eval("gradecourse")%> </td>
                <td align="center"><%#Eval("gradenumber")%> </td>
                <td align="center"><%#Eval("gradeothers")%> </td>
             </tr>
        </ItemTemplate>
        <FooterTemplate>

            </table></FooterTemplate>
    </asp:Repeater>

        <asp:Button ID="Button1" runat="server" Text="返回" Visible="False" CssClass="layui-btn" OnClick="Button1_Click" />
        <br />


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString %>" SelectCommand="SELECT * FROM [gradeinfo]"></asp:SqlDataSource>




    </div>
    </form>
   
</body>
</html>
