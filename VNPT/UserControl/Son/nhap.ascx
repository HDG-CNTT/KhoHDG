<%@ Control Language="C#" AutoEventWireup="true" CodeFile="nhap.ascx.cs" Inherits="User_Control_Son_nhap" %>
<section class="content-header">
      <h1>
        Nhập dữ liệu
        <small>advanced tables</small>
      </h1>
     
</section>


<section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Hover Data Table</h3>
                <p class="box-title">
               
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="KHO_ID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="PHONG_BAN_ID" HeaderText="PHONG_BAN_ID" SortExpression="PHONG_BAN_ID" />
                            <asp:BoundField DataField="KHO_ID" HeaderText="KHO_ID" ReadOnly="True" SortExpression="KHO_ID" />
                            <asp:BoundField DataField="KHOCHA_ID" HeaderText="KHOCHA_ID" SortExpression="KHOCHA_ID" />
                            <asp:BoundField DataField="LOAIKHO_ID" HeaderText="LOAIKHO_ID" SortExpression="LOAIKHO_ID" />
                            <asp:BoundField DataField="TEN_KHO" HeaderText="TEN_KHO" SortExpression="TEN_KHO" />
                            <asp:BoundField DataField="CAP_DO" HeaderText="CAP_DO" SortExpression="CAP_DO" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SolutionVNPT %>" ProviderName="<%$ ConnectionStrings:SolutionVNPT.ProviderName %>" SelectCommand="SELECT * FROM &quot;DM_KHO&quot;"></asp:SqlDataSource>
               
                 </p>
            </div>
            <!-- /.box-header -->
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>





