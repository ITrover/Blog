<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>${blog.title} &nbsp; 博客</title>
	<link rel="stylesheet" href="css/style.css" type="text/css"
		  media="all" />
</head>
<body>
<!-- Header -->
<div id="header">
	<div class="shell">
		<!-- Logo + Top Nav -->
		<div id="top">
			<h1>
				<a href="##t">xxxx</a>
			</h1>
			<div id="top-navigation">
				欢迎&nbsp;&nbsp;<a href="#"><strong>${name}</strong>
			</a> <span>|</span> <a href="${pageContext.request.contextPath}/login.jsp">退出</a>
			</div>

			<!-- End Logo + Top Nav -->

			<!-- Main Nav -->
			<div id="navigation">
				&nbsp;
				<ul>

					<li><a href="##" class="active"><span>文章内容</span>
					</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- End Main Nav -->
	</div>
</div>
<!-- End Header -->

<!-- Container -->
<div id="container">
	<div class="shell">

		<!-- Small Nav -->
		<div class="small-nav">
			<a href="${pageContext.request.contextPath}/ShowServlet">首页</a> <span>&gt;</span>
			文章内容
		</div>
		<!-- End Small Nav -->

		<br />
		<!-- Main -->
		<div id="main">
			<div class="cl">&nbsp;</div>

			<!-- Content -->
			<div id="content">


				<!-- Box -->
				<div class="box">
					<!-- Box Head -->
					<div class="box-head">
						<h2>文章内容</h2>
					</div>
					<!-- End Box Head -->

					<form action="edited" method="post">

						<!-- Form -->
						<div class="form">
							<p>

								<label>作者<span>*</span>
								</label> <label>${blog.owner}</label>
							</p>
							<p>

								<label>标题<span>*</span>
								</label> <label>${blog.title}</label>
							</p>
							<p>
								<label>类型<span>*</span>
								</label> <label>xxx</label>
							</p>

							<p class="inline-field">
								<label>Date</label><br>
								<label class="field size2">${blog.date}</label>
								<%--                                <lable class="field size2">xxx</lable>
                                                                <lable class="field size2">年</lable>
                                                                <lable class="field size3">xxx</lable>
                                                                <lable class="field size2">月</lable>
                                                                <lable class="field size3">xxx</lable>
                                                                <lable class="field size2">日</lable>--%>
							</p>
							<p>
								<label>内容<span>*</span>
								</label>
							<div class="contentStyle" style="overflow-y:scroll; overflow-y:scroll">
								<textarea class="field size1" >
									${blog.content}
								</textarea>
							</div>
							</p>

						</div>
						<!-- End Form -->

						<!-- Form Buttons -->

						<!-- End Form Buttons -->
					</form>
				</div>
				<!-- End Box -->

			</div>
			<!-- End Content -->

			<div class="cl">&nbsp;</div>
		</div>
		<!-- Main -->
	</div>
</div>
<!-- End Container -->

<!-- Footer -->
<div id="footer">
	<div class="shell">
		<span class="left">&copy; 2016 - For xxx</span> <span
			class="right"> Design by <a href="##"
										target="_blank" title="The Sweetest CSS Templates WorldWide">xxxTeam</a>
			</span>
	</div>
</div>
<!-- End Footer -->

</body>
</html>
