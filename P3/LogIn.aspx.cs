using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P3
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string username = TextBox3.Text;
                string password = TextBox4.Text;

                // Check if the user exists in the database and if the password is correct
                if (CheckUserCredentials(username, password))
                {
                    // If the login is successful, redirect the user to the home page
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    // If the login fails, display an error message to the user
                    Response.Write("<script>alert('Invalid username or password.');</script>");
                }
            }
        }

        private bool CheckUserCredentials(string username, string password)
        {
            // Implement your database logic here to check if the user exists and if the password is correct
            // Return true if the user exists and the password is correct, false otherwise
            return false; // Replace with your actual logic
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            // Set CausesValidation property to false
            Button2.CausesValidation = false;

            // Redirect to home.aspx page
            Response.Redirect("home.aspx");
        }
    }
}