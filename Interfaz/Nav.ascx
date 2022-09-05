<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Nav.ascx.cs" Inherits="Interfaz.Nav" %>

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" runat="server" href="~/Home">Hospital One</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a runat="server" href="~/Home">Inicio</a></li>
                <li><a runat="server" href="~/LogIn">Turnos</a></li>
                <li><a runat="server" href="~/Sedes">Sedes</a></li>
                <li><a runat="server" href="~/AM">Ayudanos a mejorar</a></li>
            </ul>
            <div class="right">
                <div class="menu">
                    <div id="profile" runat="server"></div>
                    <div id="dd" class="dd" aria-labelledby="dropdownMenuButton">
                        <asp:Button CssClass="dropdown-item" runat="server" Text="Perfil"/>
                        <asp:Button OnClick="CS_Click" ID="CS" CssClass="dropdown-item" runat="server" Text="Cerrar sesion"/>
                    </div>  
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $("#dd").hide();
    if (document.baseURI != 'http://localhost:63237/LogIn') {
        $("#ctl11_profile").click(function () { $("#dd").toggle(); })
        window.onclick == $("#dd").hide();
    }
</script>