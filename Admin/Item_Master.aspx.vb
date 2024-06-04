
Partial Class Item_Master
    Inherits System.Web.UI.Page
    Private Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Try
            If Session("bf") = 0 Then
                'edit
                If FileUpload1.HasFile Then
                    Dim fname As String = "images/Items/" & FileUpload1.PostedFile.FileName
                    FileUpload1.SaveAs(Server.MapPath("~/" + fname))
                    SqlDataSource2.InsertParameters("iname").DefaultValue = iname.Value
                    SqlDataSource2.InsertParameters("itype").DefaultValue = i_type.Text
                    SqlDataSource2.InsertParameters("cname").DefaultValue = cname.Text
                    SqlDataSource2.InsertParameters("scname").DefaultValue = scname.Text
                    SqlDataSource2.InsertParameters("size").DefaultValue = size.Value
                    SqlDataSource2.InsertParameters("color").DefaultValue = color.Value
                    SqlDataSource2.InsertParameters("prize").DefaultValue = prize.Value
                    SqlDataSource2.InsertParameters("disc").DefaultValue = dis.Value
                    SqlDataSource2.InsertParameters("qty").DefaultValue = qty.Value

                    SqlDataSource2.InsertParameters("i_image").DefaultValue = fname
                    SqlDataSource2.InsertParameters("i_desc").DefaultValue = des.Value
                    SqlDataSource2.Insert()
                    SqlDataSource2.DataBind()
                End If


            Else
                'edit
                Dim fname As String = ""
                If FileUpload1.HasFile Then
                    fname = "images/Items/" & FileUpload1.PostedFile.FileName
                    FileUpload1.SaveAs(Server.MapPath("~/" + fname))
                    'delete
                    If System.IO.File.Exists(Server.MapPath("~/" + lblimage.Text)) Then
                        System.IO.File.Delete(Server.MapPath("~/" + lblimage.Text))
                    End If
                Else
                    fname = lblimage.Text
                End If
                SqlDataSource2.UpdateParameters("iname").DefaultValue = iname.Value
                SqlDataSource2.UpdateParameters("itype").DefaultValue = i_type.Text
                SqlDataSource2.UpdateParameters("cname").DefaultValue = cname.Text
                SqlDataSource2.UpdateParameters("scname").DefaultValue = scname.Text
                SqlDataSource2.UpdateParameters("size").DefaultValue = size.Value
                SqlDataSource2.UpdateParameters("color").DefaultValue = color.Value
                SqlDataSource2.UpdateParameters("prize").DefaultValue = prize.Value
                SqlDataSource2.UpdateParameters("disc").DefaultValue = dis.Value
                SqlDataSource2.UpdateParameters("qty").DefaultValue = qty.Value

                SqlDataSource2.UpdateParameters("i_image").DefaultValue = fname
                SqlDataSource2.UpdateParameters("i_desc").DefaultValue = des.Value
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
            iname.Value = GridView2.Rows(rindex).Cells(2).Text
            i_type.Text = GridView2.Rows(rindex).Cells(3).Text
            cname.Text = GridView2.Rows(rindex).Cells(4).Text
            scname.Text = GridView2.Rows(rindex).Cells(5).Text
            size.Value = GridView2.Rows(rindex).Cells(6).Text
            color.Value = GridView2.Rows(rindex).Cells(7).Text
            prize.Value = GridView2.Rows(rindex).Cells(8).Text
            dis.Value = GridView2.Rows(rindex).Cells(9).Text
            qty.Value = GridView2.Rows(rindex).Cells(10).Text
            lblid.Text = GridView2.Rows(rindex).Cells(1).Text
            lblimage.Text = GridView2.Rows(rindex).Cells(11).Text

            des.Value = GridView2.Rows(rindex).Cells(12).Text
            iname.Focus()
            Session.Add("bf", 1)
        Catch ex As Exception

        End Try
    End Sub

    Private Sub Default2_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Session.Add("bf", 0)
        End If
    End Sub

    Private Sub i_type_SelectedIndexChanged(sender As Object, e As EventArgs) Handles i_type.SelectedIndexChanged

    End Sub

    Private Sub i_type_TextChanged(sender As Object, e As EventArgs) Handles i_type.TextChanged
        Try
            Dim d As New DAOclass
            Dim p(0) As String
            p(0) = "@t_name"
            Dim v(0) As String
            v(0) = i_type.Text
            Dim ds As New Data.DataSet
            ds = d.getdata(p, v, "select * from Sub_Category_master where t_name=@t_name")
            If ds.Tables(0).Rows.Count > 0 Then
                ' TextBox1.Text = ds.Tables(0).Rows(0).Item("c_name")
                'TextBox2.Text = ds.Tables(0).Rows(0).Item("sc_name")



            Else
                Label1.Text = "No record Found!!"
            End If
        Catch ex As Exception
            Label1.Text = ex.Message
        End Try
    End Sub
End Class
