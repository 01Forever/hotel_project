<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>막대 차트</title>
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
		
		$.ajax("../BarChartServlet", {
			dataType : "json",
			success: function(data) {
				console.log(data);
				var label = new Array();
				var value = new Array();
				var value2 = new Array();
				for(var i in data) {
					label.push(data[i].borugh);
					value.push(data[i].hotel);
					value2.push(data[i].room);
				}
				console.log(label);
				console.log(value);
				new Chart(ctx, {
					type : 'bar',
					data: {
					    labels: label,
					    datasets: [{
					    	label : '호텔',
					    	backgroundColor: 'rgb(0, 0, 255, .5)',
					    	borderColor: 'rgb(0, 0, 255, .5)',
					        data: value,
					    },{
					    	label : '객실',
					    	backgroundColor: 'rgb(255, 99, 132, .5)',
						    borderColor: 'rgb(255, 99, 132, .5)',
						    data: value2
					    }]
					    	
					},
					
					/* options : {
						scale: {
							ticks: {
								beginAtZero: true
							}
						}
					}  */
				});
			}
		})
	})
	
	</script>
</body>
</html>