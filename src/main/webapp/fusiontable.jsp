<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Google Visualization API Sample</title>
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript">
    google.load('visualization', '1', {
        packages : [ 'corechart' ]
    });
    function drawVisualization() {
        var queryText = encodeURIComponent("SELECT Year, Austria, Bulgaria, Denmark, Greece FROM 18k8XNgsc5ktLP2EHMCpoKIwymsVlzVV-xVuceA");
        google.visualization.drawChart({
            "containerId" : "visualization_div",
            "dataSourceUrl" : 'https://www.google.com/fusiontables/gvizdata?tq=',
            "query" : "SELECT Year, Austria, Bulgaria, Denmark, Greece FROM 18k8XNgsc5ktLP2EHMCpoKIwymsVlzVV-xVuceA",
            "refreshInterval" : 5,
            "chartType" : "BarChart",
            "options" : {
                "title" : "Yearly Coffee Consumption by Country",
                "vAxis" : {
                    "title" : "Year"
                },
                "hAxis" : {
                    "title" : "Cups"
                }
            }
        });
    }

    google.setOnLoadCallback(drawVisualization);
</script>
</head>
<body style="font-family: Arial; border: 0 none;">
  <div id="visualization_div" style="width: 600px; height: 400px;"></div>
</body>
</html>