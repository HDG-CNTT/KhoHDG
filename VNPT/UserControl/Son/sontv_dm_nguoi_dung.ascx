<%@ Control Language="C#" AutoEventWireup="true" CodeFile="sontv_dm_nguoi_dung.ascx.cs" Inherits="UserControl_Son_sontv_dm_kho" %>
<section class="content-header">
      <h1>
        Danh mục người sử dụng
      </h1>
</section>
<section class="content">

   
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Danh mục người sử dụng kho</h3>

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
                <asp:Button cssclass="btn btn-block btn-primary"  ID="btnThemNSD" runat="server" Text="Thêm người dùng" OnClick="btnThemKho_Click" />
              </div>
              <div class="form-group">
                  <label></label>
                <asp:Button cssclass="btn btn-block btn-primary"  ID="btnSuaNSD" runat="server" Text="Sửa thông tin" />
              </div>
              <div class="form-group">
                  <label></label>
                <asp:Button cssclass="btn btn-block btn-primary"  ID="btnXoaNSD" runat="server" Text="Xóa người dùng" />
              </div>
              
       
              
              <!-- /.form-group -->
            </div>
              
              
         
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
      </div>

      
    






    

    </section>
