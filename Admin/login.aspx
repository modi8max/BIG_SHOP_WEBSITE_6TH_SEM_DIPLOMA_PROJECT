<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Star Admin Premium Bootstrap Admin Dashboard Template</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href=" assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href=" assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href=" assets/vendors/typicons/typicons.css">
    <link rel="stylesheet" href=" assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End Plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href=" assets/css/shared/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href=" assets/images/favicon.png" />
  
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
          <div class="row w-100">
            <div class="col-lg-4 mx-auto">
              <div class="auto-form-wrapper">
                <div ="#">
                  <div class="form-group">
                    <label class="label">Username</label>
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Username" runat="server" id="uname" />
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i><img src="https://img.icons8.com/external-kmg-design-flat-kmg-design/34/000000/external-user-back-to-school-kmg-design-flat-kmg-design.png"/>  </i>
                              </span>
                           
                      </div>
                    </div>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Valid Username" ForeColor="red" ControlToValidate="uname" Font-Size="Smaller"></asp:RequiredFieldValidator>
                
                  </div>
                      
                  <div class="form-group">
                    <label class="label">Password</label>
                    <div class="input-group">
                        <%--<asp:TextBox ID="upass" class="form-control" runat="server"  placeholder="*********" TextMode="password"></asp:TextBox>--%>
                       <input type="password" class="form-control" placeholder="*********" runat="server" id="upass"/>
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i><img src="https://img.icons8.com/metro/26/4a90e2/password.png"/></i>
                        </span>
                      </div>
                    </div>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Valid Password" ForeColor="red" ControlToValidate="upass" Font-Size="Smaller"></asp:RequiredFieldValidator>
                
                  </div>
                     
                  <div class="form-group">
<asp:Button Text="Login" cssclass="btn btn-primary submit-btn btn-block" id="login" runat="server" />
          <asp:Label ID="Label1" runat="server" ForeColor ="red" text=""></asp:Label>          
                  </div>
                  <div class="form-group d-flex justify-content-between">
                    <div class="form-check form-check-flat mt-0">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" checked/> Keep me signed in </label>
                    </div>
                    <a href="register.aspx" class="text-small forgot-password text-black">Forgot Password</a>
                  </div>
                  <div class="form-group">
                    <button class="btn btn-block g-login" runat="server" id="btn">
                      <img class="me-3" src="https://www.bootstrapdash.com/demo/star-admin-pro/src/assets/images/file-icons/icon-google.svg" alt="">Log in with Google</button>
                  </div>
                  <div class="text-block text-center my-3">
                    <span class="text-small font-weight-semibold">Not a member ?</span>
                    <a href="register.aspx" class="text-black text-small">Create new account</a>
                  </div>
                </div>
              </div>
              <ul class="auth-footer">
                <li>
                  <a href="#">Conditions</a>
                </li>
                <li>
                  <a href="#">Help</a>
                </li>
                <li>
                  <a href="#">Terms</a>
                </li>
              </ul>
              <p class="footer-text text-center">copyright © 2022 BigShop . All rights reserved.</p>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src=" assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script src=" assets/js/shared/off-canvas.js"></script>
    <script src=" assets/js/shared/hoverable-collapse.js"></script>
    <script src=" assets/js/shared/misc.js"></script>
    <script src=" assets/js/shared/settings.js"></script>
    <script src=" assets/js/shared/todolist.js"></script>
    <!-- endinject -->
    </div>
    </form>
</body>
</html>
