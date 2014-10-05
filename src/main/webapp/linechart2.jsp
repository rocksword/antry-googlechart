<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Line Chart</title>
<script type="text/javascript" src="//www.google.com/jsapi"></script>
<script type="text/javascript">
    google.load('visualization', '1', {
        packages : [ 'corechart', 'linechart' ]
    });
</script>
<script type="text/javascript">
    google.setOnLoadCallback(drawVisualization);
    var chart;
    function drawVisualization() {
        // Create and populate the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Year');
        data.addColumn('number', '销售');
        data.addColumn('number', '利润');
        data.addRows(4);
        data.setValue(0, 0, '2004');
        data.setValue(0, 1, 1000);
        data.setValue(0, 2, 400);
        data.setValue(1, 0, '2005');
        data.setValue(1, 1, 1170);
        data.setValue(1, 2, 460);
        data.setValue(2, 0, '2006');
        data.setValue(2, 1, 860);
        data.setValue(2, 2, 580);
        data.setValue(3, 0, '2007');
        data.setValue(3, 1, 1030);
        data.setValue(3, 2, 540);

        chart = new google.visualization.LineChart(document.getElementById('visualization'));
        chart.draw(data, {
            width : 1024,
            height : 300,
            tooltipFontSize : 14,
            max : 1250,
            smoothLine : 'true',
            pointSize : 6,
            legend : 'bottom',
            titleFontSize : 18,
            title : '板卷厂综合和一次合格率'
        });

        google.visualization.events.addListener(chart, 'onmouseover', barMouseOver);
        google.visualization.events.addListener(chart, 'onmouseout', barMouseOut);
    }

    // Add our over/out handlers.
    function barMouseOver(e) {
        chart.setSelection([ e ]);
    }

    function barMouseOut(e) {
        chart.setSelection([ {
            'row' : null,
            'column' : null
        } ]);
    }
</script>
</head>
<body style="font-family: Arial; border: 0 none;">
    <div id="visualization" style="width: 100px; height: 300px;"></div>
</body>
</html>