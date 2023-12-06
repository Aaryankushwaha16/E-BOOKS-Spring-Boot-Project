<div class="container-fluid p-3">

	<div class="row">
		<div class="col-md-3">
		<a href="adminHome">	<h3><i class="fa-solid fa-book"></i> E-Books Admin</h3></a>
		</div>
		<div class="col-md-6">
			<form class="d-flex">
		        <input class="form-control me-2" type="search" placeholder="Search Your Books" aria-label="Search">
		        <button class="btn btn-outline-success" type="submit">Search</button>
      		</form>
		</div>
		
		<div class="col-md-3">
		<%
		String id=(String)session.getAttribute("uid");
		if(id!=null)
		{
		%>
		<a href="logout" class="btn btn-success"><i class="fa-solid fa-arrow-right-to-bracket"></i> Logout</a> 
		<% 
		}
		else{
		%>
		<a href="E-Book login" class="btn btn-success"><i class="fa-solid fa-arrow-right-to-bracket"></i> LogIn</a> 
			<% }%>
			<a href="Addbook" class="btn btn-primary"><i class="fa-solid fa-user-plus"></i> Add Book</a>
		 
		</div>
		
	</div>

</div>

<div class="cardc">
        <h1>Card</h1>
        <ul class="listCardc">
        </ul>
        <div class="checkOutc">
            <div class="total">0</div>
            <div class="closeShopping">Close</div>
        </div>
    </div> 

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item">
          <a class="nav-link active p-2 " aria-current="page" href="userdetails"><i class="fa-solid fa-house"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active p-2" aria-current="page" href="userdetails">User</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="productdetails">Products</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="orderdetails">Orders</a>
        </li>
      </ul>
      
    </div> 
    
    
      <form class="d-flex gap-2">
        
        <button class="btn btn-outline-success"><i class="fa-solid fa-id-card"></i><a href="#Contact Us"> Contact Us</a></button>
    	
      </form>
    </div>

</nav>
