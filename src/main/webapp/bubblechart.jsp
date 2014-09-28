<html>
<head>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
    google.load("visualization", "1", {
        packages : [ "corechart" ]
    });
    google.setOnLoadCallback(drawSeriesChart);

    function drawSeriesChart() {

        var data = google.visualization.arrayToDataTable([
                [ 'ID', 'Life Expectancy', 'Fertility Rate', 'Region', 'Population' ],
                [ 'CAN', 80.66, 1.67, 'North America', 33739900 ], [ 'DEU', 79.84, 1.36, 'Europe', 81902307 ],
                [ 'DNK', 78.6, 1.84, 'Europe', 5523095 ], [ 'EGY', 72.73, 2.78, 'Middle East', 79716203 ],
                [ 'GBR', 80.05, 2, 'Europe', 61801570 ], [ 'IRN', 72.49, 1.7, 'Middle East', 73137148 ],
                [ 'IRQ', 68.09, 4.77, 'Middle East', 31090763 ], [ 'ISR', 81.55, 2.96, 'Middle East', 7485600 ],
                [ 'RUS', 68.6, 1.54, 'Europe', 141850000 ], [ 'USA', 78.09, 2.05, 'North America', 307007000 ] ]);

        var options = {
            title : 'Correlation between life expectancy, fertility rate and population of some world countries (2010)',
            hAxis : {
                title : 'Life Expectancy'
            },
            vAxis : {
                title : 'Fertility Rate'
            },
            bubble : {
                textStyle : {
                    fontSize : 11
                }
            }
        };

        var chart = new google.visualization.BubbleChart(document.getElementById('series_chart_div'));
        chart.draw(data, options);
    }

    function drawGradientColorChart() {
        var data = google.visualization.arrayToDataTable([ [ 'ID', 'X', 'Y', 'Temperature' ], [ '', 80, 167, 120 ],
                [ '', 79, 136, 130 ], [ '', 78, 184, 50 ], [ '', 72, 278, 230 ], [ '', 81, 200, 210 ],
                [ '', 72, 170, 100 ], [ '', 68, 477, 80 ] ]);

        var options = {
            colorAxis : {
                colors : [ 'yellow', 'red' ]
            }
        };

        var chart = new google.visualization.BubbleChart(document.getElementById('gradient_chart_div'));
        chart.draw(data, options);
    }
</script>
</head>
<body>
  <div id="series_chart_div" style="width: 900px; height: 500px;"></div>
</body>
</html>