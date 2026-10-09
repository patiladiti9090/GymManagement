<!DOCTYPE html>
<html>
<head>
<title>Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.card:hover {
    transform: scale(1.05);
    transition: 0.3s;
}
</style>

</head>

<body class="container mt-5">

<h2 class="mb-4">📊 Dashboard</h2>

<div class="row">

<div class="col-md-4">
<div class="card p-3 shadow text-center">
<h4>Add Member</h4>
<a href="addMember.jsp" class="btn btn-success">Open</a>
</div>
</div>

<div class="col-md-4">
<div class="card p-3 shadow text-center">
<h4>Payment</h4>
<a href="payment.jsp" class="btn btn-primary">Open</a>
</div>
</div>

<div class="col-md-4">
<div class="card p-3 shadow text-center">
<h4>Feedback</h4>
<a href="feedback.jsp" class="btn btn-warning">Open</a>
</div>
</div>

</div>

</body>
</html>