<!DOCTYPE html>
<html>
<head>
<title>Feedback</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(to right, #ffecd2, #fcb69f);
}
.card {
    border-radius: 15px;
}
</style>
</head>

<body>

<div class="container mt-5">
<div class="row justify-content-center">
<div class="col-md-6">

<div class="card shadow p-4">

<h3 class="text-center">Give Feedback 💬</h3>
<hr>

<form action="<%=request.getContextPath()%>/feedback" method="post">

<input type="text" name="name" class="form-control mb-3" placeholder="Your Name" required>

<textarea name="message" class="form-control mb-3" placeholder="Write your feedback..." required></textarea>

<button class="btn btn-success w-100">Submit Feedback</button>

</form>

</div>
</div>
</div>
</div>

</body>
</html>