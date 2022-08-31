<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Nav.ascx.cs" Inherits="Interfaz.Nav" %>

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" runat="server" href="~/">Hospital One</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a runat="server" href="~/Home">Inicio</a></li>
                <li><a runat="server" href="~/LogIn">Turnos</a></li>
                <li><a runat="server" href="~/Sedes">Sedes</a></li>
                <li><a runat="server" href="~/AM">Ayudanos a mejorar</a></li>
            </ul>
            <div class="right"><a href="#"><img class="navbar-profile" src="Images/profile.png" alt="profile-image" /></a></div>
        </div>
    </div>
</div>