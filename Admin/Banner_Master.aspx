<%@ Page EnableEventValidation="false" Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Banner_Master.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="main-panel" style="margin-top: -670px; margin-left: 270px;">
        <div class="content-wrapper">
            <div class="row">
                <h4 class="card-title">Banner Master</h4>

                <div class="col-12 grid-margin">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Create Your Own Banner And Upload It.</h4>
                            <div class="form-sample">

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Banner Name</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" id="bname" placeholder="Banner Name" runat="server" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="None" runat="server" ErrorMessage="Enter Valid Banner Name" ControlToValidate="Bname" ForeColor="red"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Image</label>
                                            <div class="col-sm-9">
                                                <asp:FileUpload ID="FileUpload2" runat="server" accept="Images/*" />


                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Description</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" placeholder="Description" id="des" runat="server" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="None" runat="server" ErrorMessage="Enter Valid Description" ControlToValidate="des" ForeColor="red"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">

                                        <div class="form-group">

                                            <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-success me-2">Submit</asp:LinkButton>
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="red" />
                                            <asp:Label ID="lblid" Visible="false" runat="server" Text="Label"></asp:Label>
                                            <asp:Label ID="lblimage" Visible="false" runat="server" Text="Label"></asp:Label>
                                        </div>
                                        <div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 grid-margin">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Banner List</h4>
                            <div class="form-sample">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group row">
                                            <div style="overflow: scroll;  
                        height: auto;  
                width: 100%;">
                                                <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="80%">
                                            



                                                    <Columns>
                                                           <asp:templatefield headertext="Image">
                                          <ItemTemplate >
                                              <asp:Image runat="server" ID="img1" ImageUrl='<%#"../" + Eval("b_image") %>' Width="100px" Height="100px" />
                                          </ItemTemplate>
                                      </asp:templatefield>
                                                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                                        <asp:BoundField DataField="b_name" HeaderText="b_name" SortExpression="b_name"></asp:BoundField>
                                                        <asp:BoundField DataField="b_desc" HeaderText="b_desc" SortExpression="b_desc"></asp:BoundField>
                                                        <asp:BoundField DataField="b_image" HeaderText="b_image" SortExpression="b_image"></asp:BoundField>
                                                    <asp:TemplateField HeaderText="Action">
                                       <ItemTemplate>
                                                            <asp:ImageButton ID="ImageButton1" runat="server" Width="32px" CommandName="Delete" ToolTip="delete" ImageUrl="~/images/icon/icons8-remove.gif" CausesValidation="false" />
                                                            <asp:ImageButton ID="ImageButton2" runat="server" Width="32px" OnClick="ImageButton2_Click" ToolTip="edit" ImageUrl="~/images/icon/icons8-edit.gif" CausesValidation="false" />

                                                        </ItemTemplate>
                                  </asp:TemplateField> 
                                                         </Columns>
                                                
                                                </asp:GridView>
                                              
                                            
                                            </div> 
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ShoppingConnectionString %>' SelectCommand="SELECT * FROM [Banner_master]" DeleteCommand="DELETE FROM [Banner_master] WHERE [id] = @id" InsertCommand="INSERT INTO [Banner_master] ([b_name], [b_desc], [b_image]) VALUES (@b_name, @b_desc, @b_image)" UpdateCommand="UPDATE [Banner_master] SET [b_name] = @b_name, [b_desc] = @b_desc, [b_image] = @b_image WHERE [id] = @id">

                                                <DeleteParameters>
                                                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="b_name" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="b_desc" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="b_image" Type="String"></asp:Parameter>
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="b_name" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="b_desc" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="b_image" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </div>
                                    </div>

                                </div>




                            </div>
                        </div>
                    </div>
                </div>
              
            </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        <footer class="footer">
            <div class="container-fluid clearfix">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2022<a href="http://www.bigshop.com/" target="_blank">BigShop</a>. All rights reserved.</span>
              <span class="float-none float-sm-end d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i>
              </span>
            </div>
          </footer>
        <!-- partial -->
    </div>
</asp:Content>




