// Programmer: Jack Crowder
// Class: CIS 3000 Summer 2021
// Program Purpose: Dice Simulator Game
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment5_JC.Assignment5_JC
{
    public partial class rollingDice : System.Web.UI.Page
    {
        //Universal varibles
        Random rng = new Random();
        int dice1, dice2;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Clear the Output
            OutputLB.Items.Clear();
        }
       //Output the rng feature
        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = 1; i <= 5; i++)
                
            {
                dice1 = rng.Next(6) + 1;
                dice2 = rng.Next(6) + 1;
                //Tells the user if they won
                if (Convert.ToInt32(NumberSelectionList.SelectedValue) == (dice1 + dice2))
                {
                    OutputLB.Items.Add("The roll is: " + (dice1 + dice2));
                    OutputLB.Items.Add("You win! Your number is " + (NumberSelectionList.SelectedValue));
                }
                else
                {
                    OutputLB.Items.Add("The roll is: " + (dice1 + dice2));
                    OutputLB.Items.Add("You lose ... Your number " + (NumberSelectionList.SelectedValue) +" did not appear");
                }


            }   

            
          
        }
    }
}