<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="Category_Master.aspx.vb" Inherits="Category_Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-panel" style="margin-top: -670px;
    margin-left: 270px;">
          <div class="content-wrapper">
            <div class="row">
                      <h4 class="card-title">Category Master</h4>
                
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Create Your Own Category And Upload It.</h4>
                    <div class="form-sample">
                      
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Category Name</label>
                           
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="cname" placeholder="Category Name" runat="server"/>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  display="None" runat="server" ErrorMessage="Enter Valid Category Name" ControlToValidate="cname" ForeColor="red"></asp:RequiredFieldValidator>
                            
                            </div>
                          </div>
                        </div>
                          <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Category Type</label>
                           
                            <div class="col-sm-9">
                                     <asp:DropDownList ID="c_type" runat="server" class="form-control" DataSourceID="SqlDataSource4" DataTextField="tname" DataValueField="tname"></asp:DropDownList>

                                <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ShoppingConnectionString %>' SelectCommand="SELECT [tname] FROM [Type_master]"></asp:SqlDataSource>
                                                          </div>
                 
                               
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
                    <h4 class="card-title">Category List</h4>
                    <div class="form-sample">
                      
                       
                       <div class="row">
                        <div class="col-md-12">
                          <div class="form-group row">
                                 <div style="overflow: scroll;  
                height: auto;  
                width: 100%;">
                                     <asp:GridView ID="GridView2" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="id">
                                  <Columns>
                                                      <asp:templatefield headertext="Image">
                                          <ItemTemplate >
                                              <asp:Image runat="server" ID="img1" ImageUrl='<%#"../" + Eval("c_img") %>' Width="100px" Height="100px" />
                                          </ItemTemplate>
                                      </asp:templatefield>

                                      <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                      <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname"></asp:BoundField>
                                      <asp:BoundField DataField="tname" HeaderText="tname" SortExpression="tname"></asp:BoundField>
                                      <asp:BoundField DataField="c_disc" HeaderText="c_disc" SortExpression="c_disc"></asp:BoundField>

                                      <asp:BoundField DataField="c_img" HeaderText="c_img" SortExpression="c_img"></asp:BoundField>
                                  <asp:TemplateField HeaderText="Action">
                                      <ItemTemplate >
                                          <asp:ImageButton ID="ImageButton1" runat="server" width="32px" commandname="Delete" ToolTip="delete" ImageUrl="~/thumb_image1.jpg" CausesValidation="false" />
                                        <asp:ImageButton ID="ImageButton2" runat="server" width="32px" onclick="ImageButton2_Click"   tooltip="edit" ImageUrl="~/thumb_image3.jpg" CausesValidation="false" />
                                  
                                           </ItemTemplate>
                                  </asp:TemplateField> 
                                  </Columns>
                              </asp:GridView>

                                 </div>
                              
                              
                              <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ShoppingConnectionString %>' SelectCommand="SELECT * FROM [CategoryMaster]" DeleteCommand="DELETE FROM [CategoryMaster] WHERE [id] = @id" InsertCommand="INSERT INTO [CategoryMaster] ([cname], [tname], [c_disc], [c_img]) VALUES (@cname, @tname, @c_disc, @c_img)" UpdateCommand="UPDATE [CategoryMaster] SET [cname] = @cname, [tname] = @tname, [c_disc] = @c_disc, [c_img] = @c_img WHERE [id] = @id">

                                  <DeleteParameters>
                                      <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                                  </DeleteParameters>
                                  <InsertParameters>
                                      <asp:Parameter Name="cname" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="tname" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="c_disc" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="c_img" Type="String"></asp:Parameter>
                                  </InsertParameters>
                                  <UpdateParameters>
                                      <asp:Parameter Name="cname" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="tname" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="c_disc" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="c_img" Type="String"></asp:Parameter>
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

