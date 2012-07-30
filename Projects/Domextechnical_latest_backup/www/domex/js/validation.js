
function validate2() {

    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

    var number = document.getElementById("phone").value;


    var email = document.getElementById("email").value;

    if (document.getElementById("name").value == "") {
        alert("Please Enter Name");
        document.getElementById("name").focus();
        return false;

    }
    
        if (document.getElementById("phone").value == "") {
            alert("Please Enter The Mobile Number");
            document.getElementById("phone").focus();
            return false;
        }
        
            if (document.getElementById("email").value == "") {
                alert("Please Enter The Email-Id");
                document.getElementById("email").focus();
                return false;
            }
          
                if (!emailPattern.test(email)) {
                    alert("Enter Valid Email Address");
                    return false;
                }


                    if (document.getElementById("address").value == "") {
                        alert("Please Enter the Address");
                        document.getElementById("address").focus();
                        return false;
                    }
                    
                      
                                    if (number.length < 10) {
                                        alert("Please Enter Valid Mobile no");
                                        return false;
                                    }
                                 

}      
