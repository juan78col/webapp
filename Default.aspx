<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webapp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Formulario 1</h1>
        <p class="lead">Escriba Numero de Documento<asp:TextBox ID="txtbuscar" runat="server"></asp:TextBox>
            <asp:Button ID="btnbuscar" runat="server" OnClick="btnbuscar_Click" Text="Buscar" />
        </p>
        <p class="lead">
            <asp:Label ID="lbl1" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl3" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl4" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl5" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl6" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl7" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl8" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl9" runat="server"></asp:Label>
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Formulario 2</h2>
            <asp:Label ID="Label1" runat="server" Text="Periodo Laborado"></asp:Label>
            <asp:TextBox ID="txtperiodolaboral" runat="server" Width="158px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Hora total Laboradas"></asp:Label>
            <asp:TextBox ID="txttotalhoras" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="horas Extras"></asp:Label>
            <asp:TextBox ID="txthorasextra" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="descuentos Nomina"></asp:Label>
            <asp:TextBox ID="txtdescuentosnomina" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnguardar" runat="server" OnClick="btnguardar_Click" Text="Guardar" />
            <asp:Label ID="lblmensaje" runat="server"></asp:Label>
            <br />
            <br />
        </div>
        <div class="col-md-4">
            <h2>Formulario 3</h2>
            <p>
                <asp:Label ID="Label6" runat="server" Text="Salud"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblsaludempleado" runat="server" Text="Empleado"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblsaludempleador" runat="server" Text="Empleador"></asp:Label>
            </p>
            <p>Pension&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblpensionempleado" runat="server" Text="Empleado"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblpensionempleador" runat="server" Text="Empleador"></asp:Label>
            </p>
            <p>
                <asp:Button ID="btncalcular" runat="server" OnClick="btncalcular_Click" Text="Calcular" />
            </p>
            <p>&nbsp;</p>
            <p>
&nbsp;Total a pagar por nomina:
                <asp:Label ID="lblpgarnomina" runat="server"></asp:Label>
            </p>
        </div>
    </div>

</asp:Content>
