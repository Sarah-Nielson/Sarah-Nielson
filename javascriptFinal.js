<!DOCTYPE html>
<html>
<body>
    
 <div id='form'>       
    <label for='uid'>User ID</label>
    <input id='uid'name='uid' type='text'></input>
 </div>
    <br>
 <div>   
    <label for='fname'>First Name</label>
    <input id='fname' name='fname' type='text'/>
 </div>
    <br>
 <div>   
    <label for='lname'>Last Name</label>
    <input id='lname' name='lname' type='text'/>
    </div>
    <br>
 <div>
    <label for='birthday'>Birthday</label>
    <input id='birthday' name='birthday' type='date'/>
 </div>
    <br>

<button onclick="uIDValid();checkForBlank();dateDiff()">Accept</button>

<div id="errorMessages"> 
    <p hidden id='uIDBlank'>Invalid User ID must be filled in</p>
    <p hidden id='fNameBlank'>Invalid First Name must be filled in</p>
    <p hidden id='lNameBlank'>Invalid Last Name must be filled in</p>
    <p hidden id='BirthdayBlank'>Invalid Birthday Name must be filled in</p>
    <p hidden id="charLimit">Invalid User ID must have between 7 and 10 characters</p>
    <p hidden id="caseErr">Invalid User ID must conatain upper and lowercase letters</p>
    <p hidden id="numErr">Invalid User ID must conatain at least 1 number</p>
</div>

<div id="bDayOutput">
    <p id="topOutput"></p>
    <p id="output"></p>
</div>

 <div id="xText"></div>

<script>


    
    function checkForBlank(){

    var w = document.getElementById("uIDBlank");
    var x = document.getElementById("fNameBlank");
    var y = document.getElementById("lNameBlank");
    var z = document.getElementById("BirthdayBlank");

    if (document.getElementById('uid').value == "") {
        w.style.display = "block";
        document.getElementById('uid').style.borderColor = "red";
    }

    if (document.getElementById('fname').value == "") {
        x.style.display = "block";
        document.getElementById('fname').style.borderColor = "red";
    } 

    if (document.getElementById('lname').value == "") {
        y.style.display = "block";
        document.getElementById('lname').style.borderColor = "red";
    }

    if (document.getElementById('birthday').value == "") {
        z.style.display = "block";
        document.getElementById('birthday').style.borderColor = "red";
    }
}

function uIDValid() {
    var uid = document.getElementById('uid').value;
    var x = document.getElementById("charLimit");
    var w = document.getElementById("uIDBlank");
    var y = document.getElementById('caseErr');
    var z = document.getElementById('numErr');
     
     if (document.getElementById('uid').value == "") {
        w.style.display = "block";
        document.getElementById('uid').style.borderColor = "red";
    }

    if ((uid.length < 7) || (uid.length > 20)) {
        x.style.display = "block";
        document.getElementById('uid').style.borderColor = "red";
    }  

   if (uid.search(/[a-z]/) < 0) {
        y.style.display = "block";
        document.getElementById('uid').style.borderColor = "red";
    } else if (uid.search(/[A-Z]/) < 0) {
        y.style.display = "block";
        document.getElementById('uid').style.borderColor = "red";
    } else if (uid.search(/[0-9]/) < 0) {
        z.style.display = "block";
        document.getElementById('uid').style.borderColor = "red";
        }

}

function dateDiff() {
    var bDay= document.getElementById("birthday").value;
    var today= new Date();
    const dateOne = new Date(bDay);
    const dateTwo = new Date(today);
    const time = Math.abs(dateTwo - dateOne);
    const days = Math.ceil(time / (1000 * 60 * 60 *24));
    var fname = document.getElementById("fname").value;
    var lname = document.getElementById("lname").value;
    document.getElementById("topOutput").innerHTML=fname + " " + lname + " you have been breathing for";
    document.getElementById("output").innerHTML=days + " days!"; 

} 



// X Loop

let Xstr = "";
    for(let i = 0; i <= 20; i++){
    Xstr += "".padStart(i, "x") + "<br>";
    }
    document.getElementById("xText").innerHTML = Xstr;


    </script>

    </body>
    </html>