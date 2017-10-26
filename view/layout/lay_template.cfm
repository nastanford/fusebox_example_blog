<cfparam name="request.page.title" default="">
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><cfoutput><cfif request.page.title neq ""> #request.page.title# | </cfif>#application.title#</cfoutput></title>
    <!-- Bootstrap core CSS -->
    <link href="includes/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="includes/css/blog-home.css" rel="stylesheet">
    <link href="includes/css/default.css?v=1#RandRange(1,1000000)#" rel="stylesheet">
  </head>
  <body>
    <!-- Navigation -->
   <cfoutput>#navbar#</cfoutput>
    <!-- Page Content -->
    <div class="container">
      <div class="row">
      <cfoutput>#body#</cfoutput>
        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">
          <!-- Search Widget -->
          <cfoutput>#search#</cfoutput>
          <!-- Categories Widget -->
          <cfoutput>#categories#</cfoutput>
          <!-- Side Widget -->
          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header">Side Widget</h5>
            <div class="card-body">
              You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
            </div>
          </div>

        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; <cfoutput>#application.title# #year(now())#</cfoutput> </p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="includes/vendor/jquery/jquery.min.js"></script>
    <script src="includes/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
