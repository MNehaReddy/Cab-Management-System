<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LocationSearch.aspx.cs" Inherits="Transportation.LocationSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title></title>
    
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
<script type="text/javascript">
    var source, destination;
    var directionsDisplay;
    var directionsService = new google.maps.DirectionsService();
    google.maps.event.addDomListener(window, 'load', function () {
        //if (!isPostBack) {
            new google.maps.places.SearchBox(document.getElementById('txtSource'));
            new google.maps.places.SearchBox(document.getElementById('txtDestination'));
            directionsDisplay = new google.maps.DirectionsRenderer({ 'draggable': true });
        //}
    });
    function isPostBack() { //function to check if page is a postback-ed one
        return document.getElementById('_ispostback').value == 'True';
    }
    function GetRoute() {
        var mumbai = new google.maps.LatLng(18.9750, 72.8258);
        var mapOptions = {
            zoom: 7,
            center: mumbai
        };
        map = new google.maps.Map(document.getElementById('dvMap'), mapOptions);
        directionsDisplay.setMap(map);
        directionsDisplay.setPanel(document.getElementById('dvPanel'));

        //*********DIRECTIONS AND ROUTE**********************//
        source = document.getElementById("txtSource").value;
        destination = document.getElementById("txtDestination").value;

        var request = {
            origin: source,
            destination: destination,
            travelMode: google.maps.TravelMode.DRIVING
        };
        directionsService.route(request, function (response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
            }
        });

        //*********DISTANCE AND DURATION**********************//
        var service = new google.maps.DistanceMatrixService();
        service.getDistanceMatrix({
            origins: [source],
            destinations: [destination],
            travelMode: google.maps.TravelMode.DRIVING,
            unitSystem: google.maps.UnitSystem.METRIC,
            avoidHighways: false,
            avoidTolls: false
        }, function (response, status) {
            if (status == google.maps.DistanceMatrixStatus.OK && response.rows[0].elements[0].status != "ZERO_RESULTS") {
                var distance = response.rows[0].elements[0].distance.text;
                var duration = response.rows[0].elements[0].duration.text;
                var dvDistance = document.getElementById("dvDistance");
                dvDistance.innerHTML = "";
                dvDistance.innerHTML += "Distance: " + distance + "<br />";
                document.getElementById("dist").value = distance;
                dvDistance.innerHTML += "Duration:" + duration;

            } else {
                alert("Unable to find the distance via road.");
            }
        });
    }
</script>
</head>
<body style="background-color:#666666">
    <form id="form1" runat="server">
        <div align="center">
            <asp:Image ID="Image2" ImageUrl="~/neha/Images/14296294645599.jpg" runat="server" Height="189px" Width="70%" />


        </div>
        <div>

        </div>
    <div>
   <%-- <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15226.29746675145!2d78.45808938465576!3d17.432202350000008!3m2!1i1024!2i768!4f13.1!4m3!3e6!4m0!4m0!5e0!3m2!1sen!2sin!4v1448863196550" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
   --%> 
        <table border="0" cellpadding="0" cellspacing="3" runat="server">
<tr>
    
    <td align="right">
     <asp:LinkButton ID="lnklogout" runat="server" Text="LogOut" OnClick="lnklogout_Click" style="z-index: 1; left: 932px; top: 290px; position: absolute; color: #000000"></asp:LinkButton>
    </td>
    <td style="font-weight: 700">
        Source:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" id="txtSource" value="" style="width: 200px" runat="server"/>
        &nbsp; 
        <br />
        <br />
        Destination:&nbsp;&nbsp;&nbsp; <input type="text" id="txtDestination" value="" style="width: 200px" runat="server"/>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" value="Get Route" onclick="GetRoute()" />
        <asp:Button ID="btnSearch" Text="search Cabs" runat="server" OnClick="btnSearch_Click" />
        <hr />
    </td>
</tr>
<tr>
    <td colspan="2">
        <div id="dvDistance" runat="server">
            
        </div>
        <input type="hidden" runat="server" id="dist" />
    </td>
</tr>
<tr>
    <td>
        <div id="dvMap" style="width: 500px; height: 500px" runat="server">
        </div>
    </td>
    <td>
        <div id="dvPanel" style="width: 500px; height: 500px" runat="server">
        </div>
    </td>
</tr>
</table>
    </div>
     
    </form>
</body>
</html>
