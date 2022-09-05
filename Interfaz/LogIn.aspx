<%@ Page Title="Iniciar Sesion" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Interfaz.LogIn" %>

<asp:Content ID="Css" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-group {
            display: flex;
            justify-items: center;
            flex-direction: column;
            align-content: center;
            align-items: center;
        }

        .form-label {
            align-content: flex-start;
        }

        #label {
            display: flex;
        }

        a {
            cursor: pointer;
        }

        .asterisk {
            font-size: x-small;
            position: absolute;
            top: 0;
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-horizontal">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <br />
                <div class="well" style="text-align: center;">
                    <h1 id="title">Iniciar Sesion</h1>
                    <br />
                    <h4 class="form-label" id="label">Ingrese sus datos</h4>
                    <br />
                    <div runat="server" id="LogIndiv">
                        <div class="form-group">
                            <p><i class="glyphicon glyphicon-credit-card">Documento<span class="asterisk">*</span></i></p>
                            <asp:TextBox runat="server" CssClass="form-control" ID="logDocumento" MaxLength="8" TextMode="Phone"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <p><i class="glyphicon glyphicon-asterisk">Contraseña<span class="asterisk">*</span></i></p>
                            <asp:TextBox runat="server" CssClass="form-control" ID="logContraseña" TextMode="Password"></asp:TextBox>
                        </div>
                        <a runat="server" id="Rbtn">Eres nuevo y quieres Registrate?</a>
                        <asp:CheckBox ID="RememberMe" CssClass="form-control" runat="server" Text="Recordármelo la próxima vez." /><br />
                        <asp:Button runat="server" ID="LogInButton" Text="Inciar Sesion" OnClick="LogInButton_Click" />
                    </div>
                    <div runat="server" id="Register">
                        <div class="form-group">
                            <p><i class="glyphicon glyphicon-credit-card">Documento<span class="asterisk">*</span></i></p>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtDocumento" MaxLength="8" TextMode="Phone"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <p><i class="glyphicon glyphicon-user">Nombre y Apellido<span class="asterisk">*</span></i></p>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtNombreApellido"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <p><i class="glyphicon glyphicon-asterisk">Contraseña<span class="asterisk">*</span></i></p>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtContraseña" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <p><i class="glyphicon glyphicon-envelope">Correo<span class="asterisk">*</span></i></p>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <p><i class="glyphicon glyphicon-earphone">Telefono<span class="asterisk">*</span></i></p>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtTelefono" TextMode="Phone"></asp:TextBox>
                        </div>
                        <div runat="server" id="ObraSocial">
                            <div class="form-group">
                                <p><i class="glyphicon glyphicon-briefcase">CUIL<span class="asterisk">*</span></i></p>
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtCuil" MaxLength="11" TextMode="Phone"></asp:TextBox>
                            </div>
                        </div>
                        <asp:CheckBox ID="MainContent_btnObraSocial" runat="server" CssClass="form-check" Text=" + Obra Social" />
                        <asp:FileUpload accept="image/jpeg,image/jpg,image/png" ID="FileProfile" runat="server" CssClass="center" />
                        <br />
                        <a runat="server" id="Lbtn">Ya tienes cuenta y quieres Iniciar Sesion?</a>
                        <asp:Label ID="label1" runat="server" Text="Datos ingresados erroneamente" ForeColor="Red" Visible="False"><br /></asp:Label><!--Para los mensajes de error-->
                        <asp:Button ID="RegisterButton" runat="server" Text="Registrase" OnClick="RegisterButton_Click" />
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="scriptLoad" runat="server" ContentPlaceHolderID="scriptLoad">
    <script>
        $("#MainContent_Register").hide();
        $("#MainContent_Rbtn").click(function () { $("#title").html = "<h1 id='title'>Registrarse</h1>"; $("#MainContent_Rbtn").hide(); $("#MainContent_Lbtn").show(); $("#MainContent_LogIndiv").hide(); $("#MainContent_Register").show(); });
        $("#MainContent_Lbtn").click(function () { $("#title").html = "<h1 id='title'>Iniciar Sesion</h1>"; $("#MainContent_Lbtn").hide(); $("#MainContent_Rbtn").show(); $("#MainContent_Register").hide(); $("#MainContent_LogIndiv").show(); });
        $("#MainContent_ObraSocial").hide();
        $("#MainContent_MainContent_btnObraSocial").click(function () { $("#MainContent_ObraSocial").toggle(); });
    </script>
</asp:Content>