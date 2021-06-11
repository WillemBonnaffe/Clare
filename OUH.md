<html>
    <head>
        <meta charset="UTF-8">
        <title>Temperature Data Bar Graph</title>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/d3/5.7.0/d3.min.js"></script>
    </head>
    <body>
        <canvas id="chart"></canvas>
        <script>
            var file = 'docs/database/predictions_.csv';
            d3.csv(file).then(makeChart);
            function makeChart(days) {
                var dayLabel = days.map(function(d){return d.time});
                var dayTemp = days.map(function(d) {return d.Y});
                var dayPred = days.map(function(d) {return d.Ybar});
                //Set Min for better visiable range
                var minX = d3.min(dayTemp);
                minX -= 10;
                
                var chart = new Chart('chart', {
                    type: 'bar',
                    data: {
                        labels: dayLabel,
                        datasets: [
                            {
                                data: dayTemp,
								backgroundColor: '#A0EFFD',
                            },
							{
								data: dayPred,
								backgroundColor: '#DAA0FD',
							}
                        ]
                    },
                    options: {
                        title: {
                            display: true,
                            text: 'Predictions of prescriptions at OUH' 
                        },
                        legend: {
                            display: false
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
            }
        </script>
    </body>
</html>
