// allowing the functions to be called here and working in the html
window.onload = function()
{
    // checking the elements by id and then calling the proper functions
    // used to call the function for subscription
    document.getElementById('submit_sub').onclick = submitSubs;
    // used to call the function for contact us
    document.getElementById('submit_contact').onclick = submitNews;
    // used to call the function for checking if telephone is valid
    document.getElementById('telephone').onkeyup = phone_valid;
    // used to call the function check for subscrbing
    document.getElementById('sub').onchange = check;
    // used to call the function check for unsubscribing
    document.getElementById('unsub').onchange = check;
};
// check function being if a peroson is subscribing or unsubscribing to show or hide a checkbox
function check(){
    // if statement for if the id "sub" is being used
    if(document.getElementById("sub").checked){
        // set the boxes disabeled to be false so the checkboxes can be selected
        document.getElementsByClassName("subcheck")[0].disabled = false;
        document.getElementsByClassName("subcheck")[1].disabled = false;
        // set the text of the check boxes to be normal colors instead of dimmed out
        document.getElementsByClassName("input_text")[0].style.color = "#000000";
        document.getElementsByClassName("input_text")[1].style.color = "#000000";
    }
    // else
    else{
        // keep the check boxes disabeled
        document.getElementsByClassName("subcheck")[0].disabled = true;
        document.getElementsByClassName("subcheck")[1].disabled = true;
        // dim out of the text
        document.getElementsByClassName("input_text")[0].style.color = "#a3a3a3";
        document.getElementsByClassName("input_text")[1].style.color = "#a3a3a3";
    }
}
// function for checking if the phone number is valid
function phone_valid(){
    // if statement for checking if the length of the telephone number is not 12
    if(document.getElementById("telephone").value.length != 12){
        // set the color of the text to red to show it is under 12 characters
        document.getElementById("telephone").style.color = "#e5210b";
    }
    // else
    else{
        // set the colors of the text to black to show it is 12 characters
        document.getElementById("telephone").style.color = "#000000";
    }
}
// function for submission of contact us form
function submitNews(){
    // if statment for checking if the entry fields are empty
    if(
       document.getElementById("user_name").value === "" ||
       document.getElementById("telephone").value === "" ||
       document.getElementById("user_email").value === ""
      ){
        // sent alert message saying information is missing
        alert("You are missing information!");
        }
    // else
    else{
        // send a message to the user saying they will be contacted soon 
        var msg = "We will contact you soon!";
        msg = msg + "\nName: " + document.getElementById("user_name").value;
        msg = msg + "\nTelephone: " + document.getElementById("telephone").value;
        msg = msg + "\nEmail: " + document.getElementById("user_email").value;
        // throw alert of variable msg
        alert(msg);
    }
}
// function for submission of subscription
function submitSubs(){
    // if statement for checking the fields of sub, unsub of email are unfilled
    if(
        ((document.getElementById("sub").checked === false) &&
        (document.getElementById("unsub").checked === false)) ||
        (document.getElementById("email2").value === "")
    )
        {
            // alert the user that a option must be selected
            alert('You must select an option');
        }
    // else    
    else{
        // declare a variable called msg
        var msg = "";
        // declare variable that will hold cookie values
        var cook = "";
        // if statement for if the user subscribed
        if(document.getElementById("sub").checked){
            // add information to msg variable to show the user what they subscribed to
            msg = msg + "Welcome!";
            msg = msg + "\nEmail: " + document.getElementById("email2").value;
            msg = msg + "\nNewsletters: " + (document.getElementById("news").checked ? "Yes":"No");
            msg = msg + "\nPromotionals: " + (document.getElementById("promo").checked ? "Yes":"No");
            // command to grab information from the email2 id and place it in the cook variable array
            document.cookie = "email=" + document.getElementById("email2").value;
            // command to grab information from the news id and place it in the cook variable array
            document.cookie = "news=" + (document.getElementById("news").checked ? "Yes":"No");
            // command to grab information from the promo id and place it in the cook variable array
            document.cookie = "promo=" + (document.getElementById("promo").checked ? "Yes":"No");
            msg = msg + "\nCookie Data:";
            // getting rid of junkk data from the cookie
            cook = document.cookie.split(";");
            // email cookie being added to message
            msg = msg + "\nEmail cookie: " + cook[0];
            // news subscription information being added to cookie
            msg = msg + "\nNewsletter cookie: " + cook[1];
            // promo information cookie being added to message
            msg = msg + "\nPromomotional cookie: " + cook[2];
        }
        // else
        else{
            // set msg equal to a message of unsubscribing
            msg = "Sorry to see you go! :(";
            document.cookie = "email=";
            document.cookie = "news=";
            document.cookie = "promo=";
            msg = msg + "\nCookie Data:";
            // getting rid of junk data from the cookie
            cook = document.cookie.split(";");
            // showing no cookies are in the page message
            msg = msg + "\nEmail cookie: " + cook[0];
            msg = msg + "\nNewsletter cookie: " + cook[1];
            msg = msg + "\nPromomotional cookie: " + cook[2];
        }
        // alert the user of the msg value
        alert(msg);
    }
}