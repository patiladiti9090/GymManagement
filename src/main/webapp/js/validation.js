function validateRegister() {
    let name = document.forms["regForm"]["name"].value.trim();
    let email = document.forms["regForm"]["email"].value.trim();
    let pass = document.forms["regForm"]["password"].value.trim();

    if (name === "" || !/^[A-Za-z ]+$/.test(name)) {
        alert("Valid name required");
        return false;
    }

    if (!/^\S+@\S+\.\S+$/.test(email)) {
        alert("Invalid email");
        return false;
    }

    if (pass.length < 6) {
        alert("Password must be at least 6 characters");
        return false;
    }

    return true;
}

function validateMember() {
    let phone = document.forms["memberForm"]["phone"].value;

    if (!/^[0-9]{10}$/.test(phone)) {
        alert("Phone must be 10 digits");
        return false;
    }

    return true;
}