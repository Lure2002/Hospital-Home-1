<%@ Page Title="Iniciar Sesion" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Interfaz.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-group{
            display: flex;
            justify-items: center;
            flex-direction: column;
            align-content: center;
            align-items: center;
        }
        .form-label{
            align-content:flex-start;
        }
        #label{
            display:flex;
        }
    </style>
    <script>
        $("#ObraSocial").hide();
        $('MainContent_btnObraSocial').click(function () { $('#ObraSocial').show(); $('#MainContent_btnObraSocial').hide(); })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-horizontal">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <br />
                <div class="well" style="text-align:center;">
                <h1>Inicie Sesion</h1><br />
                <h4 Class="form-label" id="label">Ingrese sus datos</h4><br />
                <div class="form-group">
                        <p><i class="glyphicon glyphicon-credit-card"> Documento<span class="asterisk">*</span></i></p>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtDocumento" MaxLength="8" TextMode="Phone"></asp:TextBox>
                    </div>
                <div class="form-group">
                        <p><i class="glyphicon glyphicon-user"> Nombre<span class="asterisk">*</span></i></p>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtNombre" ></asp:TextBox>
                    </div>
                <div class="form-group">
                        <p><i class="glyphicon glyphicon-user"> Apellido<span class="asterisk">*</span></i></p>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtApellido"></asp:TextBox>
                    </div>
                <div class="form-group">
                        <p><i class="glyphicon glyphicon-asterisk"> Contraseña<span class="asterisk">*</span></i></p>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtContraseña" TextMode="Password"></asp:TextBox>
                    </div>
                <div class="form-group">
                        <p><i class="glyphicon glyphicon-envelope"> Correo<span class="asterisk">*</span></i></p>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" TextMode="Email"></asp:TextBox>
                </div>
                <div class="form-group">
                        <p><i class="glyphicon glyphicon-earphone"> Telefono<span class="asterisk">*</span></i></p>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtTelefono" TextMode="Phone"></asp:TextBox>
                </div>
                <div id="ObraSocial" aria-disabled="true">
                    <div class="form-group">
                        <p><i class="glyphicon glyphicon-briefcase"> CUIL<span class="asterisk">*</span></i></p>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCuil" MaxLength="11" TextMode="Phone"></asp:TextBox>
                    </div>
                </div>
                <input type="checkbox" id="MainContent_btnObraSocial" value="+ Obra Social" /><br />
                <asp:CheckBox ID="RememberMe" runat="server" Text="Recordármelo la próxima vez." /><br />
                <asp:Literal ID="Literal1" runat="server" EnableViewState="False"><br /></asp:Literal><!--Para los mensajes de error-->
                <asp:Button ID="LoginButton" runat="server" Text="Inicio de sesión" />
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
    </div>
</asp:Content>
