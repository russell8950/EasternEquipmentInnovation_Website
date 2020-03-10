// setting variable for getting the time the page loaded
var start = (new Date()).getTime();
// creating variable curr with value of 1
var curr = 1;
// variable array with descriptions of images
var description = [
    "Machines for removing the tire from the Rim",
    "Machine for checking axle allignment",
    "Example of mounting a tire on the Rim",
    "Checks the balancing of the tire",
    "Example of the mechanics workspace",
    "Example of worker mounting a tire on the Rim",
    "Scissor Jacks",
    "Mobile tire changing station"
];
// function for making sure the next and pervious buttons do not infinitely loop past their begining and ending images
function check(input)
{
    // if statment for if the previous button is pressed and the value is less than 1
    if (input < 1)
    // return 1
      return 1;
    // if statment for if the next button is pressed after the last image appears
    if (input > 8)
    // return 8
      return 8;
    // return input
    return input;
}
// jquery functions
$(document).ready(function(){
            // jquery for when the next button is clicked
           $("#next").click( function() {
                curr = check(curr + 1); // set curr equal to the check function with variables
                $("#mainImg").attr("src", "img/pic" + curr + ".jpg"); // changes the image
                $("#imgCaption").html("Hover for Description"); // caption for when every image changes
            });
           // jquery for when the previous button is clicked
           $("#previous").click( function(){
               curr = check(curr - 1); // set curr equal to the check function with variables
                $("#mainImg").attr("src", "img/pic" + curr + ".jpg"); // changes the image
                $("#imgCaption").html("Hover for Description"); // caption for when every image changes
            });
           // jquery for when the mouse is hovering over the image
           $("#mainImg").mouseover( function() {
                 $("#imgCaption").html(description[curr-1]); // make the description from the array appear
           });        
});