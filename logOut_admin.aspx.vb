
Partial Class Admin_logOut_admin
    Inherits System.Web.UI.Page

    Private Sub Admin_logOut_admin_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            Session("u_name") = ""
            Session.Clear()
            Session.Abandon()
            Response.Cache.SetCacheability(HttpCacheability.NoCache)
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
            Response.Cache.SetNoStore()
            Session.RemoveAll()
            Response.Redirect("login.aspx")

        Catch ex As Exception
            Session("u_name") = ""
            Session.Clear()
            Session.Abandon()
            Response.Cache.SetCacheability(HttpCacheability.NoCache)
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
            Response.Cache.SetNoStore()
            Session.RemoveAll()
            Response.Redirect("login.aspx")
        End Try
    End Sub
End Class
