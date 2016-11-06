/**
 * Created by SARJ on 11/6/2016.
 */
$(document).ready(function(){
    pubnub = new PubNub({
        publishKey : 'pub-c-5b4ed4d3-8921-45cb-8151-d48aaebb2467',
        subscribeKey : 'sub-c-f7b16a98-a291-11e6-a1b1-0619f8945a4f'
    });

    $('.manage-reboot').click(function() {
        console.log("reboot..");
        var publishConfig = {
            channel : "manage",
            message : "reboot"
        };
        pubnub.publish(publishConfig, function(status, response) {
            console.log(status, response);
        })
    }) ;

    $('.manage-install').click(function() {
        console.log("install..");
        var publishConfig = {
            channel : "manage",
            message : "install"
        };
        pubnub.publish(publishConfig, function(status, response) {
            console.log(status, response);
            $(".install-old").hide();
            $(".install-success").show();
        })
    }) ;

    $('.test-light').click(function() {
        console.log("ledon..");
        var publishConfig = {
            channel : "manage",
            message : "ledon"
        };
        pubnub.publish(publishConfig, function(status, response) {
            console.log(status, response);
            $(".ban-tester8-done").show();
        })
    }) ;
});
