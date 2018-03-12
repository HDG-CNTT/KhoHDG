<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DM_PhongBan.ascx.cs" Inherits="UserControl_Son_DM_PhongBan" %>
<section class="content-header">
      <h1>
        Nhập danh mục kho
      </h1>
</section>
<section class="content">
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Thêm kho mới</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Minimal</label>
                <select class="form-control select2" style="width: 100%;">
                  <option selected="selected">Alabama</option>
                  <option>Alaska</option>
                  <option>California</option>
                  <option>Delaware</option>
                  <option>Tennessee</option>
                  <option>Texas</option>
                  <option>Washington</option>
                </select>
              </div>
              <!-- /.form-group -->
              <div class="form-group">
                <label>Disabled</label>
                <select class="form-control select2" disabled="disabled" style="width: 100%;">
                  <option selected="selected">Alabama</option>
                  <option>Alaska</option>
                  <option>California</option>
                  <option>Delaware</option>
                  <option>Tennessee</option>
                  <option>Texas</option>
                  <option>Washington</option>
                </select>
              </div>
              <!-- /.form-group -->
            </div>
            <!-- /.col -->
            <div class="col-md-6">
              <div class="form-group">
                <label>Multiple</label>
                <select class="form-control select2" multiple="multiple" data-placeholder="Select a State"
                        style="width: 100%;">
                  <option>Alabama</option>
                  <option>Alaska</option>
                  <option>California</option>
                  <option>Delaware</option>
                  <option>Tennessee</option>
                  <option>Texas</option>
                  <option>Washington</option>
                </select>
              </div>
              <!-- /.form-group -->
              <div class="form-group">
                <label>Disabled Result</label>
                <select class="form-control select2" style="width: 100%;">
                  <option selected="selected">Alabama</option>
                  <option>Alaska</option>
                  <option disabled="disabled">California (disabled)</option>
                  <option>Delaware</option>
                  <option>Tennessee</option>
                  <option>Texas</option>
                  <option>Washington</option>
                </select>
              </div>
              <!-- /.form-group -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
      </div>
        </section>
<section class="content">
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Danh sách kho trong hệ thống</h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
           <div class="col-xs-12">
          <div class="box">
                </div>
            <!-- /.box-header -->
            <div class="box-body">
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
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
         
          <!-- /.box -->
        </div>
  
          </div>
       
        </div>
 
      </div>
        </section>

