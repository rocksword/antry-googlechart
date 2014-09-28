<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Time Line</title>
<script type="text/javascript" src="//www.google.com/jsapi"></script>
<script type="text/javascript">
    google.load('visualization', '1', {
        packages : [ 'annotatedtimeline' ]
    });
    function drawVisualization() {
        var data = new google.visualization.DataTable();
        data.addColumn('date', 'Date');
        data.addColumn('number', 'Sold Pencils');
        data.addColumn('string', 'title1');
        data.addColumn('string', 'text1');
        data.addColumn('number', 'Sold Pens');
        data.addColumn('string', 'title2');
        data.addColumn('string', 'text2');
        data.addRows([ [ new Date(2008, 1, 1), 30000, null, null, 40645, null, null ],
                [ new Date(2008, 1, 2), 14045, null, null, 20374, null, null ],
                [ new Date(2008, 1, 3), 55022, null, null, 50766, null, null ],
                [ new Date(2008, 1, 4), 75284, null, null, 14334, 'Out of Stock', 'Ran out of stock on pens at 4pm' ],
                [ new Date(2008, 1, 5), 41476, 'Bought Pens', 'Bought 200k pens', 66467, null, null ],
                [ new Date(2008, 1, 6), 33322, null, null, 39463, null, null ] ]);

        var annotatedtimeline = new google.visualization.AnnotatedTimeLine(document.getElementById('visualization'));
        annotatedtimeline.draw(data, {
            'displayAnnotations' : true
        });
    }

    google.setOnLoadCallback(drawVisualization);
</script>
</head>
<body style="font-family: Arial; border: 0 none;">
    <div id="visualization" style="width: 1200px; height: 800px;"></div>
</body>
</html>