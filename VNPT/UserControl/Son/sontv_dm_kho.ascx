<%@ Control Language="C#" AutoEventWireup="true" CodeFile="sontv_dm_kho.ascx.cs" Inherits="UserControl_Son_sontv_dm_kho" %>
<section class="content-header">
      <h1>
        Danh mục kho
      </h1>
</section>
<section class="content">

      <!-- SELECT2 EXAMPLE -->
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Khai báo kho mới</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
          
        <div class="box-body">
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label>Tên phòng ban</label>
                <asp:DropDownList cssclass="form-control select2" style="width: 100%;" ID="DropDownList1" runat="server">
                    <asp:ListItem>Tô Viết Sơn 1</asp:ListItem>
                    <asp:ListItem>Tô Viết Sơn 2</asp:ListItem>
                    <asp:ListItem>Tô Viết Sơn 3</asp:ListItem>
                    <asp:ListItem>Tô Viết Sơn 4</asp:ListItem>
                  </asp:DropDownList>
              </div>
              <div class="form-group">
                <label>Chọn kho cha</label>
                <asp:DropDownList cssclass="form-control select2" style="width: 100%;" ID="DropDownList2" runat="server">
                    <asp:ListItem>Tô Viết Sơn 1</asp:ListItem>
                    <asp:ListItem>Tô Viết Sơn 2</asp:ListItem>
                    <asp:ListItem>Tô Viết Sơn 3</asp:ListItem>
                    <asp:ListItem>Tô Viết Sơn 4</asp:ListItem>
                  </asp:DropDownList>
              </div>                
              <!-- /.form-group -->
            </div>
            <div class="col-md-4">
              <div class="form-group">
                <label>Tên phòng ban</label>
                <asp:TextBox cssclass="form-control select2" ID="TextBox1" runat="server"></asp:TextBox>
              </div>         
       
              
              <!-- /.form-group -->
            </div>
            <div class="col-md-2">
              <div class="form-group">
                  <label></label>
                <asp:Button cssclass="btn btn-block btn-primary"  ID="btnThemKho" runat="server" Text="Thêm kho" OnClick="btnThemKho_Click" />
              </div>
              <div class="form-group">
                  <label></label>
                <asp:Button cssclass="btn btn-block btn-primary"  ID="btnSuaKho" runat="server" Text="Sửa kho" />
              </div>
              <div class="form-group">
                  <label></label>
                <asp:Button cssclass="btn btn-block btn-primary"  ID="btnXoaKho" runat="server" Text="Xóa kho" />
              </div>
              
       
              
              <!-- /.form-group -->
            </div>
              
              
         
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->






    <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Danh sách các kho trong hệ thống</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-md-12">
               <asp:GridView cssclass="table table-bordered table-hover" ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="KHO_ID" DataSourceID="Get_DM_Kho">
                        <Columns>
                            <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            <asp:BoundField DataField="PHONG_BAN_ID" HeaderText="ID Phòng ban" SortExpression="PHONG_BAN_ID" />
                            <asp:BoundField DataField="KHO_ID" HeaderText="ID Kho" ReadOnly="True" SortExpression="KHO_ID" />
                            <asp:BoundField DataField="KHOCHA_ID" HeaderText="ID Kho cha" SortExpression="KHOCHA_ID" />
                            <asp:BoundField DataField="LOAIKHO_ID" HeaderText="ID Loại kho" SortExpression="LOAIKHO_ID" />
                            <asp:BoundField DataField="TEN_KHO" HeaderText="Tên kho" SortExpression="TEN_KHO" />
                            <asp:BoundField DataField="CAP_DO" HeaderText="Cấp độ kho" SortExpression="CAP_DO" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="Get_DM_Kho" runat="server" ConnectionString="<%$ ConnectionStrings:SolutionVNPT %>" ProviderName="<%$ ConnectionStrings:SolutionVNPT.ProviderName %>" SelectCommand="SELECT * FROM &quot;DM_KHO&quot;"></asp:SqlDataSource>
                          
   
            </div>
            <!-- /.col -->
            
      
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
        
      </div>

    </section>
