<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html data-ng-app="App">
<head>
<meta charset="UTF-8">
<title>예약하기</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" />
<script src="../resources/js/angular.min.js"></script>
<script src="../resources/js/angular-route.min.js"></script>
<script src="../resources/js/angular-animate.min.js"></script>
<script>
	var App=angular.module("App", []);
	App.controller("timeCtrl", function($scope, $http){
		$scope.branch = [{id:"홍대점",name:"홍대점"},{id:"대구점",name:"대구점"},{id:"인천구월점",name:"인천구월점"},{id:"전주점",name:"전주점"},{id:"잠실점",name:"잠실점"},{id:"대전두산점",name:"대전두산점"},{id:"천호점",name:"천호점"},{id:"수유점",name:"수유점"}];
		$scope.themah = [{id:"total",name:"전체테마"},{id:"피라미드",name:"파라미드의 비밀 ★★★☆☆"},{id:"헨젤과 그레텔",name:"헨젤과 그레텔 ★★★★☆"},{id:"Towering",name:"Towering ★★★★☆"},{id:"Gestapo",name:"Gestapo ★★★★☆"},{id:"Monkey House",name:"Monkey House ★★★☆☆"},{id:"장기밀매",name:"장기밀매 ★★★★★"},{id:"Deliver",name:"Deliver ★★★★☆"},{id:"Romeo point",name:"Romeo Point ★★★★☆"}];
		$scope.themad = [{id:"total",name:"전체테마"},{id:"장기밀매",name:"장기밀매 ★★★★★"},{id:"Deliver",name:"Deliver ★★★★☆"},{id:"Monkey House",name:"Monkey House ★★★☆☆"},{id:"Gestapo",name:"Gestapo ★★★★☆"},{id:"헨젤과 그레텔",name:"Monkey House ★★★★☆"},{id:"알포인트",name:"알포인트 ★★★★☆"},{id:"피라미드",name:"피라미드 ★★★☆☆"},{id:"폼페이최후의날",name:"폼페이최후의날 ★★★★☆"},{id:"집행",name:"집행 ★★★★☆"},{id:"카타콤",name:"카타콤 ★★★★☆"}];
		$scope.themai = [{id:"total",name:"전체테마"},{id:"타이타닉",name:"타이타닉 ★★★★☆"},{id:"신데렐라",name:"신데렐라 ★★★★☆"},{id:"장기밀매",name:"장기밀매 ★★★★★"},{id:"Towering",name:"Towering ★★★★☆"},{id:"집착",name:"집착 ★★★★☆"}];
		$scope.themaj = [{id:"total",name:"전체테마"},{id:"피라미드",name:"파라미드의 비밀 ★★★☆☆"},{id:"피고인",name:"피고인 ★★★★☆"},{id:"좀비스쿨",name:"좀비스쿨 ★★★★★"},{id:"헨젤과 그레텔",name:"헨젤과 그레텔 ★★★★☆"},{id:"제시의시크릿",name:"제시의시크릿 ★★★★☆"},{id:"Deliver",name:"Deliver ★★★★☆"},{id:"신데렐라",name:"신데렐라 ★★★★☆"},{id:"집착",name:"집착 ★★★★☆"}];
		$scope.themaja = [{id:"total",name:"전체테마"},{id:"Romeo Point",name:"Romeo Point ★★★★☆"},{id:"신데렐라",name:"신데렐라 ★★★☆☆"},{id:"집착",name:"집착 ★★★★☆"},{id:"마션",name:"마션 ★★★★★"},{id:"타이타닉",name:"타이타닉 ★★★★☆"},{id:"카타콤",name:"카타콤 ★★★★★"}];
		$scope.themada = [{id:"total",name:"전체테마"},{id:"장기밀매",name:"장기밀매 ★★★★★"},{id:"신데렐라",name:"신데렐라 ★★★☆☆"},{id:"집착",name:"집착 ★★★★☆"},{id:"마션",name:"마션 ★★★★★"},{id:"타이타닉",name:"타이타닉 ★★★★☆"},{id:"카타콤",name:"카타콤 ★★★★★"}];
		$scope.themac = [{id:"total",name:"전체테마"},{id:"The Cube",name:"The Cube ★★★★★"},{id:"The Maze",name:"The Maze ★★★★☆"},{id:"장기밀매 Part2",name:"장기밀매 Part2 ★★★★☆"},{id:"Stepfather:사라진 천사들",name:"Stepfather:사라진 천사들 ★★★☆☆"},{id:"Piggies:마녀의 꿈",name:"Piggies:마녀의 꿈 ★★★★☆"},{id:"Aphilia:장미의 비밀",name:"Aphilia:장미의 비밀 ★★★★☆"},{id:"피고인",name:"피고인 ★★★☆☆"}];
		$scope.themas = [{id:"total",name:"전체테마"},{id:"The Cube",name:"The Cube ★★★★★"},{id:"Stepfather:사라진 천사들",name:"Stepfather:사라진 천사들 ★★★☆☆"},{id:"Piggies:마녀의 꿈",name:"Piggies:마녀의 꿈 ★★★★☆"},{id:"Obsession:집착",name:"Obsession:집착 ★★★★☆"},{id:"Treasure Hunters:우든펍의 비밀",name:"Treasure Hunters:우든펍의 비밀 ★★★☆☆"},{id:"Treasure Hunters:빅토리아호의 침몰",name:"Treasure Hunters:빅토리아호의 침몰 ★★★☆☆"},{id:"Treasure Hunters:거미의 둥지",name:"Treasure Hunters:거미의 둥지 ★★★★☆"},{id:"Treasure Hunters:골든아이",name:"Treasure Hunters:골든아이 ★★★★★"}];
		$scope.change=function(){
			console.log($scope.branches);
			console.log($scope.hongdaet);
			$http({
				url:"/escape/reservation/reservation_ajax.do",
				method:"get",
				params:{name:$scope.branches,thema:$scope.hongdaet,date:$scope.date}
			}).success(function(data){
				console.log(data);
				$scope.list=data.list;
			});
		};
	});
