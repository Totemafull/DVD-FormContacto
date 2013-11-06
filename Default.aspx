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
                    <td>Mensaje: </td>
                    <td><asp:TextBox ID="tb_Mensaje" runat="server"></asp:TextBox></td>
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
