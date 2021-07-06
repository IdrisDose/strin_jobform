$(function () {
    function display(bool) {
        if(bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        };
    };

    function setData(item) {
        var data = item.player;
        $("#heading").text(item.label);
        $("#firstname").text('Firstname: ' + data.firstname);
        $("#lastname").text('Lastname: ' + data.lastname);
        $("#phone_number").text('Phone: ' + data.phone);
    };

    display(false)

    window.addEventListener("message", function(event) {
        item = event.data;
        if(item.type === "ui") {
            if(item.status == true) {
                display(true);
                setData(item);
            } else {
                display(false);
            };
        };
    });

    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post("http://strin_jobform/exit_form", JSON.stringify({}));
            return
        }
    };

    $("#close").click(function() {
        $.post("http://strin_jobform/exit_form", JSON.stringify({}));
        return
    })

    $("#submit").click(function() {
        let text1 = $("#textarea_wayjoc").val()
        let text2 = $("#textarea_tuaby").val()
        $.post("http://strin_jobform/send_form", JSON.stringify({
            wayjoc: text1,
            tuaby: text2,
            job: item.job,
            label: item.label,
        }));
        return;
    });

})
