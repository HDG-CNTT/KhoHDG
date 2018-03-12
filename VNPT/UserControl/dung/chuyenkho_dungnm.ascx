<%@ Control Language="C#" AutoEventWireup="true" CodeFile="chuyenkho_dungnm.ascx.cs" Inherits="UserControl_dung_chuyenkho_dungnm" %>

<section class="content-header">
      <h1>
        CHUYỂN KHO VẬT TƯ
      </h1>
</section>
<section class="content">
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Tìm kiếm phiếu chuyển kho</h3>
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <div class="box-body">
          <div class="row">
            <div class="col-md-11">
               <div class="dung_chuyenkho_timkiem">
                <asp:Button ID="But_Add_PhieuChuyen" runat="server" Text="Thêm mới" Width="100px" ForeColor="Black" CssClass="But_Add_PhieuChuyen"/>
                <asp:TextBox ID="txt_maphieuchuyen_timkiem" runat="server" Width="150px" />
                <asp:TextBox ID="txt_tungay_timkiem" runat="server" Width="100px" />
                  <asp:ImageButton ID="ImageButton_tungay" runat="server" ImageUrl="~/dist/img/credit/Calendar.png" OnClick="ImageButton_tungay_Click" style="height: 16px" />
                  <br />
                  <asp:Calendar ID="Cal_tungay" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnDayRender="Cal_tungay_DayRender" OnSelectionChanged="Cal_tungay_SelectionChanged" ShowGridLines="True" Width="200px">
                      <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                      <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                      <OtherMonthDayStyle ForeColor="#CC9966" />
                      <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                      <SelectorStyle BackColor="#FFCC66" />
                      <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                      <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                  </asp:Calendar>
                  <asp:TextBox ID="txt_denngay_timkiem" runat="server" Width="100px" CssClass="txt_denngay_timkiem" />
                  <asp:ImageButton ID="ImageButton_denngay" runat="server" ImageUrl="~/dist/img/credit/Calendar.png" OnClick="ImageButton_denngay_Click" style="height: 16px" />
                  <br />
                  <asp:Calendar ID="Cal_denngay" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnDayRender="Cal_denngay_DayRender" OnSelectionChanged="Cal_denngay_SelectionChanged" ShowGridLines="True" Width="200px">
                      <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                      <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                      <OtherMonthDayStyle ForeColor="#CC9966" />
                      <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                      <SelectorStyle BackColor="#FFCC66" />
                      <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                      <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                  </asp:Calendar>
                  <asp:Button ID="Timkiem_chuyenkho" runat="server" Text="Tìm kiếm" Width="100px" />
                   </div>
                 
                                  
              <!-- /.form-group -->
            </div>
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-header -->   
        <!-- /.box-body -->
      </div>
    </section>
