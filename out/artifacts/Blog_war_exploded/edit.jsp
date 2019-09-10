<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title>后台管理</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
</head>
<body>
<!-- Container -->
<div id="container">
    <div class="shell">
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
                        <h2>修改文章</h2>
                    </div>
                    <!-- End Box Head -->

                    <form action="" method="post">

                        <!-- Form -->
                        <div class="form">
                            <p>
                                <span class="req">最多100字</span>
                                <label>标题<span>*</span></label>
                                <input type="text" class="field size1" name="title" value="${blog.title}"/>
                            </p>
                            <p class="inline-field">
                                <label>Date</label>
                                <input type="text" value="${blog.date}"/>
<%--                                <>--%>
<%--                                <input type="text" class="field size2"/>--%>
<%--                                <input type="text" class="field size3"/>--%>
<%--                                <input type="text" class="field size3"/>--%>
                            </p>

                            <p>
                                <label>内容<span>*</span></label>

                                <textarea class="field size1" rows="10" cols="30" name="content">
                                      ${blog.content}
                                </textarea>
                            </p>

                        </div>
                        <!-- End Form -->

                                                        <!-- Form Buttons -->
                        <div class="buttons">
                            <input type="button" class="button" value="取消" />
                            <input  type="submit" class="button" value="修改"  />
                        </div>
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
        <span class="left">&copy; 2010 - CompanyName</span>
        <span class="right">
			Design by <a href="http://chocotemplates.com" target="_blank" title="The Sweetest CSS Templates WorldWide">Chocotemplates.com</a>
		</span>
    </div>
</div>
<!-- End Footer -->

</body>
</html>