var day = document.querySelector(".day");

day.click(function () {
    day.css({ "color": "white", "background-color": "#FF5B33", "border-radius": "800px" });
});

var crossButton = document.querySelector(".dismiss");

crossButton.click(function () {
    $(".reminder-title, .reminder-content").css("display", "none");
});

day.hover(
    function () { $(this).css({ "color": "#33BBFF", "background-color": "#FF3374", "border-radius": "800px" }) },
    function () { $(this).css({ "color": "", "background-color": "" }) });