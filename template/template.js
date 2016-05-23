jQuery(function($){
  // initial paint
  polygen(
    {
      "target_element":"#test",
      "circle_diameter": 200,
      "sides":$("#slider").val(),
      "inner_color":"rgb(10,120,100)"
    }
  );
  $("#sides").text($("#slider").val());
  $("#slider").change(function(){
    $("canvas").remove();
    polygen(
      {
        "target_element":"#test",
        "circle_diameter": 200,
        "sides":$("#slider").val(),
        "inner_color":"rgb(10,120,100)"
      }
    );
    $("#sides").text($("#slider").val());
  });
})
