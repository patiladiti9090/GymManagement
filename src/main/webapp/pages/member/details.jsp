<!DOCTYPE html>
<html>
<head>
<title>Gym Details</title>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(to right, #1f4037, #99f2c8);
}

.card {
    border-radius: 15px;
}

h4 {
    font-weight: bold;
}
</style>
</head>

<body class="container mt-5">

<h2 class="text-center text-white mb-4">Gym Details</h2>

<div class="row g-4">

<!-- RULES -->
<div class="col-md-6">
<div class="card shadow p-3">
<h4>Rules & Regulations</h4>
<ul>
<li>No outside shoes</li>
<li>Carry towel</li>
<li>Maintain discipline</li>
<li>Follow trainer instructions</li>
</ul>
</div>
</div>

<!-- TIMINGS -->
<div class="col-md-6">
<div class="card shadow p-3">
<h4> Timings</h4>
<p>Morning: 6 AM - 10 AM<br>Evening: 5 PM - 10 PM</p>
</div>
</div>

<!-- GENERAL WORKOUT -->
<div class="col-md-6">
<div class="card shadow p-3">
<h4>Weekly Workout Plan</h4>
<p>
Monday: Chest<br>
Tuesday: Back<br>
Wednesday: Legs<br>
Thursday: Shoulder<br>
Friday: Arms
</p>
</div>
</div>

<!-- WEIGHT LOSS -->
<div class="col-md-6">
<div class="card shadow p-3">
<h4>Weight Loss Workout</h4>
<p>
Monday: Cardio + Abs<br>
Tuesday: HIIT + Full Body<br>
Wednesday: Cardio + Legs<br>
Thursday: HIIT + Core<br>
Friday: Cardio + Upper Body<br>
Saturday: Yoga / Jog<br>
Sunday: Rest
</p>
</div>
</div>

<!-- WEIGHT GAIN -->
<div class="col-md-6">
<div class="card shadow p-3">
<h4> Weight Gain Workout</h4>
<p>
Monday: Chest + Triceps<br>
Tuesday: Back + Biceps<br>
Wednesday: Heavy Legs<br>
Thursday: Shoulders<br>
Friday: Arms + Abs<br>
Saturday: Full Body<br>
Sunday: Rest
</p>
</div>
</div>

<!-- DIET PLAN -->
<div class="col-md-6">
<div class="card shadow p-3">
<h4> Eating Plan (Diet)</h4>

<b>Weight Loss Diet:</b>
<ul>
<li>Breakfast: Oats + Fruits</li>
<li>Lunch: Roti + Veg + Salad</li>
<li>Dinner: Soup / Light food</li>
<li>Avoid: Junk food & sugar</li>
</ul>

<b>Weight Gain Diet:</b>
<ul>
<li>Breakfast: Milk + Banana + Eggs</li>
<li>Lunch: Rice + Dal + Paneer/Chicken</li>
<li>Dinner: Chapati + Vegetables</li>
<li>Extra: Dry fruits & protein food</li>
</ul>

</div>
</div>

</div>

<!-- BUTTON -->
<div class="text-center mt-4">
<form action="../admin/payment.jsp">
<div class="form-check">
<input type="checkbox" required class="form-check-input">
<label class="text-white">I accept rules & regulations</label>
</div>

<button class="btn btn-dark mt-3 px-4">Continue to Payment</button>
</form>
</div>

</body>
</html>