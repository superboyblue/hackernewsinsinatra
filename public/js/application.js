$(document).ready(function() {
  $("h4 a").on("click", function(e){
    e.preventDefault();
    // debugger
      data = $(this)

    $.ajax({
      method:"POST",
      url: $(event.target).attr("href"),
      data:data.data()
    }).done(function(response){
      data.hide();
    }).fail(function(response){
      debugger
    })

  })
});
