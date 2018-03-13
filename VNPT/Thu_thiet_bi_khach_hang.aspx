<%@ Page Title="" Language="C#" MasterPageFile="~/VNPTMasterPage.master" AutoEventWireup="true" CodeFile="Thu_thiet_bi_khach_hang.aspx.cs" Inherits="Thu_thiet_bi_khach_hang" %>

<%@ Register src="UserControl/Duy/Phieu_thu_thiet_bi_khach_hang.ascx" tagname="Phieu_thu_thiet_bi_khach_hang" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Phieu_thu_thiet_bi_khach_hang ID="Phieu_thu_thiet_bi_khach_hang1" runat="server" />
</asp:Content>

