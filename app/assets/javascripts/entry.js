$(function() {
  $("tr.entry td.team").on("click", function() {
    alert("Choosing"+$(this).text());
    var id = $(this).data().id;
    var teamId = $(this).data().teamId;
    $.ajax({ type: "PUT", url: "/api/entries/"+id+".json", data: { team_id: teamId}});
  });
});
