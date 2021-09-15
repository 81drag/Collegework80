//Programmer: Jack Crowder
//Class: CIS3000 - Summer 2021
//Program Purpose: Display Submitted Student Information
 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1.NewFolder1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Button To Display User Input
        protected void BTN_Click(object sender, EventArgs e)
        {
            Lbl.Text = "Welcome " + TB1.Text + " to CIS3000 – Application Development Class.  All " + TB2.Text + " students can benefitfrom taking this class.  CIS 3000 is perfect for students majoring in " + TB3.Text + ".";
        }
    }
}