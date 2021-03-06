<html>
<head>
<script type="text/javascript"
  src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1.1','packages':['sankey']}]}">
    
</script>

<div id="sankey_basic" style="width: 900px; height: 300px;"></div>

<script type="text/javascript">
    google.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'From');
        data.addColumn('string', 'To');
        data.addColumn('number', 'Weight');
        data.addRows([ [ 'A', 'X', 5 ], [ 'A', 'Y', 7 ], [ 'A', 'Z', 6 ], [ 'B', 'X', 2 ], [ 'B', 'Y', 9 ],
                [ 'B', 'Z', 4 ] ]);

        // Set chart options
        var options = {
            width : 600,
        };

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.Sankey(document.getElementById('sankey_basic'));
        chart.draw(data, options);
    }
</script>
</head>
</html>