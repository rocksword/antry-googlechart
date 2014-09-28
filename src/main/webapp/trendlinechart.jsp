<html>
<head>
<script type="text/javascript"
  src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1','packages':['corechart']}]}"></script>

<script type="text/javascript">
    google.setOnLoadCallback(drawChart);
    function drawChart() {
        var data = google.visualization.arrayToDataTable([ [ 'Age', 'Weight' ], [ 8, 12 ], [ 4, 5.5 ], [ 11, 14 ],
                [ 4, 5 ], [ 3, 3.5 ], [ 6.5, 7 ] ]);

        var options = {
            title : 'Age vs. Weight comparison',
            legend : 'none',
            crosshair : {
                trigger : 'both',
                orientation : 'both'
            },
            trendlines : {
                0 : {
                    type : 'polynomial',
                    degree : 3,
                    visibleInLegend : true,
                }
            }
        };

        var chart = new google.visualization.ScatterChart(document.getElementById('polynomial2_div'));
        chart.draw(data, options);
    }
</script>
</head>
<body>
  <div id='polynomial2_div' style='width: 900px; height: 500px;'></div>
</body>
</html>