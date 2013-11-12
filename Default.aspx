<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="pnl_Formulario" runat="server">
            <table>
                <tr>
                    <td>Nombre: </td>
                    <td><asp:TextBox ID="tb_Nombre" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><asp:TextBox ID="tb_Email" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Asunto: </td>
                    <td><asp:TextBox ID="tb_Asunto" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Profesión:</td>
                    <td>
                    <asp:DropDownList ID="DD_Profesion" runat="server" AutoPostBack="true">
                        <asp:ListItem Value="Estudiante" text="Estudiante"></asp:ListItem>
                        <asp:ListItem Value="Empresario" text="Empresario"></asp:ListItem>
                        <asp:ListItem Value="Abogado" text="Abogado"></asp:ListItem>
                        <asp:ListItem Value="Médico" text="Médico"></asp:ListItem>
                        <asp:ListItem Value="Arquitecto" text="Arquitecto"></asp:ListItem>
                        <asp:ListItem Value="Economista" text="Economista"></asp:ListItem>
                        <asp:ListItem Value="Psicologo" text="Psicologo"></asp:ListItem>
                        <asp:ListItem Value="Agronomo" text="Agronomo"></asp:ListItem>
                        <asp:ListItem Value="Químico" text="Químico"></asp:ListItem>
                        <asp:ListItem Value="Periodista" text="Periodista"></asp:ListItem>
                        <asp:ListItem Value="Sociologo" text="Sociologo"></asp:ListItem>
                        <asp:ListItem Value="Ingeniero" text="Ingeniero"></asp:ListItem>
                        <asp:ListItem Value="Biologo" text="Biologo"></asp:ListItem>
                        <asp:ListItem Value="Fisico" text="Fisico"></asp:ListItem>
                        <asp:ListItem Value="Politologo" text="Politologo"></asp:ListItem>
                        <asp:ListItem Value="Otra" text="Otra"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="lbl_Espec" runat="server" Visible="false" Text="Especifique cual: "></asp:Label>
                    <asp:TextBox ID="tb_Otra" runat="server" Visible="false"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:middle">Mensaje: </td>
                    <td><asp:TextBox ID="tb_Mensaje" TextMode="MultiLine" Height="100px" Width="300px" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:LinkButton id="btn_Enviar" runat="server" Text="Enviar"></asp:LinkButton></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="pnl_Enviado" runat="server" Visible="false">
            <asp:Label ID="lbl_Enviado" runat="server">Mensaje enviado exitosamente</asp:Label>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
