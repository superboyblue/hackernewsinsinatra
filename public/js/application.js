$(document).ready(function() {
  $("h4 span").on("click","a", function(e){
    e.preventDefault();

    $.ajax({
      method:"POST",
      url: $(event.target).attr("href"),
      data:""
    }).done(function(response){
      debugger
    }).fail(function(response){
      debugger
    })

  })
});
