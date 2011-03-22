$(document).ready(bindActions);

function bindActions()
{
  $("a[data-remote]").live("ajax:success", function(e)
  {
    var link = $(this);
    link.parent().parent().hide();
  });
}