Imports System.Net.Mail

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

        End If
    End Sub

    Public Shared Function Enviar(ByVal NombreDestinatario As String, ByVal MailDestinatario As String, ByVal Asunto As String, ByVal Cuerpo As String) As String

        Dim resultado As String = MailDestinatario & " - Ok"
        Try
            Dim Mail As New System.Net.Mail.MailMessage()
            Mail.IsBodyHtml = True
            Mail.From = New MailAddress("info@consultorespediatricos.com", "DVD-FormContacto")
            Mail.To.Add(New MailAddress(MailDestinatario, NombreDestinatario))
            Mail.Bcc.Add("felipevanc@gmail.com")
            Mail.Bcc.Add("david.granados@cleverft.com")
            Mail.Subject = Asunto
            Mail.Body = Cuerpo
            Mail.IsBodyHtml = True

            Dim miSMTPClient As New SmtpClient("mail.emailsrvr.com", 587)
            miSMTPClient.Credentials = New System.Net.NetworkCredential("info@consultorespediatricos.com", "cped%100")
            miSMTPClient.Send(Mail)

            Mail.Dispose()
            Mail = Nothing

        Catch ex As Exception
            resultado = MailDestinatario & ex.Message
        End Try

        Return resultado

    End Function

    Protected Sub btn_Enviar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Enviar.Click
        tb_Mensaje.Text = IIf(DD_Profesion.SelectedValue = "Otra", tb_Mensaje.Text & vbCrLf & "Profesión: " & tb_Otra.Text, tb_Mensaje.Text & vbCrLf & "Profesión: " & DD_Profesion.SelectedValue)
        tb_Mensaje.Text = tb_Mensaje.Text.Replace(vbCrLf, "<br />")
        Enviar(tb_Nombre.Text, tb_Email.Text, tb_Asunto.Text, tb_Mensaje.Text)
        pnl_Enviado.Visible = True
        pnl_Formulario.Visible = False
    End Sub

    Protected Sub DD_Profesion_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DD_Profesion.SelectedIndexChanged
        If DD_Profesion.SelectedValue = "Otra" Then
            tb_Otra.Visible = True
            lbl_Espec.Visible = True
        Else
            tb_Otra.Visible = False
            lbl_Espec.Visible = False
        End If
    End Sub
End Class
