<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 
			src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load('current', {'packages' : [ 'bar' ]});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		data = new google.visualization.DataTable();
		data.addColumn('string', '년도별');
		data.addColumn('number', 'test01');
		data.addColumn('number', 'test02');
		data.addColumn('number', 'test03');
		data.addRow(['1월' ,1000, 895 ,915]);

		options = {
			chart : {
				title : "main title",
				subtitle : 'sub title',
			}
		}
		chart = new google.charts.Bar(document.getElementById('columnchart_material'));
		chart.draw(data, google.charts.Bar.convertOptions(options));
	}

     // Load the Visualization API and the corechart package.
     google.charts.load('current', {'packages':['corechart']});

     // Set a callback to run when the Google Visualization API is loaded.
     google.charts.setOnLoadCallback(drawChart);

     // Callback that creates and populates a data table,
     // instantiates the pie chart, passes in the data and
     // draws it.
     function drawChart() {

       // Create the data table.
       var data = new google.visualization.DataTable();
       data.addColumn('string', 'Topping');
       data.addColumn('number', 'Slices');
       data.addRows([
         ['Mushrooms', 3],
         ['Onions', 1],
         ['Olives', 1],
         ['Zucchini', 1],
         ['Pepperoni', 2]
       ]);

       // Set chart options
       var options = {'title':'How Much Pizza I Ate Last Night',
                      'width':400,
                      'height':300};

       // Instantiate and draw our chart, passing in some options.
       var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
       chart.draw(data, options);
     }
   </script>

</head>
<body>
	<div id="columnchart_material"></div>
	<div id="chart_div"></div>
</body>
</html>
