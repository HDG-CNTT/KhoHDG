<%@ Page Title="" Language="C#" MasterPageFile="~/VNPTMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="~/UserControl/dung/chuyenkho_dungnm.ascx" TagPrefix="uc1" TagName="chuyenkho_dungnm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!-- Main content -->
    <uc1:chuyenkho_dungnm runat="server" ID="chuyenkho_dungnm" />
    <section class="content">
       
    </section>
    <!-- /.content -->
  
  <!-- /.content-wrapper -->
</asp:Content>
