<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="ZYLEM">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Home</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Home.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.17.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    

<body>
	<div class="logo"><img src="images/Zylem_icon.png" alt="logo"  width="200"></div>
	<canvas id="bar-chart" width="400" height="200"></canvas>
	<canvas id="bar-chart2" width="400" height="200"></canvas>
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

