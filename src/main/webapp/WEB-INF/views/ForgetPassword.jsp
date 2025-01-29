<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Forget Password - Expense Manager</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/feather/feather.css">
    <link rel="stylesheet" href="assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="assets/vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <!-- inject:css -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="shortcut icon" href="assets/images/favicon.png" />
    <!-- Additional Styling -->
    <style>
      h2 {
        text-align: center;
        font-size: 2rem;
        font-weight: bold;
        color: navy;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        margin-bottom: 20px;
      }
    </style>
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
          <div class="row w-100 mx-0">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                <h2>Expense Manager</h2>
                <br>
                <h4>Forgot Your Password?</h4>
                <h6 class="font-weight-light">Recovering your account is easy. Just enter your registered email.</h6>
                <form action="forgetpassword" method="post" class="pt-3">
                  <div class="form-group">
                    <input 
                      type="email" 
                      class="form-control form-control-lg" 
                      id="email" 
                      name="email" 
                      value="${email}" 
                      placeholder="Email Address" 
                      required>
                  </div>
                  <div class="mt-3 d-grid gap-2">
                    <button type="submit" class="btn btn-primary">Recover Password</button>
                  </div>
                  <br>
                  <span class="text-danger">${error}</span>
                  <div class="text-center mt-4 font-weight-light">
                    Remember your password? <a href="login" class="text-primary">Login</a>
                  </div>
                  <div class="text-center mt-4 font-weight-light">
                    Don’t have an account? <a href="signup" class="text-primary">SignUp</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- plugins:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/template.js"></script>
    <script src="assets/js/settings.js"></script>
    <script src="assets/js/todolist.js"></script>
  </body>
</html>
