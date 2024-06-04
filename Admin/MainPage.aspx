<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="MainPage.aspx.vb" Inherits="MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
      <!-- partial:../../partials/_navbar.html -->
<!-- partial -->
     
        <!-- partial:../../partials/_settings-panel.html -->
      
        <!-- partial -->
        <!-- partial:../../partials/_sidebar.html -->
        
        <!-- partial -->
        <div class="main-panel" style="margin-top: -670px;
    margin-left: 270px;">
          <div class="content-wrapper">
            <div class="row">
              <div class="col-md-12">
             <%--   <div class="d-flex flex-column flex-md-row">
                  <h4 class="mb-md-0 mb-4">Design Board</h4>
                  <div class="wrapper d-flex">
                    <div class="image-grouped ms-md-4">
                      <img src="assets/images/faces/face20.jpg" alt="profile image">
                      <img src="assets/images/faces/face17.jpg" alt="profile image">
                      <img src="assets/images/faces/face14.jpg" alt="profile image">
                    </div>
                    <button type="button" class="btn btn-secondary btn-fw ms-4"><i class="mdi mdi-lock"></i>Private</button>
                  </div>
                  <div class="wrapper ms-md-auto d-flex flex-column flex-md-row kanban-toolbar ml-n2 ms-md-0 mt-4 mt-md-0">
                    <div class="d-flex">
                      <button type="button" class="btn btn-icons btn-light">
                        <i class="mdi mdi-magnify"></i>
                      </button>
                      <button type="button" class="btn btn-icons btn-light">
                        <i class="mdi mdi-filter-outline"></i>
                      </button>
                      <button type="button" class="btn btn-icons btn-light">
                        <i class="mdi mdi-bell-outline"></i>
                      </button>
                      <button type="button" class="btn btn-primary">Boards</button>
                    </div>
                    <div class="d-flex mt-4 mt-md-0" src="images/MAINPAGE/menu-2.png">
                      <button type="button" class="btn btn-success">Create New</button>
                      <button type="button" class="btn btn-icons btn-light">
                        <i class="mdi mdi-view-grid"></i>
                      </button>
                      <button type="button">

                        <i class="mdi mdi-menu"></i>
                      </button>
                    </div>
                  </div>
                </div>--%>
                <div class="board-wrapper pt-5" style="overflow: scroll;
    width: 85%;
    height: auto;">
                  <div class="board-portlet">
                    <h4 class="portlet-heading">Banner Master</h4>
                    <p class="task-number">Create Your Own Banner</p>
                    <ul id="portlet-card-list-1" class="portlet-card-list">
                        <li class="portlet-card">
                        <div class="progress">
                          <div class="progress-bar bg-success" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <p class="task-date">To Edit/Delete Banner</p>
                        <div class="action-dropdown dropdown">
                          <button type="button" class="dropdown-toggle" id="portlet-action-dropdown_9" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <%--<i class="mdi mdi-dots-vertical"></i>--%>
