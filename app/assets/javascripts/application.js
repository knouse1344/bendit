// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .




$(document).ready(function() {


  // Home page html
  var indexHtml;
  var aboutHtml;
  var saveBtn = $(".admin-link.save")

  // // Login ESC Click Event

  $(document).keydown(function(e) {

    if(e.keyCode == 27) {
      window.location.href = "/signin";
    }
  });



  // Set the correct form
  var currentForm = false

  // Introduction edit form selection
  $(".edit_homepage").on("click", function() {
    currentForm = $(this)
  })

  // About page edit form selection
  $(".edit_aboutpage").on("click", function() {
    currentForm = $(this)
  })



  // Event edit image form on selection
  $(".edit_homepage .file-input").change(function() { this.form.submit(); });

  // About edit image form on selection
  $(".edit_aboutpage .file-input").change(function() { this.form.submit(); });


  // Build CMS on index page if admin is logged in
  if (typeof onIndex != "undefined") {

    // Check if we're logged in
    if (typeof onAdmin != "undefined") {

      $("h1").attr("contenteditable", "true")
      $("h2").attr("contenteditable", "true")
      $("h3").attr("contenteditable", "true")
      $("h4").attr("contenteditable", "true")
      $("h5").attr("contenteditable", "true")
      $("p").attr("contenteditable", "true")

      $("#index img").on("click", function() {

        // Find out what image we clicked on
        if ($(this).hasClass("imageone")) {
          $(".imageoneInput").click()
        } else if ($(this).hasClass("imagetwo")) {
          $(".imagetwoInput").click()
        } else if ($(this).hasClass("imagethree")) {
          $(".imagethreeInput").click()
        }
      })
    }
  }


  // Build CMS on about page if admin is logged in
  if (typeof onAbout != "undefined") {

    // Check if we're logged in
    if (typeof onAdmin != "undefined") {

      $("p").attr("contenteditable", "true")

    }
  }


  // Remove cms features if onpublic

  if (typeof onPublic != "undefined") {
    $("h1").attr("contenteditable", "false")
    $("h2").attr("contenteditable", "false")
    $("h3").attr("contenteditable", "false")
    $("h4").attr("contenteditable", "false")
    $("h5").attr("contenteditable", "false")
    $("p").attr("contenteditable", "false")

    $("#index img").on("click", function() {

        // Do nothing
        
    })
  }


  // Save Page
  saveBtn.on("click", function() {

    // If we're on index, route proper content
    if (typeof onIndex != "undefined") {
      // Get HTML
      indexHtml = $("#index").html()
      $("#pageContent").val(indexHtml)
    }

    if (typeof onAbout != "undefined") {
      // Get HTML
      aboutHtml = $("#aboutContent").html()
      $(".contentInput").val(aboutHtml)
    }
    $(currentForm).submit()
  })



})



// Validate filetypes

function validateFiles(inputFile) {
  var maxExceededMessage = "This file exceeds the maximum allowed file size (5 MB)";
  var extErrorMessage = "Only image file with extension: .jpg, .jpeg, .gif or .png is allowed";
  var allowedExtension = ["jpg", "jpeg", "gif", "png", "pdf"];
  
  var extName;
  var maxFileSize = $(inputFile).data('max-file-size');
  var sizeExceeded = false;
  var extError = false;
  
  $.each(inputFile.files, function() {
    if (this.size && maxFileSize && this.size > parseInt(maxFileSize)) {sizeExceeded=true;};
    extName = this.name.toLowerCase().split('.').pop();
    if ($.inArray(extName, allowedExtension) == -1) {extError=true;};
  });
  if (sizeExceeded) {
    window.alert(maxExceededMessage);
    $(inputFile).val('');
  };
  
  if (extError) {
    window.alert(extErrorMessage);
    $(inputFile).val('');
  };
}