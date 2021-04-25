<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="Bibliothèque_Projet.adminauthormanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Gestion d'auteurs</h4>
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="imgs/writer.png" />
                                       
                                    </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-5">
                                <label>ID Auteur</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID Auteur"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Trouver" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-7">
                                <label>Nom d'auteur</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Nom d'auteur"></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row d-flex gap-3 col-8">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-md btn-success" runat="server" Text="Ajouter" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-md btn-warning" runat="server" Text="Editer" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-md btn-danger" runat="server" Text="Supprimer" />
                            </div>
                        </div>


                    </div>
                </div>

               <a href="accueil.aspx"><< Retour à la page d'accueil</a><br><br>
                <br>
            </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Liste des auteurs</h4>
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
