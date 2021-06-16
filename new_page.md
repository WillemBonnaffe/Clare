<html>
    <head>
        <meta charset="UTF-8">
        <title>Temperature Data Bar Graph</title>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/d3/5.7.0/d3.min.js"></script>
    </head>
    <body>
	<form>
  		<label for="cars">Choose a drug:</label>
  		<select name="cars" id="cars" onchange="updateChart()">
    			<option value="0103050P0AAAAAA">0103050P0AAAAAA</option>
			<option value="0106040M0BCACAA">0106040M0BCACAA</option>
    			<option value="0202020L0AABDBD">0202020L0AABDBD</option>
			<option value="0202030S0AAATAT">0202030S0AAATAT</option>
			<option value="0304010W0AAALAL">0304010W0AAALAL</option>
			<option value="0401010ADAAAAAA">0401010ADAAAAAA</option>
			<option value="0401010ADBBAAAA">0401010ADBBAAAA</option>
			<option value="0401010Z0AAAAAA">0401010Z0AAAAAA</option>
			<option value="0401010Z0AAACAC">0401010Z0AAACAC</option>
			<option value="0401020K0AAAHAH">0401020K0AAAHAH</option>			
  		</select>
  		<br><br>
	</form>
        <canvas id="chart"></canvas>
        <script>
		var tmp = document.getElementById('cars').value;
		var file = 'docs/database/individual_drugs/'.concat(tmp,'.csv');			
		d3.csv(file).then(makeChart);			
	
		function updateChart()
		{
			var tmp = document.getElementById('cars').value;
			var file = 'docs/database/individual_drugs/'.concat(tmp,'.csv');	
			// var tmp = document.getElementById('chart');
			resetCanvas();
			d3.csv(file).then(makeChart);			
		};
				
		function makeChart(days) {
				var test = document.getElementById('cars').value;
			        var title = test;
				// var title = 'Predictions of prescriptions at OUH';
				var dayLabel = days.map(function(d){return d.time});
				var dayTemp = days.map(function(d) {return d.Y});
				var dayPred = days.map(function(d) {return d.Ybar});
				// Set Min for better visiable range
				var minX = d3.min(dayTemp);
				minX -= 10;
					
				var chart = new Chart('chart', {
			    		type: 'bar',
					    data: {
						labels: dayLabel,
						datasets: [
						    {
							label: 'Actual',
							data: dayTemp,
							backgroundColor: '#A0EFFD',
							},
							{
								label: 'Predicted',
								data: dayPred,
								backgroundColor: '#DAA0FD',
							}
						]
						},
					options: {
						title: {
				    		display: true,
						    text: title,
					},
					legend: {
						    display: true
					},
					scales: {
					    xAxes: [
						{
						    ticks: {
							suggestedMin: minX,
					    }
					}
				    ]
				}
			    }
			});
		    };
		
		var resetCanvas = function () {
  			$('#results-graph').remove(); // this is my <canvas> element
			  $('#graph-container').append('<canvas id="results-graph"><canvas>');
			  canvas = document.querySelector('#results-graph'); // why use jQuery?
			  ctx = canvas.getContext('2d');
			  ctx.canvas.width = $('#graph').width(); // resize to parent width
			  ctx.canvas.height = $('#graph').height(); // resize to parent height

			  var x = canvas.width/2;
			  var y = canvas.height/2;
			  ctx.font = '10pt Verdana';
			  ctx.textAlign = 'center';
			  ctx.fillText('This text is centered on the canvas', x, y);
			};
        </script>
    </body>
</html>
