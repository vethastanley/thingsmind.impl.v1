<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta name="robots" content="noindex">

    <title>ThingsMind</title>
    <meta name="viewport" content="width=1800px, initial-scale=1">
    <link href="${pageContext.request.contextPath}/resources/css/materialize.css" rel="stylesheet" >
    <link href="${pageContext.request.contextPath}/resources/css/thingsmind.css" rel="stylesheet" >
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/thingsmind.js"></script>
    <script src="https://cdn.pubnub.com/sdk/javascript/pubnub.4.2.4.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/thingsmind-pubnub.js"></script>
</head>
<body>
<!-- Left Navigation and Header -->
<div class="navbar-fixed">
    <nav class="blue">
        <a href="home" id="logo-container"
           class="brand-logo"><img src="${pageContext.request.contextPath}/resources/img/logo.png" style="height: 55px;
            padding-left: 20px; padding-top: 10px"/></a>
        <ul id="slide-out" class="side-nav fixed pull-nav-bar">
            <li><a href="#!" class="device-listing"><i class="material-icons thingsmind-icons">view_list</i>Device Management</a></li>
            <li><a href="#!" class="management-device"><i class="material-icons thingsmind-icons ">phonelink_setup
            </i>Device Type Config</a></li>
            <li><a href="#!" class="management-firmware"><i class="material-icons thingsmind-icons ">shopping_basket</i>Firmware Repository</a></li>
        </ul>
        <a href="#" data-activates="slide-out" class="button-collapse"><i class="mdi-navigation-menu"></i></a>
        <ul class="right hide-on-med-and-down">
            <li><a href="#!"><i class="material-icons">search</i></a></li>
            <li><a href="#!"><i class="material-icons">perm_identity</i></a></li>
            <li><a href="login.html"><i class="material-icons">power_settings_new</i></a></li>
        </ul>
    </nav>
