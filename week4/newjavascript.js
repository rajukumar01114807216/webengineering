
function validate(form){
    var name = document.forms["myForm"]["name"].value;
    var ph = document.forms["myForm"]["phone"].value;
    var email = document.forms["myForm"]["email"].value;
    var dob = document.forms["myForm"]["dob"].value;
    var password = document.forms["myForm"]["password"].value;
    var password1 = document.forms["myForm"]["password1"].value;
    
    if(name == "" | ph == "" | email == "" | dob == "" | password == "")
    {
        alert("field can't be empty");
        return;
    }
  var letters = /^[A-Za-z]+$/;
  var numbers= /^[0-9]+$/;
  
    if(!name.match(letters)){
        alert("Invalid name");
    }
    else if(!ph.match(numbers)){
        alert("Invalid phone number");
    }
    else if (password != password1) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
  
    }

