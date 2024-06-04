<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="Item_Master.aspx.vb" Inherits="Item_Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-panel" style="margin-top: -670px;
    margin-left: 270px;">
          <div class="content-wrapper">
            <div class="row">
                      <h4 class="card-title">Item Master&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                      </h4>
                
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Create Your Own Items And Upload It.</h4>
                    <div class="form-sample">
                      
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Item Name</label>
                           
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="iname" placeholder="Item Name" runat="server"/>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  display="None" runat="server" ErrorMessage="Enter Valid Item Name" ControlToValidate="iname" ForeColor="red"></asp:RequiredFieldValidator>
                            
                            </div>
                          </div>
                        </div>
                            
                                  <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Item Type</label>
                           
                            <div class="col-sm-9">
                                <asp:DropDownList ID="i_type" AutoPostBack="true" runat="server" class="form-control"  DataSourceID="SqlDataSource1" DataTextField="tname" DataValueField="tname"></asp:DropDownList>

                                <asp:SqlDataSource runat="server" ID="SqlDataSource1"  ConnectionString='<%$ ConnectionStrings:ShoppingConnectionString %>' SelectCommand="SELECT [tname] FROM [Type_master]"></asp:SqlDataSource>
                            </div>
                          </div>
                        </div>
                            <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Category Name</label>
                              <%--<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
                            <div class="col-sm-9">

                                <asp:DropDownList  class="form-control" ID="cname" AutoPostBack="true" runat="server" DataSourceID="SqlDataSource6" DataTextField="cname" DataValueField="cname"></asp:DropDownList>

                                <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:ShoppingConnectionString %>' SelectCommand="SELECT DISTINCT [cname] FROM [SubCategory_master] WHERE ([tname] = @tname)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="i_type" PropertyName="SelectedValue" DefaultValue="0" Name="tname" Type="String"></asp:ControlParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                        </div>
                          </div>
                        </div>
                            <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Sub Category Name</label>
                              <%--<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>--%>
                            <div class="col-sm-9">
                                <asp:DropDownList ID="scname" runat="server" AutoPostBack="true" class="form-control" placeholder="Category Name" DataSourceID="SqlDataSource5" DataTextField="scname" DataValueField="scname"></asp:DropDownList>

                                <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:ShoppingConnectionString %>' SelectCommand="SELECT [scname] FROM [SubCategory_master] WHERE ([tname] = @tname)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="i_type" PropertyName="SelectedValue" DefaultValue="0" Name="tname" Type="String"></asp:ControlParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                          </div>
                        </div>
                          <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Size</label>
                           
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="size" placeholder="Size" runat="server"/>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  display="None" runat="server" ErrorMessage="Enter Valid Size" ControlToValidate="size" ForeColor="red"></asp:RequiredFieldValidator>
                            
                            </div>
                          </div>
                        </div>
                            <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Color</label>
                           
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="color" placeholder="Color Name" runat="server"/>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  display="None" runat="server" ErrorMessage="Enter Valid Color" ControlToValidate="color" ForeColor="red"></asp:RequiredFieldValidator>
                            
                            </div>
                          </div>
                        </div>
                            <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Prize</label>
                           
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="prize" placeholder="Prize" runat="server"/>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  display="None" runat="server" ErrorMessage="Enter Valid Prize" ControlToValidate="prize" ForeColor="red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid Prize" display="None"  ForeColor="red" ControlToValidate="prize" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                          </div>
                          </div>
                        </div>
                            <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Discount</label>
                           
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="dis" placeholder="Discount" runat="server"/>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6"  display="None" runat="server" ErrorMessage="Enter Valid Discount" ControlToValidate="dis" ForeColor="red"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid Discount" display="None"  ForeColor="red" ControlToValidate="dis" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                     
                            </div>
                          </div>
                        </div>
                            <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Quantity</label>
                           
                            <div class="col-sm-9">
                              <input type="text" class="form-control" id="qty" placeholder="QTY" runat="server"/>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7"  display="None" runat="server" ErrorMessage="Enter Valid QTY" ControlToValidate="qty" ForeColor="red"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter valid QTY" display="None"  ForeColor="red" ControlToValidate="qty" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                     
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
                    <h4 class="card-title">Item List</h4>
                    <div class="form-sample">
                      
                       <div class="row">
                        <div class="col-md-12">
                          <div class="form-group row">
                              <div style="overflow: scroll;  
                        height: auto;    
                width: 85%;">
                                    <asp:GridView ID="GridView2" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="id" Width="5%">
                                  <Columns>
                                      <asp:templatefield headertext="Image">
                                          <ItemTemplate >
                                              <asp:Image runat="server" id="img1" ImageUrl='<%#"../" + Eval("i_image") %>'  width="100px" Height="100px"/>
                                          </ItemTemplate>
                                      </asp:templatefield>
                                      <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                                      <asp:BoundField DataField="iname" HeaderText="Item Name" SortExpression="i_name"></asp:BoundField>
                                      <asp:BoundField DataField="itype" HeaderText="Item Type" SortExpression="i_type"></asp:BoundField>
                                      <asp:BoundField DataField="cname" HeaderText="Category" SortExpression="cname"></asp:BoundField>
                                      <asp:BoundField DataField="scname" HeaderText="Sub-Category" SortExpression="scname"></asp:BoundField>
                                      <asp:BoundField DataField="size" HeaderText="Size" SortExpression="size"></asp:BoundField>
                                      <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color"></asp:BoundField>
                                      <asp:BoundField DataField="prize" HeaderText="Prize" SortExpression="prize"></asp:BoundField>
                                      
                                      <asp:BoundField DataField="disc" HeaderText="Discount" SortExpression="disc"></asp:BoundField>
                                      <asp:BoundField DataField="qty" HeaderText="Qty" SortExpression="qty"></asp:BoundField>
                                      <asp:BoundField DataField="i_image" HeaderText="ImageUrl" SortExpression="i_image"></asp:BoundField>
                                      <asp:BoundField DataField="i_desc" HeaderText="Description" SortExpression="i_desc"></asp:BoundField> 
                                 <asp:TemplateField HeaderText="Action">
                                      <ItemTemplate>
                                                            <asp:ImageButton ID="ImageButton1" runat="server" Width="32px" CommandName="Delete" ToolTip="delete" ImageUrl="~/images/icon/icons8-remove.gif" CausesValidation="false" />
                                                            <asp:ImageButton ID="ImageButton2" runat="server" Width="32px" OnClick="ImageButton2_Click" ToolTip="edit" ImageUrl="~/images/icon/icons8-edit.gif" CausesValidation="false" />

                                                        </ItemTemplate>
                                  </asp:TemplateField> 
                                       </Columns>
                              </asp:GridView>
                           
                              </div>
                               
                              <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ShoppingConnectionString %>' SelectCommand="SELECT * FROM [item_master]" DeleteCommand="DELETE FROM [item_master] WHERE [id] = @id" InsertCommand="INSERT INTO [Item_Master] ([iname], [itype], [cname], [scname], [size], [color], [prize], [disc], [qty], [i_image], [i_desc]) VALUES (@iname, @itype, @cname, @scname, @size, @color, @prize, @disc, @qty, @i_image, @i_desc)" UpdateCommand="UPDATE [Item_Master] SET [iname] = @iname, [itype] = @itype, [cname] = @cname, [scname] = @scname, [size] = @size, [color] = @color, [prize] = @prize, [disc] = @disc, [qty] = @qty, [i_image] = @i_image, [i_desc] = @i_desc WHERE [Id] = @Id">

                                  <DeleteParameters>
                                      <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                  </DeleteParameters>
                                  <InsertParameters>
                                      <asp:Parameter Name="iname" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="itype" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="cname" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="scname" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="size" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="color" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="prize" Type="Single"></asp:Parameter>
                                      <asp:Parameter Name="disc" Type="Single"></asp:Parameter>
                                      <asp:Parameter Name="qty" Type="Single"></asp:Parameter>
                                      <asp:Parameter Name="i_image" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="i_desc" Type="String"></asp:Parameter>
                                  </InsertParameters>
                                  <UpdateParameters>
                                      <asp:Parameter Name="iname" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="itype" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="cname" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="scname" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="size" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="color" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="prize" Type="Single"></asp:Parameter>
                                      <asp:Parameter Name="disc" Type="Single"></asp:Parameter>
                                      <asp:Parameter Name="qty" Type="Single"></asp:Parameter>
                                      <asp:Parameter Name="i_image" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="i_desc" Type="String"></asp:Parameter>
                                      <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
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
    <script type='text/javascript'>
    $(document).ready(function () {
        $('.selectpicker').selectpicker();
    });
</script>
</asp:Content>
