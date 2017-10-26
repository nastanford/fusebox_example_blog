<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <div class="container">
    <a class="navbar-brand" href="#"><cfoutput>#application.title#</cfoutput></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <cfoutput>
        
          <li id="main.home" class="nav-item <cfif application.fusebox.DEFAULTFUSEACTION eq "main.home"> active</cfif>"><a href="#myself##xfa.home#" class="nav-link">Home</a></li>
          <li id="main.about" class="nav-item <cfif application.fusebox.DEFAULTFUSEACTION eq "main.about"> active</cfif>"><a href="#myself##xfa.about#" class="nav-link">About</a></li>
          <li id="main.contact" class="nav-item <cfif application.fusebox.DEFAULTFUSEACTION eq "main.contact"> active</cfif>"><a href="#myself##xfa.contact#" class="nav-link">Contact</a></li>
       <!--- --->
        </cfoutput>
      </ul>
    </div>
  </div>
</nav>