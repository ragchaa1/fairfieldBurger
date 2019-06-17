$(function () {
    $('#cha').click(draw);

    function draw() {
        var sval = $('#sel').val();
        $.get("/payment?id=" + sval, function (data, status) {
            console.log('data = '+data)
            $("#main").html(data);
        });
        //console.log('rs text ' + xmlHttp.responseText);
    }
})