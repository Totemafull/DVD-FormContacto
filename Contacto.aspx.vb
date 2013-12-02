Imports System.Net.Mail

Partial Class Contacto
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
            Mail.Bcc.Add("david.granados@cleverft.com")
            Mail.Subject = Asunto
            Mail.Body = Cuerpo
            Mail.IsBodyHtml = True

            Dim miSMTPClient As New SmtpClient("mail.emailsrvr.com", 587)
            miSMTPClient.Credentials = New System.Net.NetworkCredential("david.granados@cleverft.com", "dgranados")
            miSMTPClient.Send(Mail)

            Mail.Dispose()
            Mail = Nothing

        Catch ex As Exception
            resultado = MailDestinatario & ex.Message
        End Try

        Return resultado

    End Function

    Protected Sub btn_Enviar_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Enviar.Click
        Enviar(tb_Nombre.Text, "felipevanc@gmail.com", "Comentario_" & tb_Nombre.Text, tb_Mensaje.Text & "<br />" & tb_Email.Text & "<br />" & tb_Nacionalidad.Text & "<br /> nos conocio por: " & DD_Forma.SelectedValue)
    End Sub
End Class
