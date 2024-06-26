<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <link rel="icon" href="favicon.png" type="image/png">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <!-- Link to your shared styles.css file -->
  
  <link rel="stylesheet" href="home.css">


  <title>Welcome to Electricity Billing System</title>
</head>

<body>
  <!-- Navbar and transparent background code remains the same -->
 <!-- our code starts here -->
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Electricity Billing System</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">

        <li class="nav-item active">
          <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="about2.jsp">About</a>
        </li>
        
         <li class="nav-item ">
          <a class="nav-link" href="contactus2.jsp">Contact us</a>
        </li>

        <li class="nav-item">
    <a class="nav-link" href="#" onclick="confirmLogout()">Logout</a>
</li>

<script>
    function confirmLogout() {
        var logoutConfirmed = confirm("Are you sure you want to logout?");
        if (logoutConfirmed) {
            // Redirect to home.html after logout confirmation
            window.location.href = "logout.jsp";
        } else {
            // Do nothing or handle the cancellation
            alert("Logout cancelled.");
        }
    }
</script>

      </ul>
    </div>
  </nav>
 
<main>
   <center>
    <section id="user-section" style="border: 2px solid black; padding: 10px;">
        <%-- Check if the user's email is available in the session --%>
        <% if (session.getAttribute("email") != null) { %>
            <h3 style="color: white;">Welcome <%= session.getAttribute("name") %>!</h3>
            <p class="hidden">Name: <%= session.getAttribute("name") %></p>
            <p class="hidden">Aadhar: <%= session.getAttribute("AadharCardNumber") %></p>
            <p class="hidden">Phone: <%= session.getAttribute("phone") %></p>
            <p class="hidden">Address: <%= session.getAttribute("address") %></p>
            <p class="hidden">Pincode: <%= session.getAttribute("pincode") %></p>
            <p class="hidden">new connection status: <%= session.getAttribute("newConnectionStatus") %></p>
            <p class="hidden">new subsidy status: <%= session.getAttribute("newSubsidyStatus") %></p>
            <p class="hidden">User ID: <%= session.getAttribute("userID") %></p> 

            <style>
                .hidden {
                    
                    display: none;
                }
            </style>
            
        <% } else { %>
            <h2 style="color: white;">Welcome Guest!</h2>
        <% } %>
    </section>
</center>

</main>


  <div class="container">
    <div class="row">
      <div class="col-md-3 text-center">
          <center> <img src="p9.jpg" class="bd-placeholder-img rounded-circle" width="140" height="140" /></center>
        <h2>Get Subsidized rates on your bill </h2>
        <p>Discover the relief of subsidized power rates, a government-backed initiative designed to assist those facing financial challenges. These discounted rates not only lighten the burden on tight budgets but also promote sustainable energy practices. </p>
        <p class="mt-auto"><a class="btn btn-secondary" href="confirmNewSubsidyApplication.jsp" role="button" >Apply for a Subsidy</a></p>
      </div>
        <div class="col-md-3 text-center">
       <center> <img src="p11.jpg" class="bd-placeholder-img rounded-circle" width="140" height="140" /></center>
        <h2>Get your bill online </h2>
        <p> 
Losing your physical electricity bill is no longer a hassle with the convenience of online billing systems. Easily access and retrieve your bills at your convenience with an internet connection. By going paperless, customers contribute to environmental sustainability and save trees. </p>
        <p class="mt-auto"><a class="btn btn-secondary" href="getYourBill.jsp" role="button" > Get your Bill</a></p>
      </div>
      <div class="col-md-3 text-center">
          <center> <img src="p10.jpg" class="bd-placeholder-img rounded-circle" width="140" height="140" /></center>
        <h2>Check for Scheduled Maintenance Cuts</h2>
        <p>Stay informed about scheduled power cuts in your area. Utilize and store power in advance to minimize disruptions. Keep devices charged before hand, and optimize your energy usage for a seamless experience during scheduled maintainence cuts.    </p>
        <p class="mt-auto"><a class="btn btn-secondary" href="maintenanceUser.jsp" role="button">Check for maintenance cuts</a></p>
      </div>
        
        
      <div class="col-md-3 text-center">
    <center> <img src="p6.jpg" class="bd-placeholder-img rounded-circle" width="140" height="140" /></center>
    <h2>Get a new Electricity Connection</h2>
    <p>
        For a new electricity connection, whether for residential or commercial purposes, contact your local utility provider. Submit required documents and fees, stay informed about the application status, and enjoy the convenience of your approved connection.
    </p>

            <p class="mt-auto"><a class="btn btn-secondary" href="confirmNewConnection.jsp" role="button">Request for a new connection</a></p>



</div>

    </div>
  </div>
 
 
    
    
  <div class="footer">
        <p>&diams; 2023-2024 Electricity Billing System - by Adnan Shariff 1HK21IS009</p>

  </div>

  <!-- Bootstrap JS and dependencies -->
  <!-- Include your Bootstrap JS and dependencies here -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-U7Y9T+3b6CQs98ePjkx4U+8p7+cJz94PXXF1BOgS7I/6q1i9T8KgpvZ4Y6Jrm2Io"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>

</body>

</html>
