<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Bibliothèque_Projet.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Mon Profil</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Nom Complet</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Nom Complet"></asp:TextBox>
                        </div>
                        <label>Mot de Passe</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Mot de Passe" TextMode="Password"></asp:TextBox>
                        </div>
                         <label>Adresse Courriel</label>
                         <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Votre adresse Courriel" TextMode="Email"></asp:TextBox>
                        </div>
                         <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  </div>
                        <div class="form-group">
                           <a href="usersignup.aspx"><input class="btn btn-dark btn-block btn-lg w-100" id="Button2" type="button" value="Mettre à jour" /></a>
                        </div>
                             </div>
                  </div>
               </div>
                         <a href="accueil.aspx"><< Retour à la page d'accueil</a><br><br>
            </div>
          <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/books1.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Mes Livres</h4>
                           <asp:Label class="badge rounded-pill bg-warning text-dark" ID="Label2" runat="server" Text="Information prêts"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         </div>
      </div>

</asp:Content>
