function EventValidate() {
    let x = document.forms["myForm"]["date"].value;
    let y = document.forms["myForm"]["type"].value;
    let z = document.forms["myForm"]["noOfGuests"].value;
    
    if (x == "" || y == "" || z == "" ) {
      alert("All fields must be filled out");
         false;
    }
    if( z<=50){
       alert("no of guests must be greater than 50.");
       return false;
    }
  }