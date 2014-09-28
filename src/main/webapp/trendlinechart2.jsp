<html>
<head>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
    google.load("visualization", "1", {
        packages : [ "corechart" ]
    });
    google.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = google.visualization.arrayToDataTable([ [ 'X', 'Y' ], [ 0, 4 ], [ 1, 2 ], [ 2, 4 ], [ 3, 6 ],
                [ 4, 4 ] ]);

        var options = {
            legend : 'none',
            hAxis : {
                ticks : []
            },
            vAxis : {
                ticks : []
            },
            colors : [ '#703583' ],
            pointShape : 'diamond',
            trendlines : {
                0 : {
                    type : 'polynomial',
                    degree : 3,
                    visibleInLegend : true,
                    pointSize : 20, // Set the size of the trendline dots.
                    opacity : 0.1
                }
            }
        };

        var chart = new google.visualization.ScatterChart(document.getElementById('chart_pointSize'));

        chart.draw(data, options);
    }
</script>
</head>
<body>
  <div id="chart_pointSize" style="width: 900px; height: 500px;"></div>
</body>
</html>