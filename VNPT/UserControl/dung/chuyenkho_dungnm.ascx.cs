using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_dung_chuyenkho_dungnm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_maphieuchuyen_timkiem.Attributes.Add("placeholder", "Nhập tên phiếu");
        txt_tungay_timkiem.Attributes.Add("placeholder", "Từ ngày");
        txt_denngay_timkiem.Attributes.Add("placeholder", "Đến ngày");
        if (!IsPostBack)
        {
            Cal_tungay.Visible = false;
            Cal_denngay.Visible = false;
        }
    }

    protected void ImageButton_tungay_Click(object sender, ImageClickEventArgs e)
    {
        if (Cal_tungay.Visible)
        {
            Cal_tungay.Visible = false;
        }
        else
        {
            Cal_tungay.Visible = true;
        }
    }
    protected void ImageButton_denngay_Click(object sender, ImageClickEventArgs e)
    {
        if (Cal_denngay.Visible)
        {
            Cal_denngay.Visible = false;
        }
        else
        {
            Cal_denngay.Visible = true;
        }
    }

    protected void Cal_tungay_SelectionChanged(object sender, EventArgs e)
    {
        txt_tungay_timkiem.Text = Cal_tungay.SelectedDate.ToString("d");
        Cal_tungay.Visible = false;
    }
    protected void Cal_denngay_SelectionChanged(object sender, EventArgs e)
    {
        txt_denngay_timkiem.Text = Cal_denngay.SelectedDate.ToString("d");
        Cal_denngay.Visible = false;
    }

    protected void Cal_tungay_DayRender(object sender, DayRenderEventArgs e)
    {
        if(e.Day.IsOtherMonth || e.Day.IsWeekend)
        {
            e.Day.IsSelectable = false;
        }
    }
    protected void Cal_denngay_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.IsOtherMonth || e.Day.IsWeekend)
        {
            e.Day.IsSelectable = false;
        }
    }
}