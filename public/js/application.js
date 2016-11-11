$(document).ready(function() {
  // ajaxarino();
});

var ajaxarino = function() {
  $("#send-gif-link").on("click", function(event) {
    event.preventDefault();
    console.log("AJAXARINO");

    $.get("/getgiphywithit").done(function(response) {
    console.log(response);
    }).fail(function(error) {
      alert("WHAT HAVE YOU DONE? D:");
    })
  });
}
