<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선 차트</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</head>
<body>
	<div id="myChart_wrap">
		<canvas id="myChart"></canvas>
	</div>
	<script type="text/javascript">
		var ctx = document.getElementById('myChart').getContext('2d');
		$(function(){
		
		$.ajax("../LineChartServlet", {
			dataType : "json",
			success: function(data) {
				data.sort(function(l,r) {
					return l.joindate - r.joindate;
				});
				console.log(data);
				var label = new Array();
				var value = new Array();
				for(var i in data) {
					label.push(data[i].joindate + '월');
					value.push(data[i].count);
				}
				console.log(label);
				console.log(value);
				new Chart(ctx, {
					type : 'line',
					data: {
					    labels: label,
					    datasets: [{
					    	label : '회원가입 수',
					    	backgroundColor: 'rgb(1, 169, 219, .5)',
					    	borderColor: 'rgb(1, 169, 219, .5)',
					        data: value
					    }],
				  
					},
					options : {
						scale: {
							ticks: {
								beginAtZero: true
							}
						}
					} 
				});
			}
		})
	})
	
		/* var chart = new Chart(ctx, {
			// The type of chart we want to create
			type : 'line',
	
			// The data for our dataset
			data : {
				labels : [ "January", "February", "March", "April", "May", "June", "July" ],
				datasets : [ {
					label : "My First dataset",
					backgroundColor : 'rgb(255, 99, 132)',
					borderColor : 'rgb(255, 99, 132)',
					data : [ 0, 10, 5, 2, 20, 30, 45 ],
				} ]
			},
	
			// Configuration options go here
			options : {}
		}); */
	</script>
</body>
</html>