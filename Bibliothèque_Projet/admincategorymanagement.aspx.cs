using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bibliothèque_Projet
{
    public partial class admincategorymanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        // Lien Ajouter
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfCatExists())
            {
                Response.Write("<script>alert('Cet ID de catégorie existe déjà');</script>");
            }
            else
            {
                addNewCat();
            }
        }
        // Lien Editer
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfCatExists())
            {
                updateCat();

            }
            else
            {
                Response.Write("<script>alert('Catégorie non existante');</script>");
            }
        }
        // Lien Supprimer
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfCatExists())
            {
                deleteCat();

            }
            else
            {
                Response.Write("<script>alert('Catégorie n'existe pas');</script>");
            }
        }
        // Lien Trouver
        protected void Button1_Click(object sender, EventArgs e)
        {
            getCatByID();
        }
        //fonction trouver avec ID
        void getCatByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from category_master_tbl where category_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('ID Invalide');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        // Fonction supprimer 
        void deleteCat()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from category_master_tbl WHERE category_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Profil supprimé!');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        // Fonction Editer 
        void updateCat()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE category_master_tbl SET category_name=@category_name WHERE category_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@category_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Catégorie mise à jour!');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        // fonction ajout 
        void addNewCat()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO category_master_tbl(category_id,category_name) values(@category_id,@category_name)", con);

                cmd.Parameters.AddWithValue("@category_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@category_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Catégorie ajoutée avec succès');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        // Fonction verification id
        bool checkIfCatExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from category_master_tbl where category_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}
