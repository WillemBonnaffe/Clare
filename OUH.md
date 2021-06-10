<html>
<head>
    <meta charset="UTF-8">
    <title>v0.1</title>
    <script src="package/dist/Chart.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-csv/0.71/jquery.csv-0.71.min.js"></script>
    <style>canvas {
	display: block;
	max-width: 800px;
	margin: 60px auto;
} 
	  .logo{margin: 10px auto 20px;
    display: block; text-align: center;}
    </style>
</head>
<body>
	<div class="logo"><img src="images/Zylem_icon.png" alt="logo"  width="200"></div>
	<canvas id="bar-chart" width="40" height="20"></canvas>
	<canvas id="bar-chart2" width="40" height="20"></canvas>
	<script>

var data;
var labels_for_chart = [];
var data_for_chart = [];
	$.ajax({
	  type: "GET",  
	  url: "docs/database/predictions_.csv",
	  dataType: "text",
	async: false,
	  success: function(response)  
	  {
		var options={"separator" : ";"};  
	    data = $.csv.toArrays(response,options);
	    $.each(data, function(index,row){if(index > 0){labels_for_chart.push(row[0]); data_for_chart.push(row[5]*100)}});
	  }
	  });
var bar_ctx = document.getElementById('bar-chart').getContext('2d');

var purple_orange_gradient = bar_ctx.createLinearGradient(0, 0, 0, 600);
purple_orange_gradient.addColorStop(0, 'red');
purple_orange_gradient.addColorStop(1, 'green');

var bar_chart = new Chart(bar_ctx, {
    type: 'bar',
    data: {
        labels: labels_for_chart,
        datasets: [{
            label: 'Probability of stoppage: next 7 days',
            data: data_for_chart,
						backgroundColor: purple_orange_gradient,
						hoverBackgroundColor: purple_orange_gradient,
						hoverBorderWidth: 2,
						hoverBorderColor: 'purple'
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true,
		    max:100
                }
            }],
	    xAxes: [{ticks:{minRotation:90,maxRotation:90,autoSkip:false}}]
        }
    }
});

	</script>
</body>
</html>

