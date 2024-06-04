
Partial Class Register
    Inherits System.Web.UI.Page
    Dim d As New daoclass
    Private Sub Register_Click(sender As Object, e As EventArgs) Handles Register.Click

        Try
            label2.text = ""
            label2.text = d.getrandom_number()

            Dim body As String = "Respected Sir/Madam ,<br/> </br> we are thankful to have association with us.<br> please Check  Your Account Email Id for otp" & Label2.text & "for Verification of account.<br> Regards "
            Dim subject As String = "Verification Otp from Priya"
            Dim s As String = d.sendMail(uemail.value, "", "", subject, body)
            If s = "sent" Then
                label2.text = "verification otp sent to Your Email Id"
                'http://localhost:57576/Admin/thumb_image4.jpg
            End If
        Catch ex As Exception
            label2.text = "verification otp not sent to Your Email Id"
        End Try
    End Sub

    Private Sub Register_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
