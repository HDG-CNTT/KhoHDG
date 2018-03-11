<%@ Page Title="" Language="C#" MasterPageFile="~/VNPTMasterPage.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>

<%@ Register src="~/UserControl/Son/nhap.ascx" tagname="nhap" tagprefix="uc1" %>
<%@ Register Src="~/UserControl/Son/NhapDanhBa.ascx" TagPrefix="uc1" TagName="NhapDanhBa" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="content">
        <uc1:NhapDanhBa runat="server" ID="NhapDanhBa" />
       
    </section>
   
</asp:Content>

