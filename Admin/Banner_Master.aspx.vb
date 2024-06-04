Imports System.IO
Partial Class Default2
    Inherits System.Web.UI.Page

    Private Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton2.Click
        Try
            If Session("bf") = 0 Then
                'edit
                If FileUpload2.HasFile Then
                    Dim fname As String = "images/banner/" & FileUpload2.PostedFile.FileName
                    FileUpload2.SaveAs(Server.MapPath("~/" + fname))
                    SqlDataSource1.InsertParameters("b_name").DefaultValue = bname.Value
                    SqlDataSource1.InsertParameters("b_desc").DefaultValue = des.Value
                    SqlDataSource1.InsertParameters("b_image").DefaultValue = fname
                    SqlDataSource1.Insert()
                    SqlDataSource1.DataBind()
                End If


            Else
                'edit
                Dim fname As String = ""
                If FileUpload2.HasFile Then
                    fname = "images/banner/" & FileUpload2.PostedFile.FileName
                    FileUpload2.SaveAs(Server.MapPath("~/" + fname))
                    'delete
                    If System.IO.File.Exists(Server.MapPath("~/" + lblimage.Text)) Then
                        System.IO.File.Delete(Server.MapPath("~/" + lblimage.Text))
                    End If
                Else
                    fname = lblimage.Text
                End If
                SqlDataSource1.UpdateParameters("b_name").DefaultValue = bname.Value
                SqlDataSource1.UpdateParameters("b_desc").DefaultValue = des.Value
                SqlDataSource1.UpdateParameters("b_image").DefaultValue = fname
                SqlDataSource1.UpdateParameters("id").DefaultValue = lblid.Text

                SqlDataSource1.Update()
                SqlDataSource1.DataBind()
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
            bname.Value = GridView1.Rows(rindex).Cells(2).Text
            lblid.Text = GridView1.Rows(rindex).Cells(1).Text
            lblimage.Text = GridView1.Rows(rindex).Cells(4).Text

            des.Value = GridView1.Rows(rindex).Cells(3).Text
            bname.Focus()
            Session.Add("bf", 1)
        Catch ex As Exception

        End Try
    End Sub

    Private Sub Default2_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Session.Add("bf", 0)
        End If
    End Sub
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class
