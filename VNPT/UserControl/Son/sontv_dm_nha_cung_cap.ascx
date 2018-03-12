<%@ Control Language="C#" AutoEventWireup="true" CodeFile="sontv_dm_nha_cung_cap.ascx.cs" Inherits="UserControl_Son_sontv_dm_kho" %>
<section class="content-header">
      <h1>
        Danh mục nhà cung cấp thiết bị
      </h1>
</section>
<section class="content">
       <div class="row">
        <div class="col-xs-12">
          <div class="box box-default">
            <div class="box-header with-border">
              <h3 class="box-title">Thêm mới, xóa - Nhà cung cấp thiết bị</h3>
            </div>
            <div class="box-body">
              
              <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal-info">
                Thêm mới nhà cung cấp
              </button>
               
              <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#modal-danger">
                Xóa nhà cung cấp
              </button>
                            
            </div>
          </div>
        </div>
      </div>
       <div class="row">
        <div class="col-xs-12">
          <div class="box box-default">
            <div class="box-header with-border">
              <h3 class="box-title">Danh sách nhà cung cấp thiết bị</h3>
            </div>
            <div class="box-body">
              
            <asp:GridView cssclass="table table-bordered table-hover" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NHACUNGCAP_ID" DataSourceID="SourceNhaCungCap">
                <Columns>
                    <asp:BoundField DataField="NHACUNGCAP_ID" HeaderText="ID Nhà cung cấp" ReadOnly="True" SortExpression="NHACUNGCAP_ID" />
                    <asp:BoundField DataField="MA_NHA_CUNG_CAP" HeaderText="Mã nhà cung cấp" SortExpression="MA_NHA_CUNG_CAP" />
                    <asp:BoundField DataField="TEN_NHA_CUNG_CAP" HeaderText="Tên nhà cung cấp" SortExpression="TEN_NHA_CUNG_CAP" />
                </Columns>
                </asp:GridView>
                            
                <asp:SqlDataSource ID="SourceNhaCungCap" runat="server" ConnectionString="<%$ ConnectionStrings:SolutionVNPT %>" ProviderName="<%$ ConnectionStrings:SolutionVNPT.ProviderName %>" SelectCommand="SELECT * FROM &quot;DM_NHA_CUNG_CAP&quot;"></asp:SqlDataSource>
                            
            </div>
          </div>
        </div>
      </div>

          


        <div class="modal modal-info fade " id="modal-info">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Thêm mới nhà cung cấp</h4>
              </div>
         <div class="modal-body">
          <div class="row modal-body">
             <asp:TextBox class="form-control" placeholder="Nhập MÃ nhà cung cấp vào đây..." ID="txtMaNhaCungCap" runat="server"></asp:TextBox>
          </div>
          <div class="row modal-body">
             <asp:TextBox class="form-control" placeholder="Nhập TÊN nhà cung cấp vào đây..." ID="txtTenNhaCungCap" runat="server"></asp:TextBox>
          </div>
            
            
              
              
         
          </div>                  
              <div class="modal-footer">
              
                <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Đóng lại</button>
                <asp:Button class="btn btn-outline" ID="btnThemMoi" runat="server" Text="Thêm mới nhà cung cấp" OnClick="btnThemMoi_Click"/>
                
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
 

        <div class="modal modal-danger fade" id="modal-danger">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Xóa nhà cung cấp thiết bị</h4>
              </div>
              <div class="modal-body">
                                <label>Mã nhà cung cấp thiết bị cần xóa</label>
                             <div class="row modal-body">
             <asp:TextBox class="form-control" placeholder="Nhập MÃ nhà cung cấp muốn xóa vào đây..." ID="txtMaNhaCungCapXoa" runat="server"></asp:TextBox>
          </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Đóng lại</button>
            
                 <asp:Button  ID="btnXoa" class="btn btn-outline" runat="server" Text="Xóa nhà cung cấp" OnClick="btnXoa_Click"/>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
 
    </section>



