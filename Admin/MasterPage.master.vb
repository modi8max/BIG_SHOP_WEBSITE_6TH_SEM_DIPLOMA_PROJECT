
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Private Sub MasterPage_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("uname") <> "" Then
            u_name.Text = Session("uname")
            u_type.Text = Session("utype")
            u_image.Src = Session("upic")
            upic.Src = Session("upic")
            u_pic.Src = Session("upic")
            uname.Text = u_name.Text
            u_email.Text = Session("u_email")
        Else
            Response.Redirect("login.aspx")
        End If
    End Sub
End Class

