<%@ Page Title="" Language="C#" MasterPageFile="~/VNPTMasterPage.master" AutoEventWireup="true" CodeFile="DuyntTest.aspx.cs" Inherits="DuyntTest" %>

<%@ Register src="UserControl/Duy/Phieu_xuat_khach_hang.ascx" tagname="Phieu_xuat_khach_hang" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Phieu_xuat_khach_hang ID="Phieu_xuat_khach_hang1" runat="server" />
</asp:Content>

