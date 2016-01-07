$(document).ready(function () {
    $("a.toggle-edit").click(function (e) {
        e.preventDefault();
        $(".edit-post").toggle();
    });
});