</script>
</head>
<body>
<jsp:include page="../templates/nav.jsp"></jsp:include>
<div class="container">
	<h1 class="text-center">예약하기</h1>
	<div data-ng-controller="timeCtrl" class="form-group row">
		<div class="col-4">
			<label for="dateselect">날짜선택</label>
			<input type="date" data-ng-model="date" data-ng-change="dateChange()" class="form-control" min="2020-09-20" max="2020-10-05" />
		</div>
		<div class="col-4">
			<label for="">지점선택</label>
			<select data-ng-model="branches" class="form-control">
				<option data-ng-repeat="x in branch" value="{{x.id}}">{{x.name}}</option>
			</select>
		</div>
		<div class="col-4">
			<label for="dateselect">테마</label>
			<select data-ng-model="hongdaet" data-ng-change="change()" class="form-control">
				<option data-ng-if="branches == '홍대점'" data-ng-repeat="x in themah" value="{{x.id}}">{{x.name}}</option>
				<option data-ng-if="branches == '대구점'" data-ng-repeat="x in themad" value="{{x.id}}">{{x.name}}</option>
				<option data-ng-if="branches == '인천구월점'" data-ng-repeat="x in themai" value="{{x.id}}">{{x.name}}</option>
				<option data-ng-if="branches == '전주점'" data-ng-repeat="x in themaj" value="{{x.id}}">{{x.name}}</option>
				<option data-ng-if="branches == '잠실점'" data-ng-repeat="x in themaja" value="{{x.id}}">{{x.name}}</option>
				<option data-ng-if="branches == '대전두산점'" data-ng-repeat="x in themada" value="{{x.id}}">{{x.name}}</option>
				<option data-ng-if="branches == '천호점'" data-ng-repeat="x in themac" value="{{x.id}}">{{x.name}}</option>
				<option data-ng-if="branches == '수유점'" data-ng-repeat="x in themas" value="{{x.id}}">{{x.name}}</option>
			</select>
		</div>
		<table class="table table-striped mt-3">
			<thead>
				<tr class="row">
					<th class="col-3 text-center">시간</th>
					<th class="col-6 text-center">테마</th>
					<th class="col-3 text-center">예약</th>
				</tr>
			</thead>
			<tbody>
				<tr data-ng-repeat="tmp in list" class="row">
					<td class="col-3 text-center">{{tmp.time}}</td>
					<td class="col-6 text-center">{{tmp.thema}}</td>
					<td class="col-3 text-center"><a href=""><span class="badge badge-info">{{tmp.state}}</span></a></td>
				</tr>
			</tbody>
		</table>
		<script>
			document.getElementById('dateselect').value = new Date().toISOString().substring(0, 10);
		</script>
	</div>
</div>
<jsp:include page="../templates/footer.jsp"></jsp:include>
</body>
</html>