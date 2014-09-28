<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Area Chart</title>
<script type="text/javascript" src="//www.google.com/jsapi"></script>
<script type="text/javascript">
    google.load('visualization', '1', {
        packages : [ 'corechart' ]
    });
</script>
<script type="text/javascript">
    function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
                [ 'Month', 'Bolivia', 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda' ],
                [ '2004/05', 165, 938, 522, 998, 450 ], [ '2005/06', 135, 1120, 599, 1268, 288 ],
                [ '2006/07', 157, 1167, 587, 807, 397 ], [ '2007/08', 139, 1110, 615, 968, 215 ],
                [ '2008/09', 136, 691, 629, 1026, 366 ] ]);

        // Create and draw the visualization.
        var ac = new google.visualization.AreaChart(document.getElementById('visualization'));
        ac.draw(data, {
            title : 'Monthly Coffee Production by Country',
            isStacked : true,
            width : 1200,
            height : 800,
            vAxis : {
                title : "Cups"
            },
            hAxis : {
                title : "Month"
            }
        });
    }

    google.setOnLoadCallback(drawVisualization);
</script>
</head>
<body style="font-family: Arial; border: 0 none;">
    <div id="visualization" style="width: 1200px; height: 800px;"></div>
</body>
</html>