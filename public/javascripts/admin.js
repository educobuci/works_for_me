$(document).ready(bindActions);

function bindActions()
{
  $("a").each(function(i,e)
  {
    e = $(e)
    if (e.attr("data-method") == "delete")
    {
      e.click(function(){
        $.ajax(
        {
          url: e.attr("href"),
          type: "DELETE",
          success: function(){ e.parent().parent().hide(); },
          error: function() { alert("Error on delete registry"); }
        });          
        return false;
      });
    };
  });
}