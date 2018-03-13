<%@ Page Title="" Language="C#" MasterPageFile="~/VNPTMasterPage.master" AutoEventWireup="true" CodeFile="Xuat_thiet_bi_khach_hang.aspx.cs" Inherits="Xuat_thiet_bi_khach_hang" %>

<%@ Register src="UserControl/Duy/Phieu_thu_thiet_bi_khach_hang.ascx" tagname="Phieu_thu_thiet_bi_khach_hang" tagprefix="uc1" %>
<%@ Register src="UserControl/Duy/Phieu_xuat_khach_hang.ascx" tagname="Phieu_xuat_khach_hang" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc2:Phieu_xuat_khach_hang ID="Phieu_xuat_khach_hang1" runat="server" />
</asp:Content>

