﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cookie_Cookie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie ck = Request.Cookies["Hello"];
        string str = "";
        if (ck == null)
        {
            lblHello.Text = "สวัสดี ชาวโลก";
        }
        else
        {
            str = "สวัสดีคุณ " + ck["Name"];
            str += "<br>คุณได้เข้าเว็บล่าสุด" + ck["LastVisited"];
            lblHello.Text = str;
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        HttpCookie ck = Request.Cookies["Hello"];
        if (ck == null)
        {
            ck = new HttpCookie("Hello");
        }
        ck["Name"] = txtName.Text;
        ck["LastVisited"] = DateTime.Now.ToString();
        ck.Expires = DateTime.Now.AddMinutes(1);
        Response.Cookies.Add(ck);
    }
}