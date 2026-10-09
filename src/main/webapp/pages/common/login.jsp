<!DOCTYPE html>
<html>
<head>
<title>Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(to right, #ff758c, #ff7eb3);
}
</style>
</head>

<body>

<div class="container mt-5">
<div class="row justify-content-center">
<div class="col-md-5">

<div class="card p-4 shadow">
<h3 class="text-center">Login</h3>

<form action="<%=request.getContextPath()%>/login" method="post">

<input type="email" name="email" class="form-control mb-3" placeholder="Email" required>
<input type="password" name="password" class="form-control mb-3" placeholder="Password" required>

<button class="btn btn-primary w-100">Login</button>

</form>

</div>
</div>
</div>
</div>

</body>
</html>