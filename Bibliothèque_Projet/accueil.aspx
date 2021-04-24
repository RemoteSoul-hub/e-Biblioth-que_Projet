<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="accueil.aspx.cs" Inherits="Bibliothèque_Projet.accueil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
      <img src="imgs/accueil-bg.jpg" class="img-fluid"/>
   </section>
    <section>
      <div class="container">
         <div class="row">
            <div class="col-12">
               <center>
                  <h2>Ce que ce site offre:</h2>
                  <p><b>Votre bibliothèque virtuelle</b></p>
               </center>
            </div>
         </div>
         <div class="row">
            <div class="col-md-6">
               <center>
                  <img width="150px" src="imgs/digital-inventory.png"/>
                  <h4>Inventaire de Livres Digital</h4>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
            </div>
            <div class="col-md-6">
               <center>
                  <img width="150px" src="imgs/search-online.png"/>
                  <h4>Recherche Livres</h4>
                  <p class="text-justify">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor. reprehenderit</p>
               </center>
            </div>
         </div>
      </div>
   </section>
</asp:Content>
