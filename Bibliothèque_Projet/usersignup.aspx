<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Bibliothèque_Projet.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
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
                           <h4>Inscription - Membre</h4>
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
                           <asp:Button class="btn btn-dark btn-md" ID="Button1" runat="server" Text="S'inscrire" OnClick="Button1_Click"/>
                        </div>
                             </div>
                  </div>
               </div>
            </div>
            <a href="accueil.aspx"><< Retour à la page d'accueil</a><br><br>
         </div>
      </div>
</asp:Content>