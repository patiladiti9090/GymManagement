<!DOCTYPE html>
<html>
<head>
<title>Gym Payment</title>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(to right, #141e30, #243b55);
    color: white;
}

.card {
    border-radius: 15px;
    background: rgba(255,255,255,0.1);
    backdrop-filter: blur(10px);
}

.form-control, .form-select {
    background: rgba(255,255,255,0.2);
    color: white;
    border: none;
}

.form-control::placeholder {
    color: #ddd;
}

.btn-success {
    background-color: #00c853;
    border: none;
}

.btn-success:hover {
    background-color: #00e676;
}
</style>

<script>
function validatePayment() {
    let plan = document.getElementById("plan").value;
    let mode = document.getElementById("mode").value;

    if(plan === "" || mode === "") {
        alert("Please select plan and payment mode");
        return false;
    }
    return true;
}
</script>

</head>

<body>

<div class="container mt-5">
<div class="row justify-content-center">
<div class="col-md-5">

<div class="card p-4 shadow-lg">

<h3 class="text-center mb-3">💳 Gym Payment</h3>
<hr>

<form action="<%=request.getContextPath()%>/payment" method="post" onsubmit="return validatePayment()">

<!-- PLAN -->
<label>Select Plan</label>
<select name="plan" id="plan" class="form-select mb-3" required>
    <option value="">-- Choose Plan --</option>
    <option value="1000">Monthly - ₹1000</option>
    <option value="2500">Quarterly - ₹2500</option>
    <option value="8000">Yearly - ₹8000</option>
</select>

<!-- MODE -->
<label>Payment Mode</label>
<select name="mode" id="mode" class="form-select mb-3" required>
    <option value="">-- Select Mode --</option>
    <option value="UPI">UPI</option>
    <option value="Card">Card</option>
    <option value="Cash">Cash</option>
</select>

<!-- BUTTON -->
<button class="btn btn-success w-100">Pay Now</button>

</form>

<hr>

<div class="text-center">
    <a href="../../index.jsp" class="btn btn-outline-light btn-sm">🏠 Home</a>
</div>

</div>
</div>
</div>
</div>

</body>
</html>