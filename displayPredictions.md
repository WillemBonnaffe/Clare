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
			<option value="Atomoxetine HCl_Cap 40mg">0403040W0AAALAL</option>
			<option value="Atomoxetine 40mg capsules">0403040Z0AAAAAA</option>
			<option value="Atomoxetine HCl_Cap 25mg">0404000M0BDAAAM</option>
			<option value="Atomoxetine 25mg capsules">0404000M0BCAEAQ</option>
			<option value="Concerta_XL Tab 36mg">0404000M0BGAEAQ</option>
			<option value="Concerta XL 36mg tablets">0404000M0BCADAU</option>
			<option value="Concerta_XL Tab 27mg">0404000M0BGADAU</option>
			<option value="Concerta XL 27mg tablets">0402010ADAAAGAG</option>
			<option value="Equasym XL_Cap 30mg">0401010ADAAAAAA</option>
			<option value="Equasym XL 30mg capsules">0401010ADBBAAAA</option>
			<option value="Venlafaxine_Tab 225mg M/R">0408010F0AAABAB</option>
			<option value="Venlafaxine 225mg modified-release tablets">0403030Q0AAABAB</option>
			<option value="Agomelatine_Tab 25mg">0403040W0AAABAB</option>
			<option value="Agomelatine 25mg tablets">0403030E0AAAEAE</option>
			<option value="Concerta_XL Tab 18mg">0404000M0AAAAAA</option>
			<option value="Concerta XL 18mg tablets">0403030Q0AAAAAA</option>
			<option value="Equasym XL_Cap 20mg">040201060AAALAL</option>
			<option value="Equasym XL 20mg capsules">0401020P0AAABAB</option>
			<option value="Medikinet XL_Cap 20mg">0403040W0AAAKAK</option>
			<option value="Medikinet XL 20mg capsules">0407042F0AAAAAA</option>
			<option value="Equasym XL_Cap 10mg">040201030AAACAC</option>
			<option value="Equasym XL 10mg capsules">0402010ABAAAKAK</option>
			<option value="Medikinet XL_Cap 10mg">0402010ABAAADAD</option>
			<option value="Medikinet XL 10mg capsules">0404000M0AAAJAJ</option>
			<option value="Aripiprazole_Oral Soln 5mg/5ml">0403040W0AAAAAA</option>
			<option value="Aripiprazole 1mg/ml oral solution">040201030AAAAAA</option>
			<option value="Melatonin_Tab 2mg M/R">0403040X0AAANAN</option>
			<option value="Melatonin 2mg modified-release tablets">0403040X0AAAPAP</option>
			<option value="Circadin_Tab 2mg M/R">0403040Y0AAABAB</option>
			<option value="Circadin 2mg modified-release tablets">040201060AAACAC</option>
			<option value="Clonazepam_Tab 500mcg">040201030AAABAB</option>
			<option value="Clonazepam 500microgram tablets">0403040X0AAAAAA</option>
			<option value="Sertraline HCl_Tab 100mg">0402010ABAAACAC</option>
			<option value="Sertraline 100mg tablets">0403040W0AAAJAJ</option>
			<option value="Venlafaxine_Tab 75mg">040201030AAAKAK</option>
			<option value="Venlafaxine HCl_Tab 75mg">0304010W0AAALAL</option>
			<option value="Fluoxetine HCl_Cap 60mg">0402010ABAAAFAF</option>
			<option value="Fluoxetine 60mg capsules">040201060AAABAB</option>
			<option value="Methylphenidate HCl_Tab 10mg">0403030E0AAACAC</option>
			<option value="Methylphenidate 10mg tablets">0409020S0AAAEAE</option>
			<option value="Sertraline HCl_Tab 50mg">040201060AAAAAA</option>
			<option value="Sertraline 50mg tablets">0403030E0AAANAN</option>
			<option value="Olanzapine_Tab 15mg">0403040Y0AAAAAA</option>
			<option value="Olanzapine 15mg tablets">0402010ADAAABAB</option>
			<option value="Lorazepam_Tab 1mg">040201060AAADAD</option>
			<option value="Lorazepam 1mg tablets">0408010H0AAAAAA</option>
			<option value="Venlafaxine_Tab 150mg M/R">0402010ADAAAAAA</option>
			<option value="Venlafaxine 150mg modified-release tablets">0402010ADAAADAD</option>
			<option value="Clonidine HCl_Tab 25mcg">0401010Z0AAACAC</option>
			<option value="Clonidine 25microgram tablets">0401010Z0AAAAAA</option>
			<option value="Risperidone_Tab 3mg">0402010ABAAABAB</option>
			<option value="Risperidone 3mg tablets">0403010X0AAAAAA</option>
			<option value="Quetiapine_Tab 300mg">040201030AAAEAE</option>
			<option value="Quetiapine 300mg tablets">0402030K0AAAFAF</option>
			<option value="Quetiapine_Tab 200mg">0402030K0BFAAAF</option>
			<option value="Quetiapine 200mg tablets">0403030D0AAAAAA</option>
			<option value="Methylphenidate HCl_Tab 5mg">0408010H0AAABAB</option>
			<option value="Methylphenidate 5mg tablets">0403030E0AAAAAA</option>
			<option value="Venlafaxine_Tab 37.5mg">0408010AEAAABAB</option>
			<option value="Venlafaxine HCl_Tab 37.5mg">0403030D0AAABAB</option>
			<option value="Risperidone_Tab 1mg">0401020K0AAAIAI</option>
			<option value="Risperidone 1mg tablets">0401020K0AAAHAH</option>
			<option value="Mirtazapine_Tab 15mg">0202020L0AABDBD</option>
			<option value="Mirtazapine 15mg tablets">0408010H0AAACAC</option>
			<option value="Mirtazapine_Tab 45mg">0402030K0AAAIAI</option>
			<option value="Mirtazapine 45mg tablets">090402000BBRRA0</option>
			<option value="Duloxetine HCl_Cap G/R 60mg">0402010AIAAACAC</option>
			<option value="Duloxetine 60mg gastro-resistant capsules">0402010ABAAAXAX</option>
			<option value="Olanzapine_Tab 10mg">0404000U0AAABAB</option>
			<option value="Olanzapine 10mg tablets">0404000S0AAACAC</option>
			<option value="Risperidone_Tab 2mg">0402010ABAAAVAV</option>
			<option value="Risperidone 2mg tablets">0404000M0BGAFAV</option>
			<option value="Mirtazapine_Tab 30mg">0404000M0AAAKAK</option>
			<option value="Mirtazapine 30mg tablets">0403040W0AAAEAE</option>
			<option value="Quetiapine_Tab 100mg">040201030AAADAD</option>
			<option value="Quetiapine 100mg tablets">0402010A0AAABAB</option>
			<option value="Venlafaxine_Tab 75mg M/R">0403030X0AAAAAA</option>
			<option value="Venlafaxine 75mg modified-release tablets">0411000D0AAABAB</option>
			<option value="Risperidone_Tab 500mcg">0601022B0AAABAB</option>
			<option value="Risperidone 500microgram tablets">0408010AEAAAEAE</option>
			<option value="Promethazine HCl_Tab 25mg">0408010AEAAACAC</option>
			<option value="Promethazine hydrochloride 25mg tablets">0408010AEAAAAAA</option>
			<option value="Quetiapine_Tab 150mg">0404000U0AAADAD</option>
			<option value="Quetiapine 150mg tablets">0404000U0BCAAAB</option>
			<option value="Olanzapine_Tab 7.5mg">0402010A0AAAGAG</option>
			<option value="Olanzapine 7.5mg tablets">0106040M0BCACAA</option>
			<option value="Fluoxetine HCl_Oral Soln 20mg/5ml">0202030S0AAATAT</option>
			<option value="Fluoxetine 20mg/5ml oral solution">0403030D0AAACAC</option>
			<option value="Procyclidine HCl_Tab 5mg">0103050P0AAAAAA</option>
			<option value="Procyclidine 5mg tablets">0402030K0BFABAI</option>

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
