<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>后台管理</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<script>
		function deleteBlog(id){
			//用户安全提示
			if(confirm("您确定要删除吗？")){
				//访问路径
				location.href="${pageContext.request.contextPath}/deleteServlet?id="+id;
			}
		}


/*		window.onload = function(){
			//给删除选中按钮添加单击事件
			document.getElementById("delSelected").onclick = function(){
				if(confirm("您确定要删除选中条目吗？")){

					var flag = false;
					//判断是否有选中条目
					var cbs = document.getElementsByName("uid");
					for (var i = 0; i &lt; cbs.length; i++) {
						if(cbs[i].checked){
							//有一个条目选中了
							flag = true;
							break;
						}
					}

					if(flag){//有条目被选中
						//表单提交
						document.getElementById("form").submit();
					}

				}

			}
			//点击全部
			//1.获取第一个cb
			document.getElementById("firstCb").onclick = function(){
				//2.获取下边列表中所有的cb
				var cbs = document.getElementsByName("uid");
			//	3.遍历
				for (var i = 0; i &lt; cbs.length; i++) {
					//4.设置这些cbs[i]的checked状态 = firstCb.checked
					cbs[i].checked = this.checked;

				}

			}
		}*/

	</script>


</head>
<body>
<!-- Header -->
<div id="header">
	<div class="shell">
		<!-- Logo + Top Nav -->
		<div id="top">
			<h1><a href="#">MagicWolf</a></h1>
			<div id="top-navigation">
				欢迎&nbsp;&nbsp;<a href="#"><strong>${name}</strong></a>
				<span>|</span>
				<a href="${pageContext.request.contextPath}/login.jsp">退出</a>
			</div>
		</div>
		<!-- End Logo + Top Nav -->
		
		<!-- Main Nav -->
		<div id="navigation">
			<ul>
			    <li><a href="index.jsp" class="active"><span>首页</span></a></li>
			    <li><a href="publish.jsp" ><span>发布文章</span></a></li>
			</ul>
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
			<a href="${pageContext.request.contextPath}/login.jsp">首页</a>
			<span>&gt;</span>
			文章列表
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
						<h2 class="left">文章列表</h2>
						<div class="right">
							<form action="${pageContext.request.contextPath}/ShowServlet" method="post">
								<label>搜索文章</label>
								<input type="text" class="field small-field" name="searchStr"/>
								<input type="submit" class="button" value="搜索" />
							</form>
						</div>
					</div>
					<!-- End Box Head -->
					<!-- Table -->
					<div class="table">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th width="13"><input type="checkbox" class="checkbox" /></th>
								<th>标题</th>
								<th>日期</th>
								<th>作者</th>
								<th width="110" class="ac"></th>
							</tr>
							<c:forEach items="${allBlog}" var="blog" >
									<tr>
										<td><input type="checkbox" class="checkbox" /></td>
										<td><h3><a href="${pageContext.request.contextPath}/ShowFullBlog?id=${blog.id}">${blog.title}</a></h3></td>
										<td>${blog.date}</td>
										<td><a href="#">${blog.owner}</a></td>
										<td><a href="javascript:deleteBlog(${blog.id});" class="ico del">删除</a><a href="${pageContext.request.contextPath}/changeServlet?id=${blog.id}" class="ico edit">编辑</a></td>
									</tr>

<%--								<tr class="odd">
									<td><input type="checkbox" class="checkbox" /></td>
									<td><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
									<td>12.05.09</td>
									<td><a href="#">管理员</a></td>
									<td><a href="#" class="ico del">删除</a><a href="#" class="ico edit">编辑</a></td>
								</tr>--%>
							</c:forEach>
							<%--<tr>
								<td><input type="checkbox" class="checkbox" /></td>
								<td><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td>12.05.09</td>
								<td><a href="#">管理员</a></td>
								<td><a href="#" class="ico del">删除</a><a href="#" class="ico edit">编辑</a></td>
							</tr>
							<tr class="odd">
								<td><input type="checkbox" class="checkbox" /></td>
								<td><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td>12.05.09</td>
								<td><a href="#">管理员</a></td>
								<td><a href="#" class="ico del">删除</a><a href="#" class="ico edit">编辑</a></td>
							</tr>
							<tr>
								<td><input type="checkbox" class="checkbox" /></td>
								<td><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td>12.05.09</td>
								<td><a href="#">管理员</a></td>
								<td><a href="#" class="ico del">删除</a><a href="#" class="ico edit">编辑</a></td>
							</tr>
							<tr class="odd">
								<td><input type="checkbox" class="checkbox" /></td>
								<td><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td>12.05.09</td>
								<td><a href="#">管理员</a></td>
								<td><a href="#" class="ico del">删除</a><a href="#" class="ico edit">编辑</a></td>
							</tr>
							<tr>
								<td><input type="checkbox" class="checkbox" /></td>
								<td><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td>12.05.09</td>
								<td><a href="#">管理员</a></td>
								<td><a href="#" class="ico del">删除</a><a href="#" class="ico edit">编辑</a></td>
							</tr>
							<tr class="odd">
								<td><input type="checkbox" class="checkbox" /></td>
								<td><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td>12.05.09</td>
								<td><a href="#">管理员</a></td>
								<td><a href="#" class="ico del">删除</a><a href="#" class="ico edit">编辑</a></td>
							</tr>--%>
							<!--<tr class="odd">
								<td><input type="checkbox" class="checkbox" /></td>
								<td><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td>12.05.09</td>
								<td><a href="#">管理员</a></td>
								<td><a href="#" class="ico del">删除</a><a href="#" class="ico edit">编辑</a></td>
							</tr>
							<tr class="odd">
								<td><input type="checkbox" class="checkbox" /></td>
								<td><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td>12.05.09</td>
								<td><a href="#">管理员</a></td>
								<td><a href="#" class="ico del">删除</a><a href="#" class="ico edit">编辑</a></td>
							</tr>
							<tr class="odd">
								<td><input type="checkbox" class="checkbox" /></td>
								<td><h3><a href="#">Lorem ipsum dolor sit amet, consectetur.</a></h3></td>
								<td>12.05.09</td>
								<td><a href="#">管理员</a></td>
								<td><a href="#" class="ico del">删除</a><a href="#" class="ico edit">编辑</a></td>
							</tr>-->
						</table>
						
						
						<!-- Pagging -->
						<div class="pagging">
							<div class="left">1-2</div>
							<div class="right">
								<a href="#">上一页</a>
								<a href="#">1</a>
								<a href="#">2</a>
								<a href="#">3</a>
								<a href="#">4</a>
								<a href="#">245</a>
								<span>...</span>
								<a href="#">下一页</a>
								<a href="#">最后一页</a>
							</div>
						</div>
						<!-- End Pagging -->
						
					</div>
					<!-- Table -->
					
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
		<span class="left">&copy; 2010 - CompanyName</span>
		<span class="right">
			Design by <a href="http://chocotemplates.com" target="_blank" title="The Sweetest CSS Templates WorldWide">Chocotemplates.com</a>
		</span>
	</div>
</div>
<!-- End Footer -->
	
</body>
</html>