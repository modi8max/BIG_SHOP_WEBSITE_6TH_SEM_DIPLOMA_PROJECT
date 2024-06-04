<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Star Admin Premium Bootstrap Admin Dashboard Template</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="admin/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="admin/assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="admin/assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="admin/assets/vendors/typicons/typicons.css">
    <link rel="stylesheet" href="admin/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End Plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="admin/assets/css/shared/style.css">
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="admin/assets/css/demo_1/style.css">
    <!-- End Layout styles -->
    <link rel="shortcut icon" href="admin/assets/images/favicon.png" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth register-bg-1 theme-one">
          <div class="row w-100">
            <div class="col-lg-4 mx-auto">
              <h2 class="text-center mb-4">Register</h2>
              <div class="auto-form-wrapper">
                <div>
                  <div class="form-group">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="FullName" runat="server" id="uname"/>
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i ><img src="https://img.icons8.com/external-kmg-design-flat-kmg-design/34/000000/external-user-back-to-school-kmg-design-flat-kmg-design.png"/></i>
                        </span>
                      </div>
                    </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Valid Full Name" ForeColor="red" ControlToValidate="uname" Font-Size="Smaller"></asp:RequiredFieldValidator>
                
                  </div>
                  <div class="form-group">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Email Id" runat="server" id="uemail"/>
                      <div class="input-group-append">
                        <span class="input-group-text">
                          <i><img src="https://img.icons8.com/metro/29/4a90e2/password.png"/></i>
                        </span>
                      </div>
                    </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Valid Email Id" ForeColor="red" ControlToValidate="uemail" Font-Size="Smaller"></asp:RequiredFieldValidator>
                
                  </div>
                  <div class="form-group">
                    <div class="input-group">
                      <input type="Password" class="form-control" placeholder="Password" id="ucpass" runat="server"/>
                      <div class="input-group-append">

                        <span class="input-group-text">
                               <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Should be same" diaply="none" ForeColor="red" ControlToCompare="upass" ControlToValidate="ucpass"></asp:CompareValidator>--%>
                 
                          <i><img src="https://img.icons8.com/material-rounded/28/4a90e2/reviewer-female.png"/></i>
                                </span>
                      </div>
                    </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Valid Phone No" ForeColor="red" ControlToValidate="ucpass" Font-Size="Smaller"></asp:RequiredFieldValidator>
                
                  </div>
                  <div class="form-group d-flex justify-content-center">
                    <div class="form-check form-check-flat mt-0">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" checked> I agree to the terms </label>
                    </div>
                  </div>
                  <div class="form-group">
                   
                  <asp:Button ID="Register" class="btn btn-primary submit-btn btn-block" runat="server" Text="Register" />

                  <asp:Label ID="Label1" runat="server" ForeColor ="red" Text=""></asp:Label>
                      
           <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                  </div>
                  <div class="text-block text-center my-3">
                    <span class="text-small font-weight-semibold">Already have and account ?</span>
                    <a href="login.ASPX" class="text-black text-small">Login</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="admin/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script src="admin/assets/js/shared/off-canvas.js"></script>
    <script src="admin/assets/js/shared/hoverable-collapse.js"></script>
    <script src="admin/assets/js/shared/misc.js"></script>
    <script src="admin/assets/js/shared/settings.js"></script>
    <script src="admin/assets/js/shared/todolist.js"></script>
    <!-- endinject -->
    </div>
    </form>
</body>
</html>
