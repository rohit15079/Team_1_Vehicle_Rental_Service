// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function checkTime(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}

function startTime() {
    var today = new Date();
    var d = today.getDate();
    var mon = today.getMonth();
    var y =today.getFullYear();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    // add a zero in front of numbers<10
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById('time').innerHTML = d + "/" + mon + "/" + y + " " + h + ":" + m + ":" + s;
    t = setTimeout(function () {
        startTime()
    }, 500);
}

function changePassword() {
    alert("Password sent to your Email ID");
}

$(document).ready(function(){
   $('.destroyVehicle').on('click', function(){
      $.ajax({
          url: '/vehicles/' + this.parentElement.id,
          type: 'DELETE',
          success: function(r){
              $(this).closest('tr').fadeOut();
          }
      });
   });
});
