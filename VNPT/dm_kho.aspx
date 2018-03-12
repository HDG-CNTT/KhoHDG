<%@ Page Title="" Language="C#" MasterPageFile="~/VNPTMasterPage.master" AutoEventWireup="true" CodeFile="dm_kho.aspx.cs" Inherits="dm_kho" %>

<%@ Register Src="~/UserControl/Son/sontv_dm_kho.ascx" TagPrefix="uc1" TagName="sontv_dm_kho" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:sontv_dm_kho runat="server" ID="sontv_dm_kho" />
</asp:Content>

