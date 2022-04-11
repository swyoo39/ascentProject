<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/headers/">

<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="css/productlist.css" rel="stylesheet" >
<!-- Custom styles for this template -->
<link href="headers.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<%-- 아이콘 --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>ascent</title>
</head>
<body>
<!-- 메인홈바 -->
	<nav id="navBar" class="navbar navbar-expand-lg navbar">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					
				<!-- 상품 카테고리 한눈에 차라락 보여주기  -->
					<ul id="nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="main.do" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Scent </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="allList.do">All</a></li>
							<li><a class="dropdown-item" href="sFList.do">Floral</a></li>
							<li><a class="dropdown-item" href="sCList.do">Citrus</a></li>
							<li><a class="dropdown-item" href="sFRList.do">Fresh</a></li>
							<li><a class="dropdown-item" href="sFTList.do">Fruity</a></li>
							<li><a class="dropdown-item" href="sWList.do">Woody</a></li>
							<li><a class="dropdown-item" href="sOList.do">Oriental</a></li>
						</ul>
					</li> 
				<!-- 상품별로 보여주기  -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="main.do" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Perfume </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="allList.do">All</a></li>
							<li><a class="dropdown-item" href="pPList.do">Eau de perfume</a></li>
							<li><a class="dropdown-item" href="pTList.do">Eau de toilette</a></li>
							<li><a class="dropdown-item" href="pCList.do">Eau de cologne</a></li>
							<li><a class="dropdown-item" href="pBList.do">Body Spray</a></li>
						</ul>
					</li>
					<!-- 1:1문의 ,공지사항, 상품문의  -->
					<li><a class="nav-link px-2" href="#">About</a>
						<ul>
							<li><a href="noticeBoardList.do">Notice</a></li>
							<!-- <li><a href="counselList.do">Q&A</a></li> -->
							<%
							if(session.getAttribute("userID") == null){
							%>
							<li><a href="logInV.jsp">Q&A</a></li>
							<%
							}else if(session.getAttribute("userID") != null){
							%>
							<li><a href="counselList.do">Q&A</a></li>
						  <% } %>
						</ul>
					</li>
				</ul>
				</ul>
				<!--로고 -->
      			  <div class="container col-12 col-lg-auto me-lg-auto mb-2 mb-md-0">
   					 <a class="navbar-brand" href="main.do">
   					   <img src="assets/logo.png"  alt="" width="300" height="150">
  					  </a>
				  </div>
      			 <!--검색내용  -->
				<form  class="d-flex" method="post" action="searchProductV.jsp">
				<div>
					<input class="form-control me-2" type="search" placeholder="검색하기" aria-label="Search"> 
				</div>
					<div class="text-end">
					<k class="bi bi-search" style="font-size:2.1rem; cursor: pointer;"></k>
					<script>
					var k = 0;
					$('k').on('click', function() {
						if (k == 0) {
							$(this).attr('class', 'bi-search-heart');
							k++;
						} else if (k == 1) {
							$(this).attr('class', 'bi-search');
							k--;
						}
					});
				</script>
				</form>
				<!--검색 아이콘  -->
				<!-- <div class="text-end">
					<k class="bi bi-search" style="font-size:2.1rem; cursor: pointer;" href="#"></k>
					<script>
					var k = 0;
					$('k').on('click', function() {
						if (k == 0) {
							$(this).attr('class', 'bi-search-heart');
							k++;
						} else if (k == 1) {
							$(this).attr('class', 'bi-search');
							k--;
						}
					}); -->
				
				
				<!-- 마이페이지 -->
					<% 
				 	 if(session.getAttribute("userID") == null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='logInV.jsp'" ></i>
					<%
					}else if(session.getAttribute("userID") != null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='myPageV.jsp'" ></i>
				  <% } %>
				  <!-- 장바구니 -->
					<j  class="bi bi-bag-heart" style="font-size:2.3rem; cursor: pointer;" href="#"></j>
					<script>	
					var j = 0;
					$('j').on('click', function() {
						if (j == 0) {
							$(this).attr('class', 'bi-bag-check-fill');
							j++;
						} else if (j == 1) {
							$(this).attr('class', 'bi-bag-heart');
							j—;
						}
					});
					</script>
				</div>
			</div>
		</div>
	</nav>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber =1;
		if(request.getParameter("pageNumber")!=null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
			System.out.println("pageNumber="+pageNumber);
		}
		String searchWord = null;
		if(request.getParameter("searchWord")!=null){
			searchWord = (String) request.getParameter("searchWord");
			System.out.println("searchword from parameter is :" + searchWord);
		}
		if(session.getAttribute("searchWord")!=null){
			searchWord = (String) session.getAttribute("searchWord");
			System.out.println("searchword from session is :" + searchWord);
		}
	%>
	

	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<div>
						<div class=" col-lg-4">
							<input type="text" class="form-control pull-right" placeholder="Search" id="txtSearch" />
						</div>
						<button class="btn btn-primary" type="submit">
							<span class="glyphicon glyphicon-search"></span>
							<a href="searchProductV.jsp"></a>
						</button>
					</div>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
						ADaoP dao = new ADaoP();
						//System.out.println("here before getlist");
						ArrayList<Bbs> list = bbsDAO.getSearchedList(pageNumber,searchWord);
						//System.out.println("here after getlist" + list.get(0).getBbsDate().substring(0,11));
						for(int i=0;i<list.size();i++){
					%>
					<tr>
						<td><%=list.get(i).getBbsID()%></td>
						<td><a href="view.jsp?userID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll("<","&gt;").replaceAll("\n","<br>")%></a></td>
						<td><%= list.get(i).getUserID()%></td>
						<td><%=	list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11,13) + "시" + list.get(i).getBbsDate().substring(14,16) + "분"%></td>
					</tr>
					<% 
					
						}
					
					%>

				</tbody>
			</table>

				<tr>
				
					<td class = "pull-left">
					
						<% 
				if(pageNumber != 1) {
					session.setAttribute("searchWord",searchWord);
			%> <a href="searchedBbs.jsp?pageNumber=<%=pageNumber-1%>"
						class="btn btn-success btn-arrow-left">이전</a> <%		
				} if(bbsDAO.searchedNextPage(pageNumber,searchWord)) {
					session.setAttribute("searchWord",searchWord);
			%> <a href="searchedBbs.jsp?pageNumber=<%=pageNumber+1%>"
						class="btn btn-success btn-arrow-right">다음</a> <% 
				}
			%>
					</td>
					
					<td><a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
					</td>
				</tr>

			
		</div>
	</div>
	
	
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"crossorigin="anonymous"></script>	
</body>
</html>