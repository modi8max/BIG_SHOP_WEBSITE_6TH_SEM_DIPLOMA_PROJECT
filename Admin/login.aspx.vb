
Partial Class Admin_login
    Inherits System.Web.UI.Page

    Private Sub Admin_login_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = " "
    End Sub

    Private Sub Admin_login_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete
        Label1.Text = " "
    End Sub

    Private Sub btn_Load(sender As Object, e As EventArgs) Handles btn.Load

    End Sub

    Private Sub btn_ServerClick(sender As Object, e As EventArgs) Handles btn.ServerClick
        Response.Redirect("https://accounts.google.com")
    End Sub

    Private Sub login_Click(sender As Object, e As EventArgs) Handles login.Click
        Try
            Dim d As New DAOclass
            Dim ds As New Data.DataSet
            Dim p(1) As String
            p(0) = "@u_name"
            p(1) = "@u_pass"
            Dim v(1) As String
            v(0) = uname.Value
            v(1) = upass.Value
            ds = d.load_data(p, v, "Select * from login_master where u_name=@u_name and u_pass=@u_pass")
            If ds.Tables(0).Rows.Count > 0 Then
                Label1.Text = " "
                Session.Add("uname", uname.Value)

                Session.Add("utype", ds.Tables(0).Rows(0).Item("u_type"))
                Session.Add("u_email", ds.Tables(0).Rows(0).Item("u_email"))
                Session.Add("upic", ds.Tables(0).Rows(0).Item("u_pic"))
                Response.Redirect("MainPage.aspx")

            Else
                If upass.Value Is Nothing Then
                    Label1.Text = "Invalid User Name and Password"
                Else
                    Label1.Text = " "
                End If







            End If
        Catch ex As Exception
            Label1.Text = " "


        End Try
    End Sub

    Private Sub upass_PreRender(sender As Object, e As EventArgs) Handles upass.PreRender
        Label1.Text = "hii"


    End Sub
End Class
