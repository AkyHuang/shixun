<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <title>demo</title>
	<script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
	<script type="text/javascript">
  <!-- 加载 JQuery -->
  <script src="static/js/main.js"></script>
</head>
<body>
  <!-- 表格工具栏 -->
  <div id="toolbar" class="btn-group">
    <button id="btn_query" type="button" class="btn btn-default">
      <span class="glyphicon glyphicon-search" aria-hidden="true">
      </span>
      查询
    </button>
    <button id="btn_add" type="button" class="btn btn-default">
      <span class="glyphicon glyphicon-plus" aria-hidden="true">
      </span>
      新增
    </button>
    <button id="btn_edit" type="button" class="btn btn-default">
      <span class="glyphicon glyphicon-pencil" aria-hidden="true">
      </span>
      修改
    </button>
    <button id="btn_delete" type="button" class="btn btn-default">
      <span class="glyphicon glyphicon-remove" aria-hidden="true">
      </span>
      删除
    </button>
  </div>
  <!-- 表格工具栏 -->
  <!-- 表格 开始 -->
  <table id="table">
  </table>
  <!-- 表格 终止 -->
  <!-- Modal 开始 -->
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <!-- dialog 开始 -->
    <div class="modal-dialog">
      <div class="modal-content">
        <!-- Modal 头部 -->
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
            ×
          </button>
          <h4 class="modal-title" id="myModalLabel">
            编辑学生信息
          </h4>
        </div>
        <!-- Modal 头部 -->
        <!-- Modal 表单 -->
        <div class="modal-body">
          <form class="form-horizontal" role="form">
            <div class="form-group">
              <label for="Snumber" class="col-sm-2 control-label">
                学生学号
              </label>
              <input type="text" name="studentNumber" value="20181201" /><br/>
            </div>
            <div class="form-group">
              <label for="Sname" class="col-sm-2 control-label">
                学生姓名
              </label>
              <input type="text" name="studentName" /><br/>
            </div>
            <div class="form-group">
              <label for="Spassword" class="col-sm-2 control-label">
                学生密码
              </label>
              <input type="password" name="studentPassword" /><br/>
            </div>
            <div class="form-group">
              <label for="Ssex" class="col-sm-2 control-label">
                学生性别
              </label>
              <input name="studentSex" type="radio" value="1" checked /> 男
                 <input name="studentSex" type="radio" value="0" /> 女<br/>
            </div>
          </form>
        </div>
        <!-- Modal 表单 -->
        <!-- Modal 底部 -->
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">
            关闭
          </button>
          <button type="submit" id="btn_submit" form="" class="btn btn-primary">
            提交
          </button>
        </div>
        <!-- Modal 底部 -->
      </div>
    </div>
    <!-- dialog 终止 -->
  </div>
  <!-- Modal 终止 -->
</body>
   