<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NhapDanhBa.ascx.cs" Inherits="UserControl_Son_NhapDanhBa" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<table class="auto-style1">
    <tr>
        <td>Tên</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Số máy</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Nhập" OnClick="Button1_Click" />
        </td>
    </tr>
</table>

