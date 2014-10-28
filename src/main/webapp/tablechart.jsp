<html>
<head>
<title>Google Table Chart</title>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
    google.load("visualization", "1", {
        packages : [ "table" ]
    });
    google.setOnLoadCallback(onload);

    function onload() {
        drawTable();
        drawTable_ArrowFormat();
        drawTable_BarFormat();
        drawTable_ColorFormat();
        drawTable_DateFormat();
        drawTable_NumberFormat();
    }

    function drawTable() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('number', 'Salary');
        data.addColumn('boolean', 'Full Time Employee');
        data.addRows([ [ 'Mike', {
            v : 10000,
            f : '$10,000'
        }, true ], [ 'Jim', {
            v : 8000,
            f : '$8,000'
        }, false ], [ 'Alice', {
            v : 12500,
            f : '$12,500'
        }, true ], [ 'Bob', {
            v : 7000,
            f : '$7,000'
        }, true ] ]);
        var table = new google.visualization.Table(document.getElementById('table_div'));
        table.draw(data, {
            showRowNumber : true
        });
    }

    function drawTable_ArrowFormat() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Department');
        data.addColumn('number', 'Revenues Change');
        data.addRows([ [ 'Shoes', {
            v : 12,
            f : '12.0%'
        } ], [ 'Sports', {
            v : -7.3,
            f : '-7.3%'
        } ], [ 'Toys', {
            v : 0,
            f : '0%'
        } ], [ 'Electronics', {
            v : -2.1,
            f : '-2.1%'
        } ], [ 'Food', {
            v : 22,
            f : '22.0%'
        } ] ]);

        var table = new google.visualization.Table(document.getElementById('arrowformat_div'));

        var formatter = new google.visualization.ArrowFormat();
        formatter.format(data, 1); // Apply formatter to second column

        table.draw(data, {
            allowHtml : true,
            showRowNumber : true
        });
    }
    function drawTable_BarFormat() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Department');
        data.addColumn('number', 'Revenues');
        data.addRows([ [ 'Shoes', 10700 ], [ 'Sports', -15400 ], [ 'Toys', 12500 ], [ 'Electronics', -2100 ],
                [ 'Food', 22600 ], [ 'Art', 1100 ] ]);

        var table = new google.visualization.Table(document.getElementById('barformat_div'));

        var formatter = new google.visualization.BarFormat({
            width : 120
        });
        formatter.format(data, 1); // Apply formatter to second column

        table.draw(data, {
            allowHtml : true,
            showRowNumber : true
        });
    }

    function drawTable_ColorFormat() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Department');
        data.addColumn('number', 'Revenues');
        data.addRows([ [ 'Shoes', 10700 ], [ 'Sports', -15400 ], [ 'Toys', 12500 ], [ 'Electronics', -2100 ],
                [ 'Food', 22600 ], [ 'Art', 1100 ] ]);

        var table = new google.visualization.Table(document.getElementById('colorformat_div'));

        var formatter = new google.visualization.ColorFormat();
        formatter.addRange(-20000, 0, 'white', 'orange');
        formatter.addRange(20000, null, 'red', '#33ff33');
        formatter.format(data, 1); // Apply formatter to second column

        table.draw(data, {
            allowHtml : true,
            showRowNumber : true
        });
    }

    function drawTable_DateFormat() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Employee Name');
        data.addColumn('date', 'Start Date (Long)');
        data.addColumn('date', 'Start Date (Medium)');
        data.addColumn('date', 'Start Date (Short)');
        data.addRows([
                [ 'Mike', new Date(2008, 1, 28, 0, 31, 26), new Date(2008, 1, 28, 0, 31, 26),
                        new Date(2008, 1, 28, 0, 31, 26) ],
                [ 'Bob', new Date(2007, 5, 1, 0), new Date(2007, 5, 1, 0), new Date(2007, 5, 1, 0) ],
                [ 'Alice', new Date(2006, 7, 16), new Date(2006, 7, 16), new Date(2006, 7, 16) ] ]);

        // Create three formatters in three styles.
        var formatter_long = new google.visualization.DateFormat({
            formatType : 'long'
        });
        var formatter_medium = new google.visualization.DateFormat({
            formatType : 'medium'
        });
        var formatter_short = new google.visualization.DateFormat({
            formatType : 'short'
        });

        // Reformat our data.
        formatter_long.format(data, 1);
        formatter_medium.format(data, 2);
        formatter_short.format(data, 3);

        // Draw our data
        var table = new google.visualization.Table(document.getElementById('dateformat_div'));
        table.draw(data, {
            showRowNumber : true
        });
    }

    function drawTable_NumberFormat() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Department');
        data.addColumn('number', 'Revenues');
        data.addRows([ [ 'Shoes', 10700 ], [ 'Sports', -15400 ], [ 'Toys', 12500 ], [ 'Electronics', -2100 ],
                [ 'Food', 22600 ], [ 'Art', 1100 ] ]);

        var table = new google.visualization.Table(document.getElementById('numberformat_div'));

        var formatter = new google.visualization.NumberFormat({
            prefix : '$',
            negativeColor : 'red',
            negativeParens : true
        });
        formatter.format(data, 1); // Apply formatter to second column

        table.draw(data, {
            allowHtml : true,
            showRowNumber : true
        });
    }

    function drawTable_PatternFormat() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Name');
        data.addColumn('string', 'Email');
        data.addRows([ [ 'John Lennon', 'john@beatles.co.uk' ], [ 'Paul McCartney', 'paul@beatles.co.uk' ],
                [ 'George Harrison', 'george@beatles.co.uk' ], [ 'Ringo Starr', 'ringo@beatles.co.uk' ] ]);

        var table = new google.visualization.Table(document.getElementById('patternformat_div'));

        var formatter = new google.visualization.PatternFormat('<a href="mailto:{1}">{0}</a>');
        // Apply formatter and set the formatted value of the first column.
        formatter.format(data, [ 0, 1 ]);

        var view = new google.visualization.DataView(data);
        view.setColumns([ 0 ]); // Create a view with the first column only.

        table.draw(view, {
            allowHtml : true,
            showRowNumber : true
        });
    }
</script>
</head>
<body>
  <h1>Table</h1>
  <div id="table_div"></div>
  <h1>Bar format</h1>
  <div id="barformat_div"></div>
  <h1>Arrow format</h1>
  <div id="arrowformat_div"></div>
  <h1>Color format</h1>
  <div id="colorformat_div"></div>
  <h1>Date format</h1>
  <div id="dateformat_div"></div>
  <h1>Number format</h1>
  <div id="numberformat_div"></div>
  <h1>Pattern format</h1>
  <div id="patternformat_div"></div>
</body>
</html>