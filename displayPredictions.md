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
			<option value="Agomelatine_25mg_tablets">Agomelatine_25mg_tablets</option>
			<option value="Agomelatine_Tab_25mg">Agomelatine_Tab_25mg</option>
			<option value="Aripiprazole_1mg_ml_oral_solution">Aripiprazole_1mg_ml_oral_solution</option>
			<option value="Aripiprazole_Oral_Soln_5mg_5ml">Aripiprazole_Oral_Soln_5mg_5ml</option>
			<option value="Atomoxetine_25mg_capsules">Atomoxetine_25mg_capsules</option>
			<option value="Atomoxetine_40mg_capsules">Atomoxetine_40mg_capsules</option>
			<option value="Atomoxetine_HCl_Cap_25mg">Atomoxetine_HCl_Cap_25mg</option>
			<option value="Atomoxetine_HCl_Cap_40mg">Atomoxetine_HCl_Cap_40mg</option>
			<option value="Circadin_Tab_2mg_M_R">Circadin_Tab_2mg_M_R</option>
			<option value="Clonazepam_500microgram_tablets">Clonazepam_500microgram_tablets</option>
			<option value="Clonazepam_Tab_500mcg">Clonazepam_Tab_500mcg</option>
			<option value="Clonidine_25microgram_tablets">Clonidine_25microgram_tablets</option>
			<option value="Clonidine_HCl_Tab_25mcg">Clonidine_HCl_Tab_25mcg</option>
			<option value="Concerta_XL_18mg_tablets">Concerta_XL_18mg_tablets</option>
			<option value="Concerta_XL_27mg_tablets">Concerta_XL_27mg_tablets</option>
			<option value="Concerta_XL_36mg_tablets">Concerta_XL_36mg_tablets</option>
			<option value="Concerta_XL_Tab_18mg">Concerta_XL_Tab_18mg</option>
			<option value="Concerta_XL_Tab_27mg">Concerta_XL_Tab_27mg</option>
			<option value="Concerta_XL_Tab_36mg">Concerta_XL_Tab_36mg</option>
			<option value="Duloxetine_HCl_Cap_G_R_60mg">Duloxetine_HCl_Cap_G_R_60mg</option>
			<option value="Equasym_XL_10mg_capsules">Equasym_XL_10mg_capsules</option>
			<option value="Equasym_XL_20mg_capsules">Equasym_XL_20mg_capsules</option>
			<option value="Equasym_XL_30mg_capsules">Equasym_XL_30mg_capsules</option>
			<option value="Equasym_XL_Cap_10mg">Equasym_XL_Cap_10mg</option>
			<option value="Equasym_XL_Cap_20mg">Equasym_XL_Cap_20mg</option>
			<option value="Equasym_XL_Cap_30mg">Equasym_XL_Cap_30mg</option>
			<option value="Fluoxetine_20mg_5ml_oral_solution">Fluoxetine_20mg_5ml_oral_solution</option>
			<option value="Fluoxetine_60mg_capsules">Fluoxetine_60mg_capsules</option>
			<option value="Fluoxetine_HCl_Cap_60mg">Fluoxetine_HCl_Cap_60mg</option>
			<option value="Fluoxetine_HCl_Oral_Soln_20mg_5ml">Fluoxetine_HCl_Oral_Soln_20mg_5ml</option>
			<option value="Lorazepam_1mg_tablets">Lorazepam_1mg_tablets</option>
			<option value="Lorazepam_Tab_1mg">Lorazepam_Tab_1mg</option>
			<option value="Medikinet_XL_10mg_capsules">Medikinet_XL_10mg_capsules</option>
			<option value="Medikinet_XL_20mg_capsules">Medikinet_XL_20mg_capsules</option>
			<option value="Medikinet_XL_Cap_10mg">Medikinet_XL_Cap_10mg</option>
			<option value="Medikinet_XL_Cap_20mg">Medikinet_XL_Cap_20mg</option>
			<option value="Melatonin_Tab_2mg_M_R">Melatonin_Tab_2mg_M_R</option>
			<option value="Methylphenidate_10mg_tablets">Methylphenidate_10mg_tablets</option>
			<option value="Methylphenidate_5mg_tablets">Methylphenidate_5mg_tablets</option>
			<option value="Methylphenidate_HCl_Tab_10mg">Methylphenidate_HCl_Tab_10mg</option>
			<option value="Methylphenidate_HCl_Tab_5mg">Methylphenidate_HCl_Tab_5mg</option>
			<option value="Mirtazapine_15mg_tablets">Mirtazapine_15mg_tablets</option>
			<option value="Mirtazapine_30mg_tablets">Mirtazapine_30mg_tablets</option>
			<option value="Mirtazapine_45mg_tablets">Mirtazapine_45mg_tablets</option>
			<option value="Mirtazapine_Tab_15mg">Mirtazapine_Tab_15mg</option>
			<option value="Mirtazapine_Tab_30mg">Mirtazapine_Tab_30mg</option>
			<option value="Mirtazapine_Tab_45mg">Mirtazapine_Tab_45mg</option>
			<option value="Olanzapine_10mg_tablets">Olanzapine_10mg_tablets</option>
			<option value="Olanzapine_15mg_tablets">Olanzapine_15mg_tablets</option>
			<option value="Olanzapine_Tab_10mg">Olanzapine_Tab_10mg</option>
			<option value="Olanzapine_Tab_15mg">Olanzapine_Tab_15mg</option>
			<option value="Procyclidine_5mg_tablets">Procyclidine_5mg_tablets</option>
			<option value="Procyclidine_HCl_Tab_5mg">Procyclidine_HCl_Tab_5mg</option>
			<option value="Promethazine_HCl_Tab_25mg">Promethazine_HCl_Tab_25mg</option>
			<option value="Promethazine_hydrochloride_25mg_tablets">Promethazine_hydrochloride_25mg_tablets</option>
			<option value="Quetiapine_100mg_tablets">Quetiapine_100mg_tablets</option>
			<option value="Quetiapine_150mg_tablets">Quetiapine_150mg_tablets</option>
			<option value="Quetiapine_200mg_tablets">Quetiapine_200mg_tablets</option>
			<option value="Quetiapine_300mg_tablets">Quetiapine_300mg_tablets</option>
			<option value="Quetiapine_Tab_100mg">Quetiapine_Tab_100mg</option>
			<option value="Quetiapine_Tab_150mg">Quetiapine_Tab_150mg</option>
			<option value="Quetiapine_Tab_200mg">Quetiapine_Tab_200mg</option>
			<option value="Quetiapine_Tab_300mg">Quetiapine_Tab_300mg</option>
			<option value="Risperidone_1mg_tablets">Risperidone_1mg_tablets</option>
			<option value="Risperidone_2mg_tablets">Risperidone_2mg_tablets</option>
			<option value="Risperidone_3mg_tablets">Risperidone_3mg_tablets</option>
			<option value="Risperidone_500microgram_tablets">Risperidone_500microgram_tablets</option>
			<option value="Risperidone_Tab_1mg">Risperidone_Tab_1mg</option>
			<option value="Risperidone_Tab_2mg">Risperidone_Tab_2mg</option>
			<option value="Risperidone_Tab_3mg">Risperidone_Tab_3mg</option>
			<option value="Risperidone_Tab_500mcg">Risperidone_Tab_500mcg</option>
			<option value="Sertraline_100mg_tablets">Sertraline_100mg_tablets</option>
			<option value="Sertraline_50mg_tablets">Sertraline_50mg_tablets</option>
			<option value="Sertraline_HCl_Tab_100mg">Sertraline_HCl_Tab_100mg</option>
			<option value="Sertraline_HCl_Tab_50mg">Sertraline_HCl_Tab_50mg</option>
			<option value="Venlafaxine_HCl_Tab_75mg">Venlafaxine_HCl_Tab_75mg</option>
			<option value="Venlafaxine_Tab_150mg_M_R">Venlafaxine_Tab_150mg_M_R</option>
			<option value="Venlafaxine_Tab_225mg_M_R">Venlafaxine_Tab_225mg_M_R</option>
			<option value="Venlafaxine_Tab_75mg">Venlafaxine_Tab_75mg</option>
			<option value="Venlafaxine_Tab_75mg_M_R">Venlafaxine_Tab_75mg_M_R</option>
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
