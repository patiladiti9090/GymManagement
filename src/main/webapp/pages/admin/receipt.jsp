<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Receipt</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(to right, #d4fc79, #96e6a1);
}
</style>
</head>

<body>

<div class="container mt-5">
<div class="row justify-content-center">
<div class="col-md-6">

<div class="card p-4 shadow">

<h3 class="text-center text-success">Payment Successful ✅</h3>
<hr>

<p><b>Amount Paid:</b> ₹ <%= session.getAttribute("amount") %></p>
<p><b>Payment Mode:</b> <%= session.getAttribute("mode") %></p>
<p><b>Date:</b> <%= new java.util.Date() %></p>

<hr>

<div class="text-center">
    <a href="../member/feedback.jsp" class="btn btn-primary">Give Feedback</a>
    <a href="../../index.jsp" class="btn btn-success">Home</a>
</div>

</div>
</div>
</div>
</div>

</body>
</html>