/**
 * Created by VST on 31-10-2016.
 */

var leftmenus = [".device-listing", ".device-monitoring", ".device-location", ".management-device", ".management-controlpanel",
    ".management-monitoring", ".management-alarms", ".management-firmware", ".integration-listing", ".edit-device", ".one-device",
    ".one-device-info", ".one-device-child", ".one-device-healthcheck", ".one-device-monitor", ".device-update", ".one-device-bangalore"];

$(document).ready(function() {
    $('.button-collapse').sideNav({
            menuWidth: 240 // Default is 240
        }
    );
    $('.collapsible').collapsible();

    hideAll(leftmenus);

    leftmenus.forEach(function (entry) {
        $(entry).click(function () {
            hideAll(leftmenus);
            var viewname = entry + "-view";
            $(viewname).show();
        });
    });

    $(".device-listing-view").show();

    $(".install-success").hide();

    $(".tester").hide();

    $(".tester1").click(function () {
        $(".tester1-done").show();
    });
    $(".tester2").click(function () {
        $(".tester2-done").show();
    });
    $(".tester3").click(function () {
        $(".tester3-done").show();
    });
    $(".tester4").click(function () {
        $(".tester4-done").show();
    });
    $(".tester5").click(function () {
        $(".tester5-done").show();
    });
    $(".tester6").click(function () {
        $(".tester6-done").show();
    });
    $(".tester7").click(function () {
        $(".tester7-done").show();
    });
    $(".tester8").click(function () {
        $(".tester8-failure").show();
    });

    $(".ban-tester1").click(function () {
        $(".ban-tester1-done").show();
    });
    $(".ban-tester2").click(function () {
        $(".ban-tester2-done").show();
    });
    $(".ban-tester3").click(function () {
        $(".ban-tester3-done").show();
    });
    $(".ban-tester4").click(function () {
        $(".ban-tester4-done").show();
    });
    $(".ban-tester5").click(function () {
        $(".ban-tester5-done").show();
    });
    $(".ban-tester6").click(function () {
        $(".ban-tester6-done").show();
    });
    $(".ban-tester7").click(function () {
        $(".ban-tester7-done").show();
    });

    var responseValue = '';
    $("#softwareag-bengaluru-refresh").click(function () {
        $.ajax({
            type: "GET",
            /*dataType: "jsonp",*/
            url: "http://localhost:8080/thingsmind/getOnboardedStatus",
            success: function (responseData) {
                alert(responseData);
                if (responseData === 'ONBOARDED') {
                    $("#softwareag-bengaluru").show();
                    $("#india-map-container").hide();
                    $("#india-map-plus-6th-locationcontainer").show();
                    alert("block display");
                }
                else {
                    $("#softwareag-bengaluru").hide();
                    $("#india-map-container").show();
                    $("#india-map-plus-6th-locationcontainer").hide();
                    alert("none display");
                }
                responseValue = responseData;
            }

        });
    });

    alert("responseData : " + responseValue);
});

function hideAll(menus) {
    menus.forEach(function(entry) {
        var viewname = entry + "-view";
        $(viewname).hide();
    });
}

/*function showLocation() {
    if( document.getElementById("softwareag-bengaluru").style.display == 'none' ){
        document.getElementById("softwareag-bengaluru").style.display = 'block';
    }else{
        document.getElementById("softwareag-bengaluru").style.display = 'none';
    }
}*/


