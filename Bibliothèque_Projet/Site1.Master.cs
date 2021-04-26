using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bibliothèque_Projet
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
                    LinkButton1.Visible = true; // lien connexion
                    LinkButton2.Visible = true; // lien inscription 
                    LinkButton3.Visible = false; // lien déconnexion 
                    LinkButton7.Visible = false; // lien bonjour utilisateur 
                    LinkButton6.Visible = true; // connexion admin 
                    LinkButton11.Visible =false; // lien gestion auteurs 
                    LinkButton5.Visible = false; // lien gestion catégories 
                    LinkButton8.Visible = false; // lien inventaire livres 
                    LinkButton9.Visible = false; // lien gestion livres 
                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // lien connexion
                    LinkButton2.Visible = false; // lien inscription 
                    LinkButton3.Visible = true; // lien déconnexion 
                    LinkButton7.Visible = true; // lien bonjour utilisateur 
                    LinkButton7.Text = "Bonjour " + Session["full_name"].ToString();
                    LinkButton6.Visible = true; // connexion admin 
                    LinkButton11.Visible = false; // lien gestion auteurs 
                    LinkButton5.Visible = false; // lien gestion catégories 
                    LinkButton8.Visible = false; // lien inventaire livres 
                    LinkButton9.Visible = false; // lien gestion livres 
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // lien connexion
                    LinkButton2.Visible = false; // lien inscription 
                    LinkButton3.Visible = true; // lien déconnexion 
                    LinkButton7.Visible = true; // lien bonjour utilisateur 
                    LinkButton7.Text = "Compte Bibliothécaire en ligne";
                    LinkButton6.Visible = false; // connexion admin 
                    LinkButton11.Visible = true; // lien gestion auteurs 
                    LinkButton5.Visible = true; // lien gestion catégories 
                    LinkButton8.Visible = true; // lien inventaire livres 
                    LinkButton9.Visible = true; // lien gestion livres 
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("admincategorymanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookstatuspage.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }
    }
}