<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<!-- saved from url=(0059)http://datatables.net/manual/styling/bootstrap-simple.html# -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<title>View Donations</title>



<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.3/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/plug-ins/a5734b29083/integration/bootstrap/3/dataTables.bootstrap.css">

<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.3/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/plug-ins/a5734b29083/integration/bootstrap/3/dataTables.bootstrap.js"></script>
<link href='https://fonts.googleapis.com/css?family=Titillium+Web:600' rel='stylesheet' type='text/css'>
<script type="text/javascript" charset="utf-8">
    
$(document).ready(function() {
    $('#example').dataTable();
    } );
</script>

<style type="text/css">
    .navbar
    {
        background-color: #ccc;    
        font-family: Segoe UI;
    }
    
    .container
    {
        font-family: Segoe UI;
    }
    
</style></head>
<body>
  <form method="post">
    <nav id="myNavbar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
    	<!-- Brand and toggle get grouped for better mobile display -->
    	<div class="container">
    		<div class="navbar-header">
    			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
    				<span class="sr-only">Toggle navigation</span>
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
    			</button>
    			<a class="navbar-brand"><img src="http://www.teameverestindia.org/diwali2016/wp-content/uploads/2016/10/Team-Everest-Logo.png" alt="TeamEverest" height="30" width="40"></a>
    		</div>
    		<!-- Collect the nav links, forms, and other content for toggling -->
    		<div class="collapse navbar-collapse" id="navbarCollapse">
    			<ul class="nav navbar-nav">
    				<li class="active"><a href="donations">View Donation</a></li>
    				<li><a href="donate">Submit Donation Form</a></li>
    				<li><a href="createDonor">Donor Creation</a></li>
    				<li><a href="backend/excel">Bulk Upload</a></li>
    				<li><a href="logout">Logout</a></li>
    			</ul>
    		</div>
    	</div>
    </nav>
      
<div class="container">
 <div class="jumbotron">

   <div class="text-center">

      <div class="row-fluid">
        <h2 class="rw-sentence text-info">
            All Donations
        </h2> <br>
      </div>
    </div>

      <style type="text/css">
          something
 {
  padding: 25px 50px;
}
    </style>
  <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
    <div class="row">
      <div class="col-xs-12">


  <form method="post">
      
        <table id="example" class="table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;" name="tabledata">
          <thead>
            <tr>
              <th style="width: 10px"></th>
              <th style="width: 20px;">#</th>
              <th style="width: 20px;">Name</th>
              <th style="width: 231px;">Email</th>
              <th style="width: 190px;">Amount</th>
              <th style="width: 149px;">Donation Date</th>
              <th style="width: 149px;">Mode</th>
              <th style="width: 251px;">Cheque No.</th>
              <th style="width: 401px;">Transaction Id.</th>
            </tr>
          </thead>
          <tbody>
<c:forEach items="${requestScope.alldonations}" var="donation"> 
<tr>
                
                <td><input type="checkbox" name="did" value="TE-REF-ID-${donation.getDonationid()}"/></td>
                <td>${donation.getDonationid()}</td>
                <td>${donation.getDonorname()}</td>
                <td>${donation.getDonoremail()}</td>
                <td>${donation.getAmount()}</td>
                <td>${donation.getDonationdate()}</td>
                <td>${donation.getMode()}</td>
                <td>${donation.getChequeno()}</td>
                <td>${donation.getTransid()}</td>
              </tr>
</c:forEach>
          </tbody>
        </table>
      </div>
    </div>

</div>

  </div>

  <script type="text/javascript">
// For demo to fit into DataTables site builder...
  $('#example')
  .removeClass( 'display' )
  .addClass('table table-striped table-bordered');
  </script>

  </br></br></br>
  <div class="col-md-3 col-md-offset-8">
    <p>
    <button type="submit" onclick="this.form.submit()" class="btn btn-primary">Download as Zip</button>

    <button type="submit" onclick="this.form.action='?task=sendmail'; this.form.submit()" class="btn btn-primary">Send Email</button> </p>

  </div>

  </form>

  </body></html>
