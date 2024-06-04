
Partial Class Type_Master
    Inherits System.Web.UI.Page
    Private Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Try
            If Session("bf") = 0 Then
                'edit
                If FileUpload1.HasFile Then
                    Dim fname As String = "images/types/" & FileUpload1.PostedFile.FileName
                    FileUpload1.SaveAs(Server.MapPath("~/" + fname))
                    SqlDataSource2.InsertParameters("tname").DefaultValue = tname.Value
                    SqlDataSource2.InsertParameters("tdesc").DefaultValue = des.Value
                    SqlDataSource2.InsertParameters("t_img").DefaultValue = fname
                    SqlDataSource2.Insert()
                    SqlDataSource2.DataBind()
                End If


            Else
                'edit
                Dim fname As String = ""
                If FileUpload1.HasFile Then
                    fname = "images/types/" & FileUpload1.PostedFile.FileName
                    FileUpload1.SaveAs(Server.MapPath("~/" + fname))
                    'delete
                    If System.IO.File.Exists(Server.MapPath("~/" + lblimage.Text)) Then
                        System.IO.File.Delete(Server.MapPath("~/" + lblimage.Text))
                    End If
                Else
                    fname = lblimage.Text
                End If
                SqlDataSource2.UpdateParameters("tname").DefaultValue = tname.Value
                SqlDataSource2.UpdateParameters("tdesc").DefaultValue = des.Value
                SqlDataSource2.UpdateParameters("t_img").DefaultValue = fname
                SqlDataSource2.UpdateParameters("id").DefaultValue = lblid.Text

                SqlDataSource2.Update()
                SqlDataSource2.DataBind()
                Session("bf") = 0
            End If

        Catch ex As Exception
            ' MsgBox(ex.Message)
        End Try


    End Sub
    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs)
        Try
            Dim row As GridViewRow = CType(CType(sender, Control).Parent.Parent, GridViewRow)
            Dim rindex As Integer = row.RowIndex
            tname.Value = GridView2.Rows(rindex).Cells(2).Text
            lblid.Text = GridView2.Rows(rindex).Cells(1).Text
            lblimage.Text = GridView2.Rows(rindex).Cells(4).Text

            des.Value = GridView2.Rows(rindex).Cells(3).Text
            tname.Focus()
            Session.Add("bf", 1)
        Catch ex As Exception

        End Try
    End Sub

    Private Sub Default2_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Session.Add("bf", 0)
        End If
    End Sub
End Class
