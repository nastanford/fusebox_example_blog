<!-- Blog Entries Column -->
<div class="col-md-8">
  <h1 class="my-4">Fusebox Example Blog</h1>
  <h6>This is just a application to use for training purposes.</h6>
  <!--- 3 in a row just so the example will look good not for production. --->
  <!-- Blog Posts -->
  <cfoutput>#blogpost#</cfoutput>
  <cfoutput>#blogpost#</cfoutput>
  <cfoutput>#blogpost#</cfoutput>
  <!-- Pagination -->
  <ul class="pagination justify-content-center mb-4">
    <li class="page-item">
      <a class="page-link" href="#">&larr; Older</a>
    </li>
    <li class="page-item disabled">
      <a class="page-link" href="#">Newer &rarr;</a>
    </li>
  </ul>
</div>