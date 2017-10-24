<cfsetting showDebugOutput = "false">
<cfoutput>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Fusebox Example Blog</title>
  <meta name="description" content="">
  <meta name="author" content="Nathan Stanford">
  <script src="includes/js/jquery-3.2.1.min.js"></script>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <!-- Custom styles for this template -->
  <link href="includes/css/sticky-footer-navbar.css" rel="stylesheet">
  <link href="includes/css/default.css?v=1#RandRange(1,1000000)#" rel="stylesheet">
</head>
<body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="##navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#self#">Fusebox Example Blog</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">          
            <li id="main.home" <cfif fuseaction eq "main.home"> class="active"</cfif>><a href="#myself##xfa.home#">Home</a></li>
            <li id="main.about" <cfif fuseaction eq "main.about"> class="active"</cfif>><a href="#myself##xfa.about#">About</a></li>
            <li id="main.contact" <cfif fuseaction eq "main.contact"> class="active"</cfif>><a href="#myself##xfa.contact#">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    <br /><br /><br /><br />
    <section>
    <div class="container">
      <div class="starter-template">
          #body#
      </div>
    </div><!-- /.container -->
    </section>

    <footer class="footer footer-custom">
      <div class="container">
        <p>Fusebox Example Blog &copy; #year(now())#</p>
      </div>
    </footer>

</body>
</html>
</cfoutput> 