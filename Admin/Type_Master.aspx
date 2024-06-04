<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="Type_Master.aspx.vb" Inherits="Type_Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-panel" style="margin-top: -670px;
    margin-left: 270px;">
          <div class="content-wrapper">
            <div class="row">
                      <h4 class="card-title">Type Master</h4>
                
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Create Your Own Types And Upload It.</h4>
                    <div class="form-sample">
                      
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Type Name</label>
                           
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="tname" placeholder="Type Name" runat="server"/>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  display="None" runat="server" ErrorMessage="Enter Valid Type Name" ControlToValidate="tname" ForeColor="red"></asp:RequiredFieldValidator>
                            
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Image</label>
                            <div class="col-sm-9">
                                <asp:FileUpload ID="FileUpload1" runat="server" accept="Images/*"/>
                                
                         
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Description</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" placeholder="Description" id="des" runat="server"/>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  display="None" runat="server" ErrorMessage="Enter Valid Description" ControlToValidate="des" ForeColor="red"></asp:RequiredFieldValidator>
                       
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                         
                                <div class="form-group">
                             
                              <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-success me-2">Submit</asp:LinkButton>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" forecolor="red"/>
                                    
                                    <asp:Label ID="lblimage" visible="false" runat="server" Text="Label"></asp:Label>
                                    <asp:Label ID="lblid" visible="false" runat="server" Text="Label"></asp:Label>

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
                    <h4 class="card-title">Types List</h4>
                    <div class="form-sample">
                      
                       <div class="row">
                        <div class="col-md-12">
<div class="form-group row">
                              <div style="overflow: scroll;  
                height: auto;  
                width: 100%;">
                              <asp:GridView ID="GridView2" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="id" Width="80%">
                                  <Columns>
                                      <asp:TemplateField HeaderText="Image">
                                          <ItemTemplate>
                                              <asp:Image runat="server" ID="img1" ImageUrl='<%#"../" + Eval("t_img") %>' Width="100px" Height="100px" />
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True"></asp:BoundField>
                                      <asp:BoundField DataField="tname" HeaderText="tname" SortExpression="tname"></asp:BoundField>
                                      <asp:BoundField DataField="tdesc" HeaderText="tdesc" SortExpression="tdesc"></asp:BoundField>
                                      <asp:BoundField DataField="t_img" HeaderText="t_img" SortExpression="t_img"></asp:BoundField>
                                   <asp:TemplateField HeaderText="Action">
                                      <ItemTemplate>
                                                            <asp:ImageButton ID="ImageButton1" runat="server" Width="32px" CommandName="Delete" ToolTip="delete" ImageUrl="~/images/icon/icons8-remove.gif" CausesValidation="false" />
                                                            <asp:ImageButton ID="ImageButton2" runat="server" Width="32px" OnClick="ImageButton2_Click" ToolTip="edit" ImageUrl="~/images/icon/icons8-edit.gif" CausesValidation="false" />

                                                        </ItemTemplate>
                                  </asp:TemplateField> 
                                  </Columns>

                              </asp:GridView>
                        </div>       
                              <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ShoppingConnectionString %>' SelectCommand="SELECT * FROM [Type_master]" DeleteCommand="DELETE FROM [Type_master] WHERE [id] = @id" InsertCommand="INSERT INTO [Type_Master] ([tname], [tdesc], [t_img]) VALUES (@tname, @tdesc, @t_img)" UpdateCommand="UPDATE [Type_Master] SET [tname] = @tname, [tdesc] = @tdesc, [t_img] = @t_img WHERE [id] = @id">

                                  <DeleteParameters>
                                      <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                                  </DeleteParameters>
                                  <InsertParameters>
                                      <asp:Parameter Name="tname" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="tdesc" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="t_img" Type="String"></asp:Parameter>
                                  </InsertParameters>
                                  <UpdateParameters>
                                      <asp:Parameter Name="tname" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="tdesc" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="t_img" Type="String"></asp:Parameter>
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

