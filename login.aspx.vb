
Partial Class Admin_login
    Inherits System.Web.UI.Page




    Private Sub btn_ServerClick(sender As Object, e As EventArgs) Handles btn.ServerClick
        Response.Redirect("https://accounts.google.com")
    End Sub

    Public Sub login_Click(sender As Object, e As EventArgs) Handles login.Click
        Try
            Dim d As New DAOclass
            Dim ds As New Data.DataSet
            Dim p(1) As String
            p(0) = "@u_name"
            p(1) = "@u_pass"
            Dim v(1) As String
            v(0) = uname.Value
            v(1) = upass.Text
            ds = d.load_data(p, v, "Select * from Login_Master where u_name=@u_name and u_pass=@u_pass")
            If ds.Tables(0).Rows.Count > 0 Then

                Session.Add("uname", uname.Value)

                Session.Add("utype", ds.Tables(0).Rows(0).Item("u_type"))
                Session.Add("u_email", ds.Tables(0).Rows(0).Item("u_email"))
                Session.Add("upic", ds.Tables(0).Rows(0).Item("u_img"))

                Response.Redirect("Admin/MainPage.aspx")

            Else
                Label1.Text = "Invalid User Name and Password"
            End If








        Catch ex As Exception

        End Try
    End Sub


End Class
