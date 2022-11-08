<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pacientes.aspx.cs" Inherits="Hospital.pacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            height: 79px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style6 {
            height: 178px;
            background-color: #FFFFFF;
        }
        .auto-style8 {
            height: 79px;
            width: 569px;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            margin-right: 0px;
            background-color: #FFFFFF;
        }
        .auto-style10 {
            height: 178px;
            width: 569px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style11 {
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2"><strong><span class="auto-style11">PACIENTES</span></strong></td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <br class="auto-style11" />
                    <span class="auto-style11">Cedula:
                    </span>
                    <asp:TextBox ID="TCedula" runat="server"></asp:TextBox>
                    <br class="auto-style11" />
                    <br class="auto-style11" />
                    <span class="auto-style11">Nombre:</span><asp:TextBox ID="TNombre" runat="server"></asp:TextBox>
                    <br class="auto-style11" />
                    <br class="auto-style11" />
                    <span class="auto-style11">Apellidos:</span><asp:TextBox ID="TApellidos" runat="server"></asp:TextBox>
                    <br class="auto-style11" />
                    <br class="auto-style11" />
                    <span class="auto-style11">Genero ( M / F ):
                    </span>
                    <asp:TextBox ID="TGenero" runat="server"></asp:TextBox>
                    <br class="auto-style11" />
                    <br class="auto-style11" />
                    <span class="auto-style11">Seguro (1=SI 2=NO):
                    </span>
                    <asp:TextBox ID="TSeguro" runat="server"></asp:TextBox>
                    <br class="auto-style11" />
                </td>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style9" DataKeyNames="cedula" DataSourceID="SqlDataSource2" Height="261px" Width="1003px">
                        <Columns>
                            <asp:BoundField DataField="cedula" HeaderText="cedula" ReadOnly="True" SortExpression="cedula" />
                            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                            <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                            <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero" />
                            <asp:CheckBoxField DataField="seguro" HeaderText="seguro" SortExpression="seguro" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" SelectCommand="SELECT * FROM [Pacientes]" InsertCommand="insert into Pacientes values(@cedula,@nombre,@apellidos,@genero,@seguro)" DeleteCommand="delete Pacientes where cedula = @cedula" OnSelecting="SqlDataSource2_Selecting" UpdateCommand="update Pacientes set @nombre,@apellidos,@genero,@seguro where @cedula">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="TCedula" Name="cedula" PropertyName="Text" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TCedula" Name="cedula" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TNombre" Name="nombre" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TApellidos" Name="apellidos" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TGenero" Name="genero" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TSeguro" Name="seguro" PropertyName="Text" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:ControlParameter ControlID="TNombre" Name="nombre" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TApellidos" Name="apellidos" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TGenero" Name="genero" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TSeguro" Name="seguro" PropertyName="Text" />
                            <asp:ControlParameter ControlID="TCedula" Name="cedula" PropertyName="Text" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="BAgregar" runat="server" Text="Agregar" OnClick="BAgregar_Click" CssClass="auto-style11" />
                    <span class="auto-style11">&nbsp;
                    </span>
                    <asp:Button ID="BBorrar" runat="server" Text="Borrar" OnClick="BBorrar_Click" CssClass="auto-style11" />
                    <span class="auto-style11">&nbsp;
                    </span>
                    <asp:Button ID="BModificar" runat="server" Text="Modificar" OnClick="BModificar_Click" CssClass="auto-style11" />
                </td>
                <td class="auto-style6">
                    <asp:Image ID="Image1" runat="server" Height="259px" ImageUrl="~/imagenes/hospital-sign-blue-wd.jpg" Width="1003px" CssClass="auto-style11" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
