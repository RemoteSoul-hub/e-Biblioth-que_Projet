<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Bibliothèque_Projet.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="imgs/generaluser.png"/>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h3>Connexion - Membre</h3>
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
                        <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block btn-lg w-100" ID="Button1" runat="server" Text="Connexion" />
                        </div>
                         <div class="col">
                        <hr>
                     </div>
                  </div>
                        <div class="form-group">
                           <a href="usersignup.aspx"><input class="btn btn-dark btn-block btn-lg w-100" id="Button2" type="button" value="Inscription" /></a>
                        </div>
                             </div>
                  </div>
               </div>
            </div>
            <a href="accueil.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
</asp:Content>
