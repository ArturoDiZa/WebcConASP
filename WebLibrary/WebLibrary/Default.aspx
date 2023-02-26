<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebLibrary._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Biblioteca</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <asp:panel runat="server" ID="pnlVista">
            <asp:GridView ID="dgvLibros" runat="server" AutoGenerateColumns="true"></asp:GridView>
            <asp:Button ID="btnNuevo" Text="Añadir Libro" runat="server" OnClick="btnNuevo_Click"/>
        </asp:panel>
        <asp:panel ID="pnlRegistro" runat="server" Visible="false">
            <div>
                <asp:Label ID="lblIsbn" Text="ISBN" runat="server"></asp:Label>
                <asp:TextBox ID="txtIsbn" runat="server" Width="183px"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblTitulo" Text="Titulo" runat="server"></asp:Label>
                <asp:TextBox ID="txtTitulo" runat="server" Width="186px"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblEdición" Text="Edición" runat="server"></asp:Label>
                <asp:TextBox ID="txtEdición" runat="server" Width="185px" TextMode="Number"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblAnio" Text="Año" runat="server"></asp:Label>
                <asp:TextBox ID="txtAnio" runat="server" TextMode="Number" Width="176px"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblAutores" Text="Autores" runat="server"></asp:Label>
                <asp:TextBox ID="txtAutores" runat="server" Width="181px"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblPais" Text="Pais" runat="server"></asp:Label>
                <asp:TextBox ID="txtPais" runat="server" Width="190px"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblSinopsis" Text="Sinopsis" runat="server"></asp:Label>
                <asp:TextBox ID="txtSinopsis" runat="server" Height="129px" TextMode="MultiLine" Width="325px"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblCarrera" Text="Carrera" runat="server"></asp:Label>
                <asp:TextBox ID="txtCarrera" runat="server" Width="222px"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblMateria" Text="Materia" runat="server"></asp:Label>
                <asp:TextBox ID="txtMateria" runat="server" Width="209px"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="btnGuardar" Text="Guardar Libro" runat="server" OnClick="btnGuardar_Click"/>
            <asp:Button ID="btnCancelar" Text="Cancelar" runat="server" OnClick="btnCancelar_Click"/>
        </asp:panel>
    </div>

    </asp:Content>
