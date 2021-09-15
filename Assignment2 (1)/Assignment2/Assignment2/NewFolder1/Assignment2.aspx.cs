//Programmer: Jack Crowder
//Class: CIS3000 - Summer 2021
//Program Purpose:Conversion for Celsius and Fahrenheit
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2.NewFolder1
{
    public partial class Assignment2 : System.Web.UI.Page
    {// Variable is used in more than one Method
            Double totals;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Displays the Conversion for Fahrenheit
        protected void Button1_Click(object sender, EventArgs e)
        {
            Double celsius;
           

            celsius = Convert.ToDouble(UserTB.Text);
            totals = (9 * celsius)/5 + 32;

            OutLbl.Text = totals + "F";

        }
        //Displays the Conversion for Celsius
        protected void Button2_Click(object sender, EventArgs e)
        {
            Double Fahrenheit;
            

            Fahrenheit = Convert.ToDouble(UserTB.Text);
            totals = (5.0/9.0) * (Fahrenheit - 32);

            OutLbl.Text = totals + "C";
        }
    }
}