<!DOCTYPE html>
<html>
<head>
<title>Gym Home</title>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(to right, #141e30, #243b55);
    color: white;
}

.hero {
    position: relative;
    height: 90vh;
    background: url('https://images.unsplash.com/photo-1583454110551-21f2fa2afe61?auto=format&fit=crop&w=1600&q=80') no-repeat center center/cover;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
}

.hero::before {
    content: "";
    position: absolute;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background: rgba(0,0,0,0.7);
}

.hero-content {
    position: relative;
    z-index: 2;
}

.card:hover {
    transform: scale(1.05);
    transition: 0.3s;
}
</style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand">Gym System</a>

    <div class="ms-auto">
      <a href="pages/common/login.jsp" class="btn btn-outline-light me-2">Login</a>
      <a href="pages/common/register.jsp" class="btn btn-success">Join Now</a>
    </div>
  </div>
</nav>

<div class="hero">
    <div class="hero-content">
        <h1 class="display-3 fw-bold">Transform Your Body</h1>
        <p class="lead">Join the best fitness gym today</p>
        <a href="pages/common/register.jsp" class="btn btn-success btn-lg mt-3">Get Started</a>
    </div>
</div>

<div class="container mt-5">

<h2 class="text-center mb-4">Why Choose Us</h2>

<div class="row">

<!-- EQUIPMENT -->
<div class="col-md-4">
<div class="card text-dark shadow">
<img src="https://images.unsplash.com/photo-1599058917765-a780eda07a3e?auto=format&fit=crop&w=800&q=80" class="card-img-top" style="height:200px; object-fit:cover;">
<div class="card-body">
<h5>Modern Equipment</h5>
<p>Top class gym machines and environment</p>
</div>
</div>
</div>

<!-- DIET PLAN -->
<div class="col-md-4">
<div class="card text-dark shadow" onclick="toggleDiet()" style="cursor:pointer;">
<img src="https://images.unsplash.com/photo-1605296867304-46d5465a13f1?auto=format&fit=crop&w=800&q=80" class="card-img-top" style="height:200px; object-fit:cover;">

<div class="card-body">
<h5>Diet Plans</h5>
<p>Click to get your diet plan</p>

<!-- ✅ FIX: stopPropagation added -->
<div id="dietSection" style="display:none;" onclick="event.stopPropagation();">

<input type="number" id="weight" class="form-control mb-2" placeholder="Weight (kg)">
<input type="number" id="height" class="form-control mb-2" placeholder="Height (cm)">

<select id="gender" class="form-control mb-2">
<option value="">Select Gender</option>
<option>Male</option>
<option>Female</option>
</select>

<button class="btn btn-success w-100" onclick="generateDiet(event)">Get Diet</button>

<div id="dietResult" class="mt-2 fw-bold text-center"></div>

</div>

</div>
</div>
</div>

<!-- TIMING -->
<div class="col-md-4">
<div class="card text-dark shadow">
<img src="https://images.unsplash.com/photo-1554284126-aa88f22d8b74?auto=format&fit=crop&w=800&q=80" class="card-img-top" style="height:200px; object-fit:cover;">
<div class="card-body">
<h5>Flexible Timing</h5>
<p>Morning & evening batches available</p>
</div>
</div>
</div>

</div>
</div>

<div class="container mt-5">
<div class="row">

<div class="col-md-6">
<div class="card p-3 text-dark shadow">
<h4>Rules & Regulations</h4>
<ul>
<li>Maintain discipline</li>
<li>Use proper gym shoes</li>
<li>Carry towel & water bottle</li>
<li>Follow trainer instructions</li>
</ul>
</div>
</div>

<div class="col-md-6">
<div class="card p-3 text-dark shadow">
<h4>Membership Fees</h4>
<p>Monthly: 1000</p>
<p>Quarterly: 2500</p>
<p>Yearly: 8000</p>
</div>
</div>

</div>
</div>

<footer class="bg-dark text-center text-white mt-5 p-3">
<p>© 2026 Gym Management System | Designed by You</p>
</footer>

<script>
function toggleDiet() {
    let section = document.getElementById("dietSection");
    section.style.display = (section.style.display === "none") ? "block" : "none";
}

function generateDiet(event) {

    event.stopPropagation(); // ✅ FIX

    let weight = document.getElementById("weight").value;
    let height = document.getElementById("height").value;
    let gender = document.getElementById("gender").value;

    if(weight === "" || height === "" || gender === "") {
        document.getElementById("dietResult").innerHTML =
            "<span style='color:red;'>Please fill all fields</span>";
        return;
    }

    let h = height / 100;
    let bmi = (weight / (h * h)).toFixed(2);

    let result = "BMI: " + bmi + "<br>";

    if(bmi < 18.5) {
        result += "Underweight  Eat more protein, milk, banana.";
    } 
    else if(bmi < 25) {
        result += "Fit  Maintain balanced diet.";
    } 
    else {
        result += "Overweight  Avoid junk, do cardio.";
    }

    document.getElementById("dietResult").innerHTML = result;
}
</script>

</body>
</html>