<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Create Account - Expense Manager</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="assets/vendors/feather/feather.css">
  <link rel="stylesheet" href="assets/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="assets/vendors/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="assets/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="assets/images/favicon.png" />
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
              <h2>Create Account</h2>
              <br>
              <h4>New here?</h4>
              <h6 class="font-weight-light">Creating an account is quick and easy.</h6>
              <form action="saveaccount" method="post" class="pt-3">
                <!-- Title -->
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" id="title" name="title" placeholder="Enter title (e.g., Rent)" required>
                </div>
                <!-- Amount -->
                <div class="form-group">
                  <input type="number" class="form-control form-control-lg" id="amount" name="amount" placeholder="Enter amount (e.g., 500)" required>
                </div>
                <!-- Description -->
                <div class="form-group">
                  <textarea class="form-control form-control-lg" id="description" name="description" rows="3" placeholder="Add a short description..."></textarea>
                </div>
                <!-- Terms & Conditions -->
                <div class="mb-4">
                  <div class="form-check">
                    <label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input"> I agree to all Terms & Conditions
                    </label>
                  </div>
                </div>
                <!-- Submit Button -->
                <div class="mt-3 d-grid gap-2">
                  <button type="submit" class="btn btn-primary">Create Account</button>
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
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="assets/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="assets/js/off-canvas.js"></script>
  <script src="assets/js/template.js"></script>
  <script src="assets/js/settings.js"></script>
  <script src="assets/js/todolist.js"></script>
  <!-- endinject -->
</body>
</html>
