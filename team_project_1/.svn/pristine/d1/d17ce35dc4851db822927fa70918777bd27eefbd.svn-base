<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도넛 차트</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<style>
	#mrChart_wrap{
		height: 1000px;
		
	}
</style>
</head>
<body>
	<div id="myChart_wrap">
		<canvas id="myChart"></canvas>
	</div>
	<script type="text/javascript">
		var ctx = document.getElementById('myChart').getContext('2d');
		$(function(){
		
		$.ajax("../DonutChartServlet", {
			dataType : "json",
			success: function(data) {
				data.sort(function(l,r) {
					return l.joindate - r.joindate;
				});
				console.log(data);
				var label = new Array();
				var value = new Array();
				for(var i in data) {
					label.push(data[i].resdate);
					value.push(data[i].count);
				}
				console.log(label);
				console.log(value);
				new Chart(ctx, {
					type : 'radar',
					data: {
					    labels: label,
					    datasets: [{
					    	label : '시간대별 예약 통계',
					    	backgroundColor: [
					    		'rgb(103, 213, 181, 0.5)'
					    						    		
					    		],
					    	borderColor: [
					    		'rgb(103, 213, 181, 0.5)',
					    		
					    		],
					    	data: value
					    }]
					 					    
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
	
	
	</script>
</body>
</html>