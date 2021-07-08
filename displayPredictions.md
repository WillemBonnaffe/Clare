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
			<option value="0403040W0AAALAL">Atomoxetine HCl_Cap 40mg                    </option>
			<option value="0403040Z0AAAAAA">Atomoxetine 40mg capsules                   </option>
			<option value="0404000M0BDAAAM">Atomoxetine HCl_Cap 25mg                    </option>
			<option value="0404000M0BCAEAQ">Atomoxetine 25mg capsules                   </option>
			<option value="0404000M0BGAEAQ">Concerta_XL Tab 36mg                        </option>
			<option value="0404000M0BCADAU">Concerta XL 36mg tablets                    </option>
			<option value="0404000M0BGADAU">Concerta_XL Tab 27mg                        </option>
			<option value="0402010ADAAAGAG">Concerta XL 27mg tablets                    </option>
			<option value="0401010ADAAAAAA">Equasym XL_Cap 30mg                         </option>
			<option value="0401010ADBBAAAA">Equasym XL 30mg capsules                    </option>
			<option value="0408010F0AAABAB">Venlafaxine_Tab 225mg M/R                   </option>
			<option value="0403030Q0AAABAB">Venlafaxine 225mg modified-release tablets  </option>
			<option value="0403040W0AAABAB">Agomelatine_Tab 25mg                        </option>
			<option value="0403030E0AAAEAE">Agomelatine 25mg tablets                    </option>
			<option value="0404000M0AAAAAA">Concerta_XL Tab 18mg                        </option>
			<option value="0403030Q0AAAAAA">Concerta XL 18mg tablets                    </option>
			<option value="040201060AAALAL">Equasym XL_Cap 20mg                         </option>
			<option value="0401020P0AAABAB">Equasym XL 20mg capsules                    </option>
			<option value="0403040W0AAAKAK">Medikinet XL_Cap 20mg                       </option>
			<option value="0407042F0AAAAAA">Medikinet XL 20mg capsules                  </option>
			<option value="040201030AAACAC">Equasym XL_Cap 10mg                         </option>
			<option value="0402010ABAAAKAK">Equasym XL 10mg capsules                    </option>
			<option value="0402010ABAAADAD">Medikinet XL_Cap 10mg                       </option>
			<option value="0404000M0AAAJAJ">Medikinet XL 10mg capsules                  </option>
			<option value="0403040W0AAAAAA">Aripiprazole_Oral Soln 5mg/5ml              </option>
			<option value="040201030AAAAAA">Aripiprazole 1mg/ml oral solution           </option>
			<option value="0403040X0AAANAN">Melatonin_Tab 2mg M/R                       </option>
			<option value="0403040X0AAAPAP">Melatonin 2mg modified-release tablets      </option>
			<option value="0403040Y0AAABAB">Circadin_Tab 2mg M/R                        </option>
			<option value="040201060AAACAC">Circadin 2mg modified-release tablets       </option>
			<option value="040201030AAABAB">Clonazepam_Tab 500mcg                       </option>
			<option value="0403040X0AAAAAA">Clonazepam 500microgram tablets             </option>
			<option value="0402010ABAAACAC">Sertraline HCl_Tab 100mg                    </option>
			<option value="0403040W0AAAJAJ">Sertraline 100mg tablets                    </option>
			<option value="040201030AAAKAK">Venlafaxine_Tab 75mg                        </option>
			<option value="0304010W0AAALAL">Venlafaxine HCl_Tab 75mg                    </option>
			<option value="0402010ABAAAFAF">Fluoxetine HCl_Cap 60mg                     </option>
			<option value="040201060AAABAB">Fluoxetine 60mg capsules                    </option>
  		</select>
  		<br><br>
	</form>
        <canvas id="chart"></canvas>
        <script>
		var chart;
		var tmp = document.getElementById('cars').value;
		var file = 'docs/database/individual_drugs_6monthly/'.concat(tmp,'.csv');			
		d3.csv(file).then(makeChart);				
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
					
				chart = new Chart('chart', {
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
					    yAxes: [
						{
						    display: true,
          					    scaleLabel: {
           						 display: true,
           						 labelString: 'Total quantity prescribed'
         					 },
					}
				    ]
					    xAxes: [
						{
						    display: true,
          					    scaleLabel: {
           						 display: true,
           						 labelString: 'Period'
         					 },
						    ticks: {
							suggestedMin: minX,
					    }
					}
				    ]
				}	
			    }
			});
		
		    };
		function updateChart()
		{
			var tmp = document.getElementById('cars').value;
			var file = 'docs/database/individual_drugs/'.concat(tmp,'.csv');
			// var chart = document.getElementById('chart');	
			// chart.data.datasets.pop();
			// chart.update();
			chart.destroy();
			d3.csv(file).then(makeChart);			
		};		
        </script>
    </body>
</html>