<img src="../images/MAINPAGE/menu-2.png" width="20px" />
                          </button>
                          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="portlet-action-dropdown_9">
                            <a class="dropdown-item" href="Banner_Master.aspx">Edit</a>
                            <a class="dropdown-item" href="#">Delete</a>
                          </div>
                        </div>
                        <h4 class="task-title">To Add Banner</h4>
                        <img class="portlet-image"  height="166px" src="../images/MAINPAGE/970X250-_desktop_banner.jpg" alt="">
                       <div class="badge badge-inverse-warning"> <a href="Banner_Master.aspx">Click</a></div>
                        <p class="due-date">To Your Website</p>

                      </li>         
                        
                           
                         
                     </div>
                    <div class="board-portlet ">
                        <h4 class="portlet-heading">Sub Category Master</h4>
                    <p class="task-number">Create Your Own Sub Category</p>
                              <li class="portlet-card">
                        <div class="progress">
                          <div class="progress-bar bg-success" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                         
                        <p class="task-date">To Edit/Delete</p>
                        <div class="action-dropdown dropdown">
                          <button type="button" class="dropdown-toggle" id="portlet-action-dropdown_9" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <%-- <i class="mdi mdi-dots-vertical"></i>--%>
                              <img src="../images/MAINPAGE/menu-2.png" width="20px" />
                          </button>
                          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="portlet-action-dropdown_9">
                            <a class="dropdown-item" href="Sub_Category_Master.aspx">Edit</a>
                            <a class="dropdown-item" href="#">Delete</a>
                          </div>
                        </div>
                        <h4 class="task-title">To Add Category</h4>
                        <img class="portlet-image"  alt=""  height="166px" src="../images/MAINPAGE/featuredimage-10.jpg">
                        <div class="badge badge-inverse-warning"   ><a href="Sub_Category_Master.aspx">Click</a></div>
                        <p class="due-date">To Your Website</p>
                        </ul>
                    </div>
                  <div class="board-portlet">
                    <h4 class="portlet-heading">Type Master</h4>
                    <p class="task-number">Create Your Own Type</p>
                    <ul id="portlet-card-list-2" class="portlet-card-list">
                        <li class="portlet-card">
                        <div class="progress">
                          <div class="progress-bar bg-success" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <p class="task-date">To Edit/Delete Type</p>
                        <div class="action-dropdown dropdown">
                          <button type="button" class="dropdown-toggle" id="portlet-action-dropdown_9" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <%--<i class="mdi mdi-dots-vertical"></i>--%>
                                  <img src="../../images/MAINPAGE/menu-2.png" width="20px" />
                          </button>
                          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="portlet-action-dropdown_9">
                            <a class="dropdown-item" href="Type_master.aspx">Edit</a>
                            <a class="dropdown-item" href="#">Delete</a>
                          </div>
                        </div>
                        <h4 class="task-title">To Add TYpe</h4>
                        <img class="portlet-image"   height="166px" src="../images/MAINPAGE/consumer-products.png" alt="">
                        <div class="badge badge-inverse-warning">
                            <a href="Type_Master.aspx"> Click</a>
                           </div>
                        <p class="due-date">To Your Website</p>
                      </li>
                    
                       </div>
                    <div class ="board-portlet ">
                           <h4 class="portlet-heading"> Item Master</h4>
                    <p class="task-number">Create your own Item</p>
                      <li class="portlet-card">
                        <div class="progress">
                          <div class="progress-bar bg-success" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <p class="task-date">To Edit/Delete Item</p>
                        <div class="action-dropdown dropdown">
                          <button type="button" class="dropdown-toggle" id="portlet-action-dropdown_9" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <%--<i class="mdi mdi-dots-vertical"></i>--%>
                                  <img src="../../images/MAINPAGE/menu-2.png" width="20px" />
                          </button>
                          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="portlet-action-dropdown_9">
                            <a class="dropdown-item" href="Item_Master.aspx">Edit</a>
                            <a class="dropdown-item" href="#">Delete</a>
                          </div>
                        </div>
                        <h4 class="task-title">To Add Item</h4>
                        <img class="portlet-image"  height="166px" src="../images/MAINPAGE/istockphoto-1345346404-1024x1024.jpg" alt="">
                        <div class="badge badge-inverse-warning">  <a href="Item_Master.aspx"> Click</a></div>
                        <p class="due-date">To Your Website</p>
                      </li>  
                                                  
                    </ul>
                    
                    </div>
                  <div class="board-portlet">
                    <h4 class="portlet-heading">Category Master</h4>
                    <p class="task-number">Create Your Own Category 
                    </p>
                    <ul id="portlet-card-list-3" class="portlet-card-list">
                     
                      <li class="portlet-card">
                        <div class="progress">
                          <div class="progress-bar bg-success" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <p class="task-date">To Edit/Delete</p>
                        <div class="action-dropdown dropdown">
                          <button type="button" class="dropdown-toggle" id="portlet-action-dropdown_9" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <%--<i class="mdi mdi-dots-vertical"></i>--%>
                                  <img src="../../images/MAINPAGE/menu-2.png" width="20px" />
                          </button>
                          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="portlet-action-dropdown_9">
                            <a class="dropdown-item" href="Category_Master.aspx">Edit</a>
                            <a class="dropdown-item" href="#">Delete</a>
                          </div>
                        </div>
                        <h4 class="task-title">To Add Category</h4>
                        <img class="portlet-image" src="../../images/MAINPAGE/category.png" height="166px"  alt="">
                        <div class="badge badge-inverse-warning">  <a href="Category_Master.aspx"> Click</a></div>
                        <p class="due-date">To Your Website</p>
                      </li>
                    </ul>
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
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
</asp:Content>