</div>
<!-- Device View -->
<div class="row thingsmind-container">
    <div class="col s12 device-listing-view">
        <!-- Modal Structure -->
        <div id="modal2" class="modal modal-fixed-footer">
            <div class="modal-content">
                <h4>&nbsp;&nbsp;&nbsp;&nbsp;Onboard Device</h4>

                <div class="col s12">
                    &nbsp;
                </div>

                <div class="row">
                    <div class="col s1">
                        &nbsp;
                    </div>

                    <div class="col s10">
                        <div class="row">
                            <form>
                                <div class="input-field col s6">
                                    <input id="serialnumber" type="text" class="validate">
                                    <label for="serialnumber">Serial Number</label>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="col s1">
                        &nbsp;
                    </div>

                </div>
            </div>

            <div class="modal-footer">
                <a href="#!" class="modal-action modal-close waves-effect waves-light btn">Add</a>
                <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Cancel</a>
            </div>
        </div>
        <div class="row">
            <div class="col s12">
                <h3 class="red-text text-lighten-2">On-Boarded Devices</h3>
            </div>
            <div class="col s11">
                &nbsp;
            </div>
            <div class="col s12 center-align">
                <table class="devices-table highlight">
                    <thead>
                    <tr>
                        <th data-field="name">Name</th>
                        <th data-field="date">Onboarded Date</th>
                        <th data-field="status">Status</th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr id="softwareag-bengaluru" class="sag-bengaluru one-device-bangalore">
                        <td><img src="${pageContext.request.contextPath}/resources/img/rasp.png"
                                 class="thingsmind-type"/>parkingpi@softwareag.bengaluru</td>
                        <td>8-Nov-2016</td>
                        <td><i class="material-icons green-text text-darken-2">thumb_up</i></td>
                    </tr>
                    <tr class="Chennai one-device">
                        <td><img src="${pageContext.request.contextPath}/resources/img/rasp.png"
                                 class="thingsmind-type"/>parkingpi@Chennai</td>
                        <td>16-Oct-2016</td>
                        <td><i class="material-icons green-text text-darken-2">thumb_up</i></td>
                    </tr>
                    <tr class="Mumbai one-device">
                        <td><img src="${pageContext.request.contextPath}/resources/img/rasp.png"
                                 class="thingsmind-type"/>parkingpi@Mumbai</td>
                        <td>09-Oct-2016</td>
                        <td><i class="material-icons green-text text-darken-2">thumb_up</i></td>
                    </tr>
                    <tr class="Kolkata one-device">
                        <td><img src="${pageContext.request.contextPath}/resources/img/rasp.png"
                                 class="thingsmind-type"/>parkingpi@Kolkata</td>
                        <td>09-Oct-2016</td>
                        <td><i class="material-icons red-text">thumb_down</i></td>
                    </tr>
                    <tr class="Delhi one-device">
                        <td><img src="${pageContext.request.contextPath}/resources/img/arduino.png"
                                 class="thingsmind-type"/>parkingpi@Delhi</td>
                        <td>2-Oct-2016</td>
                        <td><i class="material-icons green-text text-darken-2">thumb_up</i></td>
                    </tr>
                    <tr class="Hyderabad one-device">
                        <td><img src="${pageContext.request.contextPath}/resources/img/rasp.png"
                                 class="thingsmind-type"/>parkingpi@Hyderabad</td>
                        <td>1-Oct-2016</td>
                        <td><b><i class="material-icons green-text text-darken-2">thumb_up</i></b></td>
                    </tr>
                    </tbody>
                </table>
                <div class="fixed-action-btn">
                    <a class="btn-floating btn-large blue">
                        <i class="material-icons">menu</i>
                    </a>
                    <ul>
                        <li><a class="tooltipped device-update btn-floating grey"
                               data-position="left" data-tooltip="Firmware Upgrade"><i
                                class="material-icons">system_update_alt</i></a></li>
                        <li><a class="tooltipped device-location btn-floating red"
                               data-position="left" data-tooltip="Location"><i
                                class="material-icons">navigation</i></a></li>
                        <li><a class="tooltipped device-monitoring btn-floating yellow darken-3"
                               data-position="left" data-tooltip="Monitoring"><i
                                class="material-icons">insert_chart</i></a></li>
                        <li><a class="tooltipped device-refresh btn-floating green darken-3"
                               data-position="left" data-tooltip="Refresh"><i
                                class="material-icons">replay</i></a></li>
                        <li><a class="tooltipped device-onboard btn-floating green darken-3 modal-trigger" data-target="modal2"
                               data-position="left" data-tooltip="Onboard device"><i
                                class="material-icons">add</i></a></li>


                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- One Device view -->
    <div class="col s12 one-device-view">
        <div class="row">
            <div class="col s12">
                <h3 class="red-text text-lighten-2">Device Shadow</h3>
            </div>
            <div class="col s12">&nbsp;</div>
            <div class="col s12">
                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header active"><i class="material-icons">info_outline</i>Device Info</div>
                        <div class="collapsible-body">
                            <div class="row">
                                <div class="col s12">&nbsp;</div>
                            </div>
                            <div class="row">
                                <div class="col s1">&nbsp;</div>
                                <div class="col s10">
                                    <div class="row">
                                        <div class="input-field col s4">
                                            <input id="attribute1" type="text"  class="validate" disabled value="parkingpi@Chennai">
                                            <label for="attribute1" class="active">Name</label>
                                        </div>
                                        <div class="col s2">&nbsp;&nbsp;&nbsp;</div>
                                        <div class="input-field col s4">
                                            <img src="${pageContext.request.contextPath}/resources/img/rasp.png"
                                                 class="thingsmind-type force-down"/>
                                            <input id="attribute2" type="text"  class="validate" disabled value="     Raspberry Pi">
                                            <label for="attribute2" class="active">Type</label>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="input-field col s4">
                                            <input id="attribute4" type="text"  class="validate" disabled value="Chennai">
                                            <label for="attribute4" class="active">Location</label>
                                        </div>
                                        <div class="col s2">&nbsp;&nbsp;&nbsp;</div>
                                        <div class="input-field col s4">
                                            <input id="attribute4" type="text"  class="validate" disabled value="Raspberry Pi Foundation">
                                            <label for="attribute4" class="active">Manufacturer</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s4">
                                            <input id="attribute4" type="text"  class="validate" disabled value="GAFS45">
                                            <label for="attribute4" class="active">Serial Number</label>
                                        </div>
                                        <div class="col s2">&nbsp;&nbsp;&nbsp;</div>
                                        <div class="input-field col s4">
                                            <input id="attribute4" type="text"  class="validate" disabled value="eth0">
                                            <label for="attribute4" class="active">Ethernet Numer</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">settings_cell</i>Child Devices</div>
                        <div class="collapsible-body">
                            <div class="col s12">&nbsp; &nbsp;</div>
                            <div class="col s12">
                                <ul class="collection with-header col s10" style="margin-left: 8%;">
                                    <li class="collection-header"><h4>Sensors</h4></li>
                                    <li href="#!" class="collection-item">
                                        <div>
                                            L1-Distance Sensor
                                            <a href="#!" class="secondary-content tester1 tooltipped"
                                               data-position="left" title="Test" style="color:#72777A"
                                               data-tooltip="Test"><i class="material-icons text-lighten-2">assignment&nbsp;&nbsp;</i><i class="material-icons green-text text-darken-2 tester tester1-done">thumb_up&nbsp;&nbsp;</i></a>
                                        </div>
                                    </li>
                                    <li href="#!" class="collection-item">
                                        <div>
                                            L2-Distance Sensor
                                            <a href="#!" class="secondary-content tester2 tooltipped" data-position="left" title="Test" style="color:#72777A" data-tooltip="Test"><i class="material-icons text-lighten-2">assignment&nbsp;&nbsp;</i><i class="material-icons green-text text-darken-2 tester tester2-done">thumb_up&nbsp;&nbsp;</i></a>
                                        </div>
                                    </li>
                                    <li href="#!" class="collection-item">
                                        <div>
                                            R1-Distance Sensor
                                            <a href="#!" class="secondary-content tester3 tooltipped"
                                               data-position="left" title="Test" style="color:#72777A"
                                               data-tooltip="Test"><i
                                                    class="material-icons text-lighten-2">assignment&nbsp;
                                                &nbsp;</i><i
                                                    class="material-icons green-text text-darken-2 tester tester3-done">thumb_up&nbsp;&nbsp;</i></a>
                                        </div>
                                    </li>
                                    <li href="#!" class="collection-item">
                                        <div>
                                            R2-Distance Sensor
                                            <a href="#!" class="secondary-content tester4 tooltipped"
                                               data-position="left" title="Test" style="color:#72777A"
                                               data-tooltip="Test"><i
                                                    class="material-icons text-lighten-2">assignment&nbsp;
                                                &nbsp;</i><i
                                                    class="material-icons green-text text-darken-2 tester tester4-done">thumb_up&nbsp;&nbsp;</i></a>
                                        </div>
                                    </li>
                                    <li href="#!" class="collection-item">
                                        <div>
                                            L1-LED
                                            <a href="#!" class="secondary-content tester5 tooltipped"
                                               data-position="left" title="Test" style="color:#72777A"
                                               data-tooltip="Test"><i
                                                    class="material-icons text-lighten-2">assignment&nbsp;
                                                &nbsp;</i><i
                                                    class="material-icons tester green-text text-darken-2 tester5-done">thumb_up&nbsp;&nbsp;</i></a>
                                        </div>
                                    </li>
                                    <li href="#!" class="collection-item">
                                        <div>
                                            L2-LED
                                            <a href="#!" class="secondary-content tester6 tooltipped"
                                               data-position="left" title="Test" style="color:#72777A"
                                               data-tooltip="Test"><i
                                                    class="material-icons text-lighten-2">assignment&nbsp;
                                                &nbsp;</i><i
                                                    class="material-icons tester green-text text-darken-2 tester6-done">thumb_up&nbsp;&nbsp;</i></a>
                                        </div>
                                    </li>
                                    <li href="#!" class="collection-item">
                                        <div>
                                            R1-LED
                                            <a href="#!" class="secondary-content tester7 tooltipped"
                                               data-position="left" title="Test" style="color:#72777A"
                                               data-tooltip="Test"><i
                                                    class="material-icons text-lighten-2">assignment&nbsp;
                                                &nbsp;</i><i
                                                    class="material-icons tester green-text text-darken-2 tester7-done">thumb_up&nbsp;&nbsp;</i></a>
                                        </div>
                                    </li>
                                    <li href="#!" class="collection-item">
                                        <div>
                                            R2-LED
                                            <a href="#!" class="secondary-content tester8 tooltipped"
                                               data-position="left" title="Test" style="color:#72777A"
                                               data-tooltip="Test"><i
                                                    class="material-icons text-lighten-2">assignment&nbsp;
                                                &nbsp;</i><i
                                                    class="material-icons tester red-text text-darken-2 tester8-failure">thumb_down&nbsp;&nbsp;</i></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col s12">&nbsp; &nbsp;</div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">assessment</i>Monitoring</div>
                        <div class="collapsible-body">
                            <div class="row">
                                <div class="col s12">
                                    &nbsp;
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s1">
                                    &nbsp;
                                </div>
                                <div class="col s3">
                                    <div id="cpu-usage-container">
                                        <iframe
                                                src="${pageContext.request.contextPath}/resources/html/charts/cpu-usage-chart.htm"
                                                width="340px" height="235px" frameborder="0"></iframe>
                                    </div>
                                </div>
                                <div class="col s3">
                                    <div id="memory-usage-container">
                                        <iframe
                                                src="${pageContext.request.contextPath}/resources/html/charts/memory-usage-chart.htm"  width="340px" height="235px" frameborder="0"></iframe>
                                    </div>
                                </div>
                                <div class="col s3">
                                    <div id="temperature-container">
                                        <iframe
                                                src="${pageContext.request.contextPath}/resources/html/charts/temperature-chart.htm"
                                                width="340px" height="235px" frameborder="0"></iframe>
                                    </div>
                                </div>
                                <div class="col s1">
                                    &nbsp;
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s1">
                                    &nbsp;
                                </div>
                                <div class="col s3">
                                    <div id="voltage-container">
                                        <iframe
                                                src="${pageContext.request.contextPath}/resources/html/charts/voltage-chart.htm"
                                                width="340px" height="235px" frameborder="0"></iframe>
                                    </div>
                                </div>
                                <div class="col s4">
                                    <div id="signal-strength-live-container">
                                        <iframe
                                                src="${pageContext.request.contextPath}/resources/html/charts/signal-strength-live-update.htm" width="690px" height="430px" frameborder="0"></iframe>
                                    </div>
                                </div>
                                <div class="col s1">
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">add_alert</i>Alerts</div>
                        <div class="collapsible-body">
                            <div class="col s12">&nbsp; &nbsp;</div>
                            <div class="col s12">
                                <ul class="collection with-header col s10" style="margin-left: 8%;">
                                    <li class="collection-header"><h4><i
                                            class="material-icons red-text text-darken-2">warning&nbsp;&nbsp;</i> Critical Alerts</h4></li>
                                    <li href="#!" class="collection-item">
                                        <a href="#!" class="secondary-content tooltipped left"
                                           data-position="right" data-tooltip="Critical">
                                            <i class="material-icons red-text text-darken-2">warning&nbsp;&nbsp;</i>
                                        </a>
                                        <div>
                                            Temperature raised above the critical limit of 90 degree. This could
                                            cause a permanent shutdown of the device.
                                        </div>
                                    </li>
                                    <li href="#!" class="collection-item">
                                        <a href="#!" class="secondary-content tooltipped left"
                                           data-position="right" data-tooltip="Critical">
                                            <i class="material-icons red-text text-darken-2">warning&nbsp;&nbsp;</i>
                                        </a>
                                        <div>
                                            Experiencing bad network quality because of which the data transfer is
                                            affected and data loss has occured.
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col s12">&nbsp; &nbsp;</div>
                            <div class="col s12">
                                <ul class="collection with-header col s10" style="margin-left: 8%;">
                                    <li class="collection-header"><h4><i
                                            class="material-icons red-text text-lighten-3">warning&nbsp;&nbsp;</i>
                                        Medium  Alerts</h4></li>
                                    <li href="#!" class="collection-item">
                                        <a href="#!" class="secondary-content tooltipped left"
                                           data-position="right" data-tooltip="Critical">
                                            <i class="material-icons red-text text-lighten-3">warning&nbsp;&nbsp;</i>
                                        </a>
                                        <div>
                                            Experiencing bad network quality because of which the data transfer is
                                            affected and data loss has occured.
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col s12">&nbsp; &nbsp;</div>
                            <div class="col s12">
                                <ul class="collection with-header col s10" style="margin-left: 8%;">
                                    <li class="collection-header"><h4><i
                                            class="material-icons yellow-text text-darken-2">warning&nbsp;&nbsp;</i>
                                        Low Alerts</h4></li>
                                    <li href="#!" class="collection-item">
                                        <div>
                                           No Alerts available.
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col s12">&nbsp; &nbsp;</div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">perm_scan_wifi</i>Control Panel</div>
                        <div class="collapsible-body">
                            <div class="row">
                                <div class="col s12">
                                    &nbsp;
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s1">
                                    &nbsp;
                                </div>
                                <div class="col s2">
                                    <div id="reboot-cp-container">
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="card small" style="height: 165px; width: 160px;">
                                                    <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                                        <i class="large material-icons orange-text text-darken-1">power_settings_new</i>
                                                    </div>
                                                    <div style="width: 0%; float: left;">
                                                        <div class="card-content">
                                                        </div>
                                                        <div class="card-action">
                                                            <a href="#">Reboot</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s2">
                                    <div id="volume-mute-cp-container">
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="card small" style="height: 165px; width: 160px;">
                                                    <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                                        <i class="large material-icons red-text text-lighten-1">volume_off</i>
                                                    </div>
                                                    <div style="width: 0%; float: left;">
                                                        <div class="card-content">
                                                            <p align="left">To off Raspberry PI volume remotely.</p>
                                                        </div>
                                                        <div class="card-action">
                                                            <a href="#">Volume Off</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s2">
                                    <div id="volume-down-cp-container">
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="card small" style="height: 165px; width: 170px;">
                                                    <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                                        <i class="large material-icons blue-text text-darken-1">volume_down</i>
                                                    </div>
                                                    <div style="width: 0%; float: left;">
                                                        <div class="card-content">
                                                            <p align="left">To reduce Raspberry PI volume remotely.</p>
                                                        </div>
                                                        <div class="card-action">
                                                            <a href="#">Volume Down</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s2">
                                    <div id="volume-up-cp-container">
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="card small" style="height: 165px; width: 160px;">
                                                    <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                                        <i class="large material-icons blue-text text-darken-1">volume_up</i>
                                                    </div>
                                                    <div style="width: 0%; float: left;">
                                                        <div class="card-content">
                                                            <p align="left">To increase Raspberry PI volume remotely.</p>
                                                        </div>
                                                        <div class="card-action">
                                                            <a href="#">Volume Up</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s2">
                                    <div id="reset-cp-container">
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="card small" style="height: 165px; width: 170px;">
                                                    <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                                        <i class="large material-icons orange-text text-darken-4">settings_backup_restore</i>
                                                    </div>
                                                    <div style="width: 0%; float: left;">
                                                        <div class="card-content">
                                                        </div>
                                                        <div class="card-action">
                                                            <a href="#">Factory Reset</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s1">
                                    &nbsp;
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s1">
                                    &nbsp;
                                </div>
                                <div class="col s2">
                                        <div id="location-cp-container">
                                            <div class="row">
                                                <div class="col s12 m6">
                                                    <div class="card small" style="height: 165px; width: 160px;">
                                                        <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                                            <i class="large material-icons green-text text-darken-1">location_on</i>
                                                        </div>
                                                        <div style="width: 0%; float: left;">
                                                            <div class="card-content">
                                                                <p align="left">To increase Raspberry PI volume remotely.</p>
                                                            </div>
                                                            <div class="card-action">
                                                                <div class="switch">
                                                                    <label>
                                                                        Off
                                                                        <input type="checkbox">
                                                                        <span class="lever"></span>
                                                                        On
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                                <div class="col s2">
                                    <div id="wifi-prem-cp-container">
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="card small" style="height: 165px; width: 160px;">
                                                    <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                                        <i class="large material-icons lime-text text-darken-1">perm_scan_wifi</i>
                                                    </div>
                                                    <div style="width: 0%; float: left;">
                                                        <div class="card-content">
                                                            <p align="left">To increase Raspberry PI volume remotely.</p>
                                                        </div>
                                                        <div class="card-action">
                                                            <div class="switch">
                                                                <label>
                                                                    Off
                                                                    <input checked type="checkbox">
                                                                    <span class="lever"></span>
                                                                    On
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col s2">
                                    <div id="videocam-cp-container">
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="card small" style="height: 165px; width: 160px;">
                                                    <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                                        <i class="large material-icons brown-text text-darken-2">videocam</i>
                                                    </div>
                                                    <div style="width: 0%; float: left;">
                                                        <div class="card-content">
                                                            <p align="left">To increase Raspberry PI volume remotely.</p>
                                                        </div>
                                                        <div class="card-action">
                                                            <div class="switch">
                                                                <label>
                                                                    Off
                                                                    <input checked type="checkbox">
                                                                    <span class="lever"></span>
                                                                    On
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col s2">
                                    <div id="wifi-cp-container">
                                        <div class="row">
                                            <div class="col s12 m6">
                                                <div class="card small" style="height: 165px; width: 160px;">
                                                    <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                                        <i class="large material-icons orange-text text-darken-1">portable_wifi_off</i>
                                                    </div>
                                                    <div style="width: 0%; float: left;">
                                                        <div class="card-content">
                                                            <p align="left">To increase Raspberry PI volume remotely.</p>
                                                        </div>
                                                        <div class="card-action">
                                                            <div class="switch">
                                                                <label>
                                                                    Off
                                                                    <input type="checkbox">
                                                                    <span class="lever"></span>
                                                                    On
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s2">
                                    <div id="bluetooth-cp-container">
                                            <div class="row">
                                                <div class="col s12 m6">
                                                    <div class="card small" style="height: 165px; width: 160px;">
                                                        <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                                            <i class="large material-icons blue-text text-lighten-1">settings_bluetooth</i>
                                                        </div>
                                                        <div style="width: 0%; float: left;">
                                                            <div class="card-content">
                                                                <p align="left">To increase Raspberry PI volume remotely.</p>
                                                            </div>
                                                            <div class="card-action">
                                                                <div class="switch">
                                                                    <label>
                                                                        Off
                                                                        <input checked type="checkbox">
                                                                        <span class="lever"></span>
                                                                        On
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                                <div class="col s1">
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">play_for_work</i>Firmware and Software</div>
                        <div class="collapsible-body">
                            <div class="row">
                                <div class="col s12">
                                    &nbsp;
                                </div>
                                <div class="col s1">
                                    &nbsp;
                                </div>
                                <div class="col s10 center-align">
                                    <table class="devices-table highlight">
                                        <thead>
                                        <tr>
                                            <th data-field="id">Name</th>
                                            <th data-field="version">Version</th>
                                            <th data-field="date">Status</th>
                                            <th data-field="price">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Python</td>
                                            <td>3.5.2</td>
                                            <td>
                                                <span class="green-text text-lighten-2">INSTALLED</span>
                                            </td>
                                            <td>
                                                <a class="tooltipped sw-update" data-position="right" data-delay="10"
                                                   data-tooltip="Un Install"><i class="material-icons red-text text-lighten-2">delete</i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Pi Camera</td>
                                            <td>0.6.3</td>
                                            <td>
                                                <B class="green-text text-lighten-2">INSTALLED</B>
                                            </td>
                                            <td>
                                                <a class="tooltipped sw-update" data-position="right" data-delay="10"
                                                   data-tooltip="Un Install"><i
                                                        class="material-icons red-text text-lighten-2">delete</i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Raspian</td>
                                            <td>8 jessie</td>
                                            <td>
                                                <span class="green-text text-lighten-2">INSTALLED</span>
                                            </td>
                                            <td>
                                                <a class="tooltipped sw-update" data-position="right" data-delay="10"
                                                   data-tooltip="Un Install"><i class="material-icons red-text text-lighten-2">delete</i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Java</td>
                                            <td>8.1111</td>
                                            <td>
                                                <span class="green-text text-lighten-2">INSTALLED</span>
                                            </td>
                                            <td>
                                                <a class="tooltipped sw-update" data-position="right" data-delay="10"
                                                   data-tooltip="Un Install"><i class="material-icons red-text text-lighten-2">delete</i></a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col s1">
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">navigation</i>Location</div>
                        <div class="collapsible-body">
                            <div class="row">
                                <div class="col s12">
                                    &nbsp;
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s.5">
                                    &nbsp;
                                </div>
                                <div class="col s11">
                                    <div id="map-chennai-container">
                                        <iframe
                                                src="${pageContext.request.contextPath}/resources/html/maps/map-chennai.htm"
                                                width="100%" height="520" frameborder="0"></iframe>
                                    </div>
                                </div>
                                <div class="col s.5">
                                    &nbsp;
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col s12 one-device-bangalore-view">
    <div class="row">
    <div class="col s12">
        <h3 class="red-text text-lighten-2">Device Shadow</h3>
    </div>
    <div class="col s12">&nbsp;</div>
    <div class="col s12">
    <ul class="collapsible" data-collapsible="accordion">
    <li>
        <div class="collapsible-header active"><i class="material-icons">info_outline</i>Device Info</div>
        <div class="collapsible-body">
            <div class="row">
                <div class="col s12">&nbsp;</div>
            </div>
            <div class="row">
                <div class="col s1">&nbsp;</div>
                <div class="col s10">
                    <div class="row">
                        <div class="input-field col s4">
                            <input id="attribute1" type="text"  class="validate" disabled value="softwareag.bengaluru">
                            <label for="attribute1" class="active">Name</label>
                        </div>
                        <div class="col s2">&nbsp;&nbsp;&nbsp;</div>
                        <div class="input-field col s4">
                            <img src="${pageContext.request.contextPath}/resources/img/rasp.png"
                                 class="thingsmind-type force-down"/>
                            <input id="attribute2" type="text"  class="validate" disabled value="     Raspberry Pi">
                            <label for="attribute2" class="active">Type</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col s4">
                            <input id="attribute4" type="text"  class="validate" disabled value="Bangalore">
                            <label for="attribute4" class="active">Location</label>
                        </div>
                        <div class="col s2">&nbsp;&nbsp;&nbsp;</div>
                        <div class="input-field col s4">
                            <input id="attribute4" type="text"  class="validate" disabled value="Raspberry Pi Foundation">
                            <label for="attribute4" class="active">Manufacturer</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s4">
                            <input id="attribute4" type="text"  class="validate" disabled value="QAFS45">
                            <label for="attribute4" class="active">Serial Number</label>
                        </div>
                        <div class="col s2">&nbsp;&nbsp;&nbsp;</div>
                        <div class="input-field col s4">
                            <input id="attribute4" type="text"  class="validate" disabled value="eth0">
                            <label for="attribute4" class="active">Ethernet Numer</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </li>
    <li>
        <div class="collapsible-header"><i class="material-icons">settings_cell</i>Child Devices</div>
        <div class="collapsible-body">
            <div class="col s12">&nbsp; &nbsp;</div>
            <div class="col s12">
                <ul class="collection with-header col s10" style="margin-left: 8%;">
                    <li class="collection-header"><h4>Sensors</h4></li>

                    <li href="#!" class="collection-item">
                        <div>
                            L1-Distance Sensor
                            <a href="#!" class="secondary-content ban-tester1 tooltipped" data-position="left"
                               title="Test" style="color:#72777A" data-tooltip="Test"><i class="material-icons text-lighten-2">assignment&nbsp;&nbsp;</i><i class="material-icons green-text text-darken-2 tester ban-tester1-done">thumb_up&nbsp;&nbsp;</i></a>
                        </div>
                    </li>
                    <li href="#!" class="collection-item">
                        <div>
                            L2-Distance Sensor
                            <a href="#!" class="secondary-content ban-tester2 tooltipped" data-position="left"
                               title="Test" style="color:#72777A" data-tooltip="Test"><i
                                    class="material-icons text-lighten-2">assignment&nbsp;&nbsp;</i><i class="material-icons green-text text-darken-2 tester ban-tester2-done">thumb_up&nbsp;&nbsp;</i></a>
                        </div>
                    </li>
                    <li href="#!" class="collection-item">
                        <div>
                            R1-Distance Sensor
                            <a href="#!" class="secondary-content ban-tester3 tooltipped" data-position="left"
                               title="Test" style="color:#72777A" data-tooltip="Test"><i
                                    class="material-icons text-lighten-2">assignment&nbsp;&nbsp;</i><i class="material-icons green-text text-darken-2 tester ban-tester3-done">thumb_up&nbsp;&nbsp;</i></a>
                        </div>
                    </li>
                    <li href="#!" class="collection-item">
                        <div>
                            R2-Distance Sensor
                            <a href="#!" class="secondary-content ban-tester4 tooltipped" data-position="left"
                               title="Test" style="color:#72777A" data-tooltip="Test"><i
                                    class="material-icons text-lighten-2">assignment&nbsp;&nbsp;</i><i class="material-icons green-text text-darken-2 tester ban-tester4-done">thumb_up&nbsp;&nbsp;</i></a>
                        </div>
                    </li>
                    <li href="#!" class="collection-item">
                        <div>
                            L1-LED
                            <a href="#!" class="secondary-content ban-tester5 tooltipped" data-position="left"
                               title="Test" style="color:#72777A" data-tooltip="Test"><i
                                    class="material-icons text-lighten-2">assignment&nbsp;&nbsp;</i><i class="material-icons tester green-text text-darken-2 ban-tester5-done">thumb_up&nbsp;&nbsp;</i></a>
                        </div>
                    </li>
                    <li href="#!" class="collection-item">
                        <div>
                            L2-LED
                            <a href="#!" class="secondary-content ban-tester6 tooltipped" data-position="left"
                               title="Test" style="color:#72777A" data-tooltip="Test"><i
                                    class="material-icons text-lighten-2">assignment&nbsp;&nbsp;</i><i class="material-icons tester green-text text-darken-2 ban-tester6-done">thumb_up&nbsp;&nbsp;</i></a>
                        </div>
                    </li>
                    <li href="#!" class="collection-item">
                        <div>
                            R1-LED
                            <a href="#!" class="secondary-content ban-tester7 tooltipped" data-position="left"
                               title="Test" style="color:#72777A" data-tooltip="Test"><i
                                    class="material-icons text-lighten-2">assignment&nbsp;&nbsp;</i><i class="material-icons tester green-text text-darken-2 ban-tester7-done">thumb_up&nbsp;&nbsp;</i></a>
                        </div>
                    </li>
                    <li href="#!" class="collection-item">
                        <div>
                            R2-LED
                            <a href="#!" class="test-light secondary-content ban-tester8 tooltipped"
                               data-position="left"
                               title="Test" style="color:#72777A" data-tooltip="Test"><i
                                    class="material-icons text-lighten-2">assignment&nbsp;&nbsp;</i><i class="material-icons tester green-text text-darken-2 ban-tester8-done">thumb_up&nbsp;&nbsp;</i></a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col s12">&nbsp; &nbsp;</div>
        </div>
    </li>
    <li>
        <div class="collapsible-header"><i class="material-icons">assessment</i>Monitoring</div>
        <div class="collapsible-body">
            <div class="row">
                <div class="col s12">
                    &nbsp;
                </div>
            </div>
            <div class="row">
                <div class="col s1">
                    &nbsp;
                </div>
                <div class="col s3">
                    <div id="cpu-usage-container">
                        <iframe
                                src="${pageContext.request.contextPath}/resources/html/charts/cpu-usage-chart.htm"
                                width="340px" height="235px" frameborder="0"></iframe>
                    </div>
                </div>
                <div class="col s3">
                    <div id="memory-usage-container">
                        <iframe
                                src="${pageContext.request.contextPath}/resources/html/charts/memory-usage-chart.htm"  width="340px" height="235px" frameborder="0"></iframe>
                    </div>
                </div>
                <div class="col s3">
                    <div id="temperature-container">
                        <iframe
                                src="${pageContext.request.contextPath}/resources/html/charts/temperature-chart.htm"
                                width="340px" height="235px" frameborder="0"></iframe>
                    </div>
                </div>
                <div class="col s1">
                    &nbsp;
                </div>
            </div>
            <div class="row">
                <div class="col s1">
                    &nbsp;
                </div>
                <div class="col s3">
                    <div id="voltage-container">
                        <iframe
                                src="${pageContext.request.contextPath}/resources/html/charts/voltage-chart.htm"
                                width="340px" height="235px" frameborder="0"></iframe>
                    </div>
                </div>
                <div class="col s4">
                    <div id="signal-strength-live-container">
                        <iframe
                                src="${pageContext.request.contextPath}/resources/html/charts/signal-strength-live-update.htm" width="690px" height="430px" frameborder="0"></iframe>
                    </div>
                </div>
                <div class="col s1">
                    &nbsp;
                </div>
            </div>
        </div>
    </li>
    <li>
    <li>
        <div class="collapsible-header"><i class="material-icons">add_alert</i>Alerts</div>
        <div class="collapsible-body">
            <div class="col s12">&nbsp; &nbsp;</div>
            <div class="col s12">
                <ul class="collection with-header col s10" style="margin-left: 8%;">
                    <li class="collection-header"><h4><i
                            class="material-icons red-text text-darken-2">warning&nbsp;&nbsp;</i> Critical Alerts</h4></li>
                    <li href="#!" class="collection-item">
                        <div>
                            No Alerts available.
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col s12">&nbsp; &nbsp;</div>
            <div class="col s12">
                <ul class="collection with-header col s10" style="margin-left: 8%;">
                    <li class="collection-header"><h4><i
                            class="material-icons red-text text-lighten-3">warning&nbsp;&nbsp;</i>
                        Medium  Alerts</h4></li>
                    <li href="#!" class="collection-item">
                        <div>
                            No Alerts available.
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col s12">&nbsp; &nbsp;</div>
            <div class="col s12">
                <ul class="collection with-header col s10" style="margin-left: 8%;">
                    <li class="collection-header"><h4><i
                            class="material-icons yellow-text text-darken-2">warning&nbsp;&nbsp;</i>
                        Low Alerts</h4></li>
                    <li href="#!" class="collection-item">
                        <div>
                            No Alerts available.
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col s12">&nbsp; &nbsp;</div>
        </div>
    </li>
    <li>
    <div class="collapsible-header"><i class="material-icons">perm_scan_wifi</i>Control Panel</div>
    <div class="collapsible-body">
    <div class="row">
        <div class="col s12">
            &nbsp;
        </div>
    </div>
    <div class="row">
        <div class="col s1">
            &nbsp;
        </div>
        <div class="col s2">
            <div id="reboot-cp-container">
                <div class="row">
                    <div class="col s12 m6">
                        <div class="card small" style="height: 165px; width: 160px;">
                            <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                <i class="large material-icons orange-text text-darken-1">power_settings_new</i>
                            </div>
                            <div style="width: 0%; float: left;">
                                <div class="card-content">
                                </div>
                                <div class="card-action">
                                    <a class="manage-reboot" href="#">Reboot</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s2">
            <div id="volume-mute-cp-container">
                <div class="row">
                    <div class="col s12 m6">
                        <div class="card small" style="height: 165px; width: 160px;">
                            <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                <i class="large material-icons red-text text-lighten-1">volume_off</i>
                            </div>
                            <div style="width: 0%; float: left;">

                                <div class="card-content">
                                    <p align="left">To off Raspberry PI volume remotely.</p>
                                </div>
                                <div class="card-action">
                                    <a href="#">Volume Off</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s2">
            <div id="volume-down-cp-container">
                <div class="row">
                    <div class="col s12 m6">
                        <div class="card small" style="height: 165px; width: 170px;">
                            <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                <i class="large material-icons blue-text text-darken-1">volume_down</i>
                            </div>
                            <div style="width: 0%; float: left;">

                                <div class="card-content">
                                    <p align="left">To reduce Raspberry PI volume remotely.</p>
                                </div>
                                <div class="card-action">
                                    <a href="#">Volume Down</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s2">
            <div id="volume-up-cp-container">
                <div class="row">
                    <div class="col s12 m6">
                        <div class="card small" style="height: 165px; width: 160px;">
                            <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                <i class="large material-icons blue-text text-darken-1">volume_up</i>
                            </div>
                            <div style="width: 0%; float: left;">

                                <div class="card-content">
                                    <p align="left">To increase Raspberry PI volume remotely.</p>
                                </div>
                                <div class="card-action">
                                    <a href="#">Volume Up</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s2">
            <div id="reset-cp-container">
                <div class="row">
                    <div class="col s12 m6">
                        <div class="card small" style="height: 165px; width: 170px;">
                            <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                <i class="large material-icons orange-text text-darken-4">settings_backup_restore</i>
                            </div>
                            <div style="width: 0%; float: left;">
                                <div class="card-content">
                                </div>
                                <div class="card-action">
                                    <a href="#">Factory Reset</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s1">
            &nbsp;
        </div>
    </div>
    <div class="row">
        <div class="col s1">
            &nbsp;
        </div>
        <div class="col s2">
            <div id="location-cp-container">
                <div class="row">
                    <div class="col s12 m6">
                        <div class="card small" style="height: 165px; width: 160px;">
                            <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                <i class="large material-icons green-text text-darken-1">location_on</i>
                            </div>
                            <div style="width: 0%; float: left;">

                                <div class="card-content">
                                    <p align="left">To increase Raspberry PI volume remotely.</p>
                                </div>
                                <div class="card-action">
                                    <div class="switch">
                                        <label>
                                            Off
                                            <input type="checkbox">
                                            <span class="lever"></span>
                                            On
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s2">
            <div id="wifi-prem-cp-container">
                <div class="row">
                    <div class="col s12 m6">
                        <div class="card small" style="height: 165px; width: 160px;">
                            <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                <i class="large material-icons lime-text text-darken-1">perm_scan_wifi</i>
                            </div>
                            <div style="width: 0%; float: left;">

                                <div class="card-content">
                                    <p align="left">To increase Raspberry PI volume remotely.</p>
                                </div>
                                <div class="card-action">
                                    <!-- Switch -->
                                    <div class="switch">
                                        <label>
                                            Off
                                            <input checked type="checkbox">
                                            <span class="lever"></span>
                                            On
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s2">
            <div id="videocam-cp-container">
                <div class="row">
                    <div class="col s12 m6">
                        <div class="card small" style="height: 165px; width: 160px;">
                            <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                <i class="large material-icons brown-text text-darken-2">videocam</i>
                            </div>
                            <div style="width: 0%; float: left;">

                                <div class="card-content">
                                    <p align="left">To increase Raspberry PI volume remotely.</p>
                                </div>
                                <div class="card-action">
                                    <!-- Switch -->
                                    <div class="switch">
                                        <label>
                                            Off
                                            <input checked type="checkbox">
                                            <span class="lever"></span>
                                            On
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s2">
            <div id="wifi-cp-container">
                <div class="row">
                    <div class="col s12 m6">
                        <div class="card small" style="height: 165px; width: 160px;">
                            <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                <i class="large material-icons orange-text text-darken-1">portable_wifi_off</i>
                            </div>
                            <div style="width: 0%; float: left;">

                                <div class="card-content">
                                    <p align="left">To increase Raspberry PI volume remotely.</p>
                                </div>
                                <div class="card-action">
                                    <!-- Switch -->
                                    <div class="switch">
                                        <label>
                                            Off
                                            <input type="checkbox">
                                            <span class="lever"></span>
                                            On
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col s2">
            <div id="bluetooth-cp-container">
                <div class="row">
                    <div class="col s12 m6">
                        <div class="card small" style="height: 165px; width: 160px;">
                            <div class="card-image" style="float: left; width: 100%; height: 120px; left: 40px; top: 10px;">
                                <i class="large material-icons blue-text text-lighten-1">settings_bluetooth</i>
                            </div>
                            <div style="width: 0%; float: left;">

                                <div class="card-content">
                                    <p align="left">To increase Raspberry PI volume remotely.</p>
                                </div>
                                <div class="card-action">
                                    <div class="switch">
                                        <label>
                                            Off
                                            <input checked type="checkbox">
                                            <span class="lever"></span>
                                            On
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col s1">
            &nbsp;
        </div>
    </div>
    </div>
    </li>
    <li>
        <div class="collapsible-header"><i class="material-icons">play_for_work</i>Firmware and Software</div>
        <div class="collapsible-body">
            <div class="row">

                <div class="col s12">
                    &nbsp;
                </div>

                <div class="col s1">
                    &nbsp;
                </div>

                <div class="col s10 center-align">
                    <table class="devices-table highlight">
                        <thead>
                        <tr>
                            <th data-field="id">Name</th>
                            <th data-field="version">Version</th>
                            <th data-field="date">Status</th>
                            <th data-field="price">Action</th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td>Python</td>
                            <td>3.5.2</td>
                            <td>
                                <span class="green-text text-lighten-2">INSTALLED</span>
                            </td>
                            <td>
                                <a class="tooltipped sw-update" data-position="right" data-delay="10"
                                   data-tooltip="Un Install"><i class="material-icons red-text text-lighten-2">delete</i></a>
                            </td>
                        </tr>
                        <tr>
                            <td>Pi Camera</td>
                            <td>0.6.3</td>
                            <td>
                                <B class="red-text install-old text-lighten-2">FAILED</B>
                                <span class="green-text install-success text-lighten-2">INSTALLED</span>
                            </td>
                            <td>
                                <a class="tooltipped manage-install install-old sw-update" data-position="right" data-delay="10"
                                   data-tooltip="Re Install"><i class="material-icons green-text text-lighten-2"
                                        >replay</i></a>
                                <a class="tooltipped install-success sw-update" data-position="right" data-delay="10"
                                   data-tooltip="Un Install"><i class="material-icons red-text text-lighten-2">delete</i></a>
                            </td>
                        </tr>
                        <tr>
                            <td>Raspian</td>
                            <td>8 jessie</td>
                            <td>
                                <span class="green-text text-lighten-2">INSTALLED</span>
                            </td>
                            <td>
                                <a class="tooltipped sw-update" data-position="right" data-delay="10"
                                   data-tooltip="Un Install"><i class="material-icons red-text text-lighten-2">delete</i></a>
                            </td>
                        </tr>
                        <tr>
                            <td>Java</td>
                            <td>8.1111</td>
                            <td>
                                <span class="green-text text-lighten-2">INSTALLED</span>
                            </td>
                            <td>
                                <a class="tooltipped sw-update" data-position="right" data-delay="10"
                                   data-tooltip="Un Install"><i class="material-icons red-text text-lighten-2">delete</i></a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="col s1">
                    &nbsp;
                </div>
            </div>
        </div>
    </li>
    <li>
        <div class="collapsible-header"><i class="material-icons">navigation</i>Location</div>
        <div class="collapsible-body">

            <div class="row">
                <div class="col s12">
                    &nbsp;
                </div>
            </div>

            <div class="row">
                <div class="col s.5">
                    &nbsp;
                </div>

                <div class="col s11">
                    <div id="map-sag-container">
                        <iframe src="${pageContext.request.contextPath}/resources/html/maps/map-sag-bengaluru.html"
                                width="100%" height="520" frameborder="0"></iframe>
                    </div>
                </div>

                <div class="col s.5">
                    &nbsp;
                </div>

            </div>
        </div>
    </li>
    </ul>
    </div>
    </div>
    </div>

    <!-- Device Monitoring View -->
    <div class="col s12 device-monitoring-view">
        <div class="row">
            <div class="col s12">
                <h3 class="red-text text-lighten-2">Device Monitoring</h3>
            </div>
            <div class="col s12">
                &nbsp;
                </div>
            <div class="col s1">
                &nbsp;
            </div>
            <div class="col s10">
                <div id="critical-alarm-on-network-container">
                    <iframe
                            src="${pageContext.request.contextPath}/resources/html/charts/critical-alarm-on-network-down-3d-grouping.htm" width="810px" height="420px" frameborder="0"></iframe>
                </div>
            </div>
            <div class="col s1">
                &nbsp;
            </div>
            <div class="col s2">
                &nbsp;
            </div>
            <div class="col s10">
                <div id="device-status-container">
                    <iframe src="${pageContext.request.contextPath}/resources/html/charts/device-status-pie-chart.htm"
                            width="600px"
                            height="430px" frameborder="0"></iframe>
                </div>
            </div>
            <div class="col s1">
                &nbsp;
            </div>
            <div class="col s3">
                <div id="critical-alarm-on-temperature-today-container">
                    <div class="row">
                        <div class="col s12 m6">
                            <div class="card small" style="height: 195px; width: 300px;">
                                <div class="card-image" style="float: left; width: 45%; height: 120px; left: 35px; top: 10px;">
                                    <span class="card-title red-text text-lighten-2 no-padding center-align">Heat</span>
                                    <i class="large material-icons red-text text-darken-2">invert_colors</i>
                                </div>
                                <div style="width: 50%; float: left;">
                                    <div class="card-content">
                                        <p align="left">Abnormal temperature today - attention needed.</p>
                                    </div>
                                    <div class="card-action">
                                        <a href="#">parkingpi@Chennai</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col s7">
                <div id="critical-alarm-on-temperature-container">
                    <iframe
                            src="${pageContext.request.contextPath}/resources/html/charts/critical-alarm-on-temperature-3d-grouping.htm" width="810px" height="420px" frameborder="0"></iframe>
                </div>
            </div>
            <div class="col s1">
                &nbsp;
            </div>
            <div class="col s12">
                &nbsp;
            </div>
        </div>
        <div class="fixed-action-btn">
            <a class="btn-floating btn-large blue">
                <i class="material-icons">menu</i>
            </a>
            <ul>
                <li><a class="tooltipped device-update btn-floating grey"
                       data-position="left" data-tooltip="Firmware Upgrade"><i
                        class="material-icons">system_update_alt</i></a></li>
                <li><a class="tooltipped device-location btn-floating red"
                       data-position="left" data-tooltip="Location"><i
                        class="material-icons">navigation</i></a></li>
                <li><a class="tooltipped device-monitoring btn-floating yellow darken-3"
                       data-position="left" data-tooltip="Monitoring"><i
                        class="material-icons">insert_chart</i></a></li>
                <li><a class="tooltipped device-refresh btn-floating green darken-3"
                       data-position="left" data-tooltip="Refresh"><i
                        class="material-icons">replay</i></a></li>
                <li><a class="tooltipped device-onboard btn-floating green darken-3  modal-trigger" data-target="modal2"
                       data-position="left" data-tooltip="Onboard device"><i
                        class="material-icons">add</i></a></li>
            </ul>
        </div>
    </div>

    <div class="col s12 device-location-view">
        <div class="row">
            <div class="col s12">
                <h3 class="red-text text-lighten-2">Device Locations</h3>
            </div>
            <div class="row">
                <div class="col s.5">
                    &nbsp;
                </div>
                <div class="col s11">
                    <div id="india-map-container">
                        <iframe src="${pageContext.request.contextPath}/resources/html/maps/map-india.htm" width="1230"
                                height="590"
                                frameborder="0"></iframe>
                    </div>
                </div>
                <div class="col s.5">
                    &nbsp;
                </div>
            </div>
            <div class="row">
                <div class="col s.5">
                    &nbsp;
                </div>
                <div class="col s11">
                    <div id="india-map-plus-6th-locationcontainer">
                        <iframe src="${pageContext.request.contextPath}/resources/html/maps/map-india-plus-6th-location.htm" width="1230"
                                height="590"
                                frameborder="0"></iframe>
                    </div>
                </div>
                <div class="col s.5">
                    &nbsp;
                </div>
            </div>
        </div>
        <div class="fixed-action-btn">
            <a class="btn-floating btn-large blue">
                <i class="material-icons">menu</i>
            </a>
            <ul>
                <li><a class="tooltipped device-update btn-floating grey"
                       data-position="left" data-tooltip="Firmware Upgrade"><i
                        class="material-icons">system_update_alt</i></a></li>
                <li><a class="tooltipped device-location btn-floating red"
                       data-position="left" data-tooltip="Location"><i
                        class="material-icons">navigation</i></a></li>
                <li><a class="tooltipped device-monitoring btn-floating yellow darken-3"
                       data-position="left" data-tooltip="Monitoring"><i
                        class="material-icons">insert_chart</i></a></li>
                <li><a class="tooltipped device-refresh btn-floating green darken-3"
                       data-position="left" data-tooltip="Refresh"><i
                        class="material-icons">replay</i></a></li>
                <li><a class="tooltipped device-onboard btn-floating green darken-3  modal-trigger" data-target="modal2"
                       data-position="left" data-tooltip="Onboard device"><i
                        class="material-icons">add</i></a></li>
            </ul>
        </div>
    </div>
    <div class="col s12 management-device-view">
        <div class="row">
            <div class="col s12">
                <h3 class="red-text text-lighten-2">Available Device Types</h3>
            </div>
            <div class="col s12">&nbsp;</div>
            <div class="col s12">
                <ul class="collection">
                    <li href="#!" class="collection-item avatar">
                        <img src="${pageContext.request.contextPath}/resources/img/rasp.png" alt="" class="circle">
                        <span class="title">Raspberry Pi</span>
                        <p>
                            <p>Vendor: Raspberry PI Foundation</p>
                            <p>Description: The Raspberry Pi is a series of credit
                                card-sized single-board computers developed in the United Kingdom.</p>
                        <div>
                            <a href="#!" class="secondary-content"><i class="material-icons red-text text-lighten-2">delete</i>&nbsp;&nbsp;</a>
                            <a href="#!" class="secondary-content edit-device"><i class="material-icons">mode_edit</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                        </div>
                    </li>
                    <li href="#!" class="collection-item avatar">
                        <img src="${pageContext.request.contextPath}/resources/img/arduino.png" alt=""
                             class="circle">
                        <span class="title">Arduino</span>
                        <p>
                        <p>Vendor: Arduino Foundation</p>
                        <p>Description: Arduino is an open-source project that created microcontroller-based kits
                            for building digital devices and interactive objects.</p>
                        <div>
                            <a href="#!" class="secondary-content"><i class="material-icons red-text text-lighten-2">delete</i>&nbsp;&nbsp;</a>
                            <a href="#!" class="secondary-content edit-device"><i class="material-icons">mode_edit</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                        </div>
                    </li>
                    <li href="#!" class="collection-item avatar">
                        <img src="${pageContext.request.contextPath}/resources/img/banana-pi.jpg" alt=""
                             class="circle">
                        <span class="title">Banana Pi</span>
                        <p>
                        <p>Vendor: Banana PI Foundation</p>
                        <p>Description: The BPI open source computer product line contains boards of all different powers and functions. </p>
                        <div>
                            <a href="#!" class="secondary-content"><i class="material-icons red-text text-lighten-2">delete</i>&nbsp;&nbsp;</a>
                            <a href="#!" class="secondary-content edit-device"><i class="material-icons">mode_edit</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                        </div>
                    </li>
                    <li href="#!" class="collection-item avatar">
                        <img src="${pageContext.request.contextPath}/resources/img/BeagleBoardCompatible.png"
                             alt=""
                             class="circle">
                        <span class="title">BeagleBone Black</span>
                        <p>
                        <p>Vendor: BeagleBoard Foundation</p>
                        <p>Description: The BeagleBoard is a low-power open-source hardware single-board computer
                            produced by Texas Instruments in association with Digi-Key</p>
                        <div>
                            <a href="#!" class="secondary-content"><i class="material-icons red-text text-lighten-2">delete</i>&nbsp;&nbsp;</a>
                            <a href="#!" class="secondary-content edit-device"><i class="material-icons">mode_edit</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                        </div>
                    </li>
                    <li href="#!" class="collection-item avatar">
                        <img src="${pageContext.request.contextPath}/resources/img/Qualcomm_logo.jpg" alt=""
                             class="circle">
                        <span class="title">Qualcomm GT202</span>
                        <p>
                        <p>Vendor: Qualcomm Incorporation</p>
                        <p>Description: The GT202 “KIT" consists of a GT202 module and GT202 adaptor board that is
                            designed to mate with industry standard Arduino compatible MCU development platforms.</p>
                        <div>
                            <a href="#!" class="secondary-content"><i class="material-icons red-text text-lighten-2">delete</i>&nbsp;&nbsp;</a>
                            <a href="#!" class="secondary-content edit-device"><i class="material-icons">mode_edit</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                        </div>
                    </li>
                </ul>
                <ul class="pagination right">
                    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
                    <li class="active"><a href="#!">1</a></li>
                    <li class="waves-effect"><a href="#!">2</a></li>
                    <li class="waves-effect"><a href="#!">3</a></li>
                    <li class="waves-effect"><a href="#!">4</a></li>
                    <li class="waves-effect"><a href="#!">5</a></li>
                    <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Edit  -->
    <div class="col s12 edit-device-view">
        <div class="row">
            <div class="col s12">
                <h3 class="header">Raspberry Pi</h3>
            </div>
            <div class="col s12">&nbsp;</div>
            <div class="col s12">
                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header active"><i class="material-icons">info_outline</i>Information</div>
                        <div class="collapsible-body">
                            <div class="row">
                                <div class="col s12">&nbsp;</div>
                            </div>
                            <div class="row">
                                <div class="col s1">&nbsp;</div>
                                <div class="col s10">
                                    <div class="row">
                                        <div class="input-field col s4">
                                            <input id="attribute1" type="text"  class="validate" value="Serial Number">
                                            <label for="attribute1" class="active">Attribute Name</label>
                                        </div>
                                        <div class="col s1">&nbsp;&nbsp;</div>
                                        <div class="col s4">
                                            <label>Materialize Select</label>
                                            <select>
                                                <option value="" disabled selected>Select Fruit</option>
                                                <option value="1">Mango</option>
                                                <option value="2">Orange</option>
                                                <option value="3">Apple</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s4">
                                            <input id="attribute2" type="text"  class="validate" value="CMMI Number">
                                            <label for="attribute2" class="active">Attribute Name</label>
                                        </div>
                                        <div class="col s1">&nbsp;&nbsp;</div>
                                        <div class="input-field col s4">
                                            <select id="attribute_type2">
                                                <option value="" disabled selected>Choose Attribute Type</option>
                                                <option value="1">Number</option>
                                                <option value="2">Text</option>
                                                <option value="3">Random</option>
                                            </select>
                                            <label for="attribute_type2">Attribute Type</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s4">
                                            <input id="attribute3" type="text"  class="validate" value="Auth Code">
                                            <label for="attribute3" class="active">Attribute Name</label>
                                        </div>
                                        <div class="col s1">&nbsp;&nbsp;</div>
                                        <div class="input-field col s4">
                                            <select id="attribute_type3">
                                                <option value="" disabled selected>Choose Attribute Type</option>
                                                <option value="1">Number</option>
                                                <option value="2">Text</option>
                                                <option value="3">Random</option>
                                            </select>
                                            <label for="attribute_type3">Attribute Type</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s4">
                                            <input id="attribute4" type="text"  class="validate"
                                                   value="Manufactured Date">
                                            <label for="attribute4" class="active">Attribute Name</label>
                                        </div>
                                        <div class="col s1">&nbsp;&nbsp;</div>
                                        <div class="input-field col s4">
                                            <select id="attribute_type4">
                                                <option value="" disabled selected>Choose Attribute Type</option>
                                                <option value="1">Number</option>
                                                <option value="2">Text</option>
                                                <option value="3">Random</option>
                                            </select>
                                            <label for="attribute_type4">Attribute Type</label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col s12">
                                            <a class="btn-floating btn-large waves-effect waves-light right"><i class="material-icons">add</i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col s1">&nbsp;</div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">add_alert</i>Alarms</div>
                        <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                    </li>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">play_for_work</i>Firmware and Software</div>
                        <div class="collapsible-body"><p>Lorem ipsum dolor sit amet.</p></div>
                    </li>
                </ul>
            </div>
            <div class="col s12">
                <a class="waves-effect waves-light btn right">Update</a>
                <a class="waves-effect waves-light btn-flat right">Cancel</a>
            </div>
        </div>
    </div>

    <div class="col s12 management-controlpanel-view">
    </div>

    <div class="col s12 management-monitoring-view">
        <div class="row">
            <div class="col s12">
                <h3 class="red-text text-lighten-2">Historical CPU Usage Chart</h3>
            </div>
            <div id="history-cpu-container">
                <iframe src="${pageContext.request.contextPath}/resources/html/charts/historical-cpu-usage-chart.htm"
                        height="450px
                " width="950" frameborder="1" name="historical-cpu-usage-chart" ></iframe>
            </div>

            <br/>
        </div>
    </div>

    <div class="col s12 management-firmware-view">
        <div class="row">
            <div class="col s12">
                <h3 class="red-text text-lighten-2">Firmware Repository</h3>
            </div>

            <div class="col s12">
                &nbsp;
            </div>

            <div class="col s12">
                <ul class="collection">
                    <li class="collection-item avatar">
                        <img src="${pageContext.request.contextPath}/resources/img/java-icon-edited.png" alt=""
                             class="circle">
                        <span class="title">Java</span>

                        <p>Java is a programming language and computing platform first released by Sun Microsystems in
                            1995.<br/>
                            Version <span class="blue-text">8.111</span> Stable
                        </p>
                        <a href="#!" class="secondary-content"><i
                                class="material-icons red-text text-lighten-2">delete</i></a>
                        <a href="#!" class="secondary-content"><i class="material-icons">mode_edit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</i></a>
                    </li>
                    <li class="collection-item avatar">
                        <img src="${pageContext.request.contextPath}/resources/img/python.png" alt="" class="circle">
                        <span class="title">Python</span>

                        <p>Python is an interpreted, object-oriented, high-level programming language with dynamic
                            semantics. <br/>
                            Version <span class="blue-text">3.5.2</span> Stable
                        </p>
                        <a href="#!" class="secondary-content"><i
                                class="material-icons red-text text-lighten-2">delete</i></a>
                        <a href="#!" class="secondary-content"><i class="material-icons">mode_edit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</i></a>


                    </li>
                    <li class="collection-item avatar">
                        <img src="${pageContext.request.contextPath}/resources/img/perl.png" alt="" class="circle">
                        <span class="title">Perl</span>

                        <p>Perl 5 is a highly capable, feature-rich programming language with over 29 years of development <br/>
                            Version <span class="blue-text">2.7.11</span> Stable
                        </p>
                        <a href="#!" class="secondary-content"><i
                                class="material-icons red-text text-lighten-2">delete</i></a>
                        <a href="#!" class="secondary-content"><i class="material-icons">mode_edit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</i></a>
                    </li>

                    <li class="collection-item avatar">
                        <img src="${pageContext.request.contextPath}/resources/img/raspian.png" alt="" class="circle">
                        <span class="title">Raspian</span>

                        <p>Raspbian is a free operating system based on Debian optimized for the Raspberry Pi hardware.
                            An operating system is the set of basic programs and utilities that make your Raspberry Pi
                            run.<br/>
                            Version <span class="blue-text">8 jessie</span> Stable
                        </p>
                        <a href="#!" class="secondary-content"><i
                                class="material-icons red-text text-lighten-2">delete</i></a>
                        <a href="#!" class="secondary-content"><i class="material-icons">mode_edit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</i></a>
                    </li>

                    <li class="collection-item avatar">
                        <img src="${pageContext.request.contextPath}/resources/img/picamera.jpg" alt="" class="circle">
                        <span class="title">PI Camera</span>

                        <p>This package provides a pure Python interface to the Raspberry Pi camera module for Python 2.7<br/>
                            Version <span class="blue-text">0.6.3</span> Stable
                        </p>
                        <a href="#!" class="secondary-content"><i
                                class="material-icons red-text text-lighten-2">delete</i></a>
                        <a href="#!" class="secondary-content"><i class="material-icons">mode_edit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</i></a>
                    </li>
                </ul>

            </div>

            <div class="col s12">
                <ul class="pagination right">
                    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
                    <li class="active"><a href="#!">1</a></li>
                    <li class="waves-effect"><a href="#!">2</a></li>
                    <li class="waves-effect"><a href="#!">3</a></li>
                    <li class="waves-effect"><a href="#!">4</a></li>
                    <li class="waves-effect"><a href="#!">5</a></li>
                    <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
                </ul>
            </div>

            <div class="row right">
                <a class="btn-floating btn-large waves-effect waves-light blue modal-trigger" data-target="modal1"><i
                        class="material-icons">add</i></a>
            </div>


            <!-- Modal Structure -->
            <div id="modal1" class="modal modal-fixed-footer">
                <div class="modal-content">
                    <h4>&nbsp;&nbsp;&nbsp;&nbsp;Add Artifact</h4>

                    <div class="col s12">
                        &nbsp;
                    </div>

                    <div class="row">
                        <div class="col s1">
                            &nbsp;
                        </div>

                        <div class="col s10">
                            <div class="row">
                                <form>
                                    <div class="input-field col s6">
                                        <input id="last_name" type="text" class="validate">
                                        <label for="name">Name</label>
                                    </div>

                                    <div class="input-field col s6">
                                        <input id="last_name" type="text" class="validate">
                                        <label for="last_name">Version</label>
                                    </div>

                                    <div class="input-field col s12">
                                        <textarea id="textarea1" class="materialize-textarea"></textarea>
                                        <label for="textarea1">Description</label>
                                    </div>

                                </form>
                            </div>

                            <div class="row">
                                <form action="#">
                                    <div class="file-field input-field s12">
                                        <div class="btn">
                                            <span>File</span>
                                            <input type="file" multiple>
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" type="text"
                                                   placeholder="Upload one or more files">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="col s1">
                            &nbsp;
                        </div>

                    </div>
                </div>

                <div class="modal-footer">
                    <a href="#!" class="modal-action modal-close waves-effect waves-light btn">Add</a>
                    <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat ">Cancel</a>
                </div>
            </div>
            <script>
                $(document).ready(function () {
                    $('.modal-trigger').leanModal();
                });
            </script>
        </div>
    </div>
</div>

    <div class="col s12 device-update-view">
        This is the Device Update View........................................................
    </div>

</div>
</body>
</html>