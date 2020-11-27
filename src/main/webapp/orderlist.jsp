<%--
  Created by IntelliJ IDEA.
  User: AKUITLI
  Date: 2020/11/25
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>车辆管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <script type="application/javascript" src="/js/jquery-3.3.1.js"></script>
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<table class="layui-hide" id="test" lay-filter="test"></table>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
    </div>
</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>


<script src="/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('table', function () {
        var table = layui.table;

        table.render({
            elem: '#test'
            , url: '/occ/findAllAdmin'
            , toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            , defaultToolbar: ['filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
                title: '提示'
                , layEvent: 'LAYTABLE_TIPS'
                , icon: 'layui-icon-tips'
            }]
            , title: '订单数据表'
            , cols: [[
                {type: 'checkbox', fixed: 'left'}
                , {field: 'id', title: 'ID', width: 80, sort: true, fixed: 'left'}
                , {field: 'carName', title: '车辆ID', width: 150}
                , {field: 'username', title: '用户ID', width: 100, sort: true}
                , {field: 'getCarName', title: '借车地点', width: 200}
                , {field: 'backCarName', title: '还车地点', width: 200}
                , {field: 'price', title: '订单金额', width: 100}
                , {field: 'status', title: '订单状态', width: 100}
                , {fixed: 'right', title: '操作', toolbar: '#barDemo', width: 150}
            ]]
            , page: true
        });

        //头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id);
            switch (obj.event) {
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：' + data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选' : '未全选');
                    break;

                //自定义头工具栏右侧图标 - 提示
                case 'LAYTABLE_TIPS':
                    layer.alert('这是工具栏右侧自定义的一个图标按钮');
                    break;
            }
            ;
        });

        //监听行工具事件
        table.on('tool(test)', function (obj) {
            var data = obj.data;
            //console.log(obj)
            if (obj.event === 'del') {
                layer.confirm('真的删除行么', function (index) {
                    //obj.del();
                    //layer.close(index);
                    $.ajax({
                        url: "/order/delById",
                        type: "get",
                        data: {"id": data.id},
                        dataType: "json",
                        success: function (data) {
                            obj.del();
                            layer.close(index);
                            layer.msg("删除成功", {icon: 6});
                        },
                        error: function (data) {
                            layer.msg("删除失败", {icon: 5});
                        }

                    });
                });
            } else if (obj.event === 'edit') {
                EidtUv(data, obj);
            }
        });

        function EidtUv(data, obj) {
            $("#id").val(data.id);
            $("#carName").val(data.carName);
            $("#username").val(data.username);
            $("#getCarName").val(data.getCarName);
            $("#backCarName").val(data.backCarName);
            $("#price").val(data.price);
            $("#status").val(data.status);
            $("#status").find("option[value = '" + data.status + "']").attr("selected", "selected");

            layer.open({
                title: '修改信息',
                type: 1,
                area: ['400px', '400px'],
                content: $("#form1")
            });
        }
    });
</script>
<form class="layui-form layui-form-pane1" id="form1" name="form1" style="display: none;" action="/order/updateOrder"
      method="post" lay-filter="first1">

    <div class="layui-form-item" style="display: none">
        <label class="layui-form-label">id</label>
        <div class="layui-input-inline">
            <input type="text" name="id" id="id" lay-verify="required|title" required placeholder="请输入账号"
                   autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">cid</label>
        <div class="layui-input-inline">
            <select name="carName" id="xm" lay-verify="required" lay-filter="xmFilter">
                <option value=""></option>
            </select>
            <%--<input type="text" name="cid" id="cid" readonly required placeholder="请输入账号" readonly="readonly"
                   autocomplete="off" class="layui-input">--%>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">uid</label>
        <div class="layui-input-inline">
            <input type="text" name="username" id="username" readonly lay-verify="required|" placeholder="请输入密码" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">getid</label>
        <div class="layui-input-inline">
           <%-- <select id="bg_id" name="bg_id" lay-verify="required" lay-filter="business" class="select">
                <option value=""></option>
            </select>--%>
             <select name='getid' id="getid" lay-filter="test" lay-search='' style="text-align: center">
                 <option value="0" {{# if (d.getid==7){ }} selected="selected" {{# } }}>虹桥火车站</option>
                 <option value="1" {{# if (d.getid==8){ }} selected="selected" {{# } }}>机场服务点</option>
                 <option value="2" {{# if (d.getid==9){ }} selected="selected" {{# } }}>足球场地铁站</option>
                 <option value="3" {{# if (d.getid==10){ }} selected="selected" {{# } }}>天山店</option>
                 <option value="4" {{# if (d.getid==11){ }} selected="selected" {{# } }}>新白云机场A区停车场服务点</option>
                 <option value="5" {{# if (d.getid==12){ }} selected="selected" {{# } }}>天河客运站店</option>
                 <option value="6" {{# if (d.getid==13){ }} selected="selected" {{# } }}>番禺店</option>
                 <option value="7" {{# if (d.getid==14){ }} selected="selected" {{# } }}>华南城店</option>
                 <option value="8" {{# if (d.getid==15){ }} selected="selected" {{# } }}>宝安汽车站店</option>
             </select>
            <%--<input type="text" name="getid" id="getid"  lay-verify="required|" placeholder="请输入密码" autocomplete="off" class="layui-input">--%>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">返回ID</label>
        <div class="layui-input-inline">
            <%-- <input type="text" name="backid" id="backid"  lay-verify="required|" placeholder="请输入密码" autocomplete="off" class="layui-input">--%>
            <select name='backid' id="backid" lay-filter="test" lay-search='' style="text-align: center">
                <option value="0" {{# if (d.backid==7){ }} selected="selected" {{# } }}>虹桥火车站</option>
                <option value="1" {{# if (d.backid==8){ }} selected="selected" {{# } }}>机场服务点</option>
                <option value="2" {{# if (d.backid==9){ }} selected="selected" {{# } }}>足球场地铁站</option>
                <option value="3" {{# if (d.backid==10){ }} selected="selected" {{# } }}>天山店</option>
                <option value="4" {{# if (d.backid==11){ }} selected="selected" {{# } }}>新白云机场A区停车场服务点</option>
                <option value="5" {{# if (d.backid==12){ }} selected="selected" {{# } }}>天河客运站店</option>
                <option value="6" {{# if (d.backid==13){ }} selected="selected" {{# } }}>番禺店</option>
                <option value="7" {{# if (d.backid==14){ }} selected="selected" {{# } }}>华南城店</option>
                <option value="8" {{# if (d.backid==15){ }} selected="selected" {{# } }}>宝安汽车站店</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">订单金额</label>
        <div class="layui-input-inline">
            <input type="text" name="price" id="price" lay-verify="required|" required placeholder="请输入用户名"
                   autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">订单状态</label>
        <div class="layui-input-inline">
            <input type="text" name="status" id="status" lay-verify="required|" placeholder="请输入使用者手机号码"
                   lay-verType="tips" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="*">修改</button>
        </div>
    </div>
</form>
<!--从数据库读出属性给下拉框辅助-->
<script>
    layui.use(['form', 'upload', 'layer'], function () {
        var form = layui.form;

        $.ajax({
            url: '/car/findCarName',
            dataType: 'json',
            type: 'get',
            //data: {page:1,limit:30},
            success: function (data) {
                $.each(data, function (index, item) {
                    //alert(item.name+"====="+ item.id);
                   //$('#xm').append(new Option(item.name, item.id));
                    $('#xm').append(new Option(item.name, item.id));// 下拉菜单里添加元素
                });
                $('#xm').val(1);
                layui.form.render("select");
                form.render();

//重新渲染 固定写法
            }
        })

    })
    /*layui.use('form', function () {
        var form = layui.form;
        form.on('select(business)', function (data) {
            $.ajax({
                type: "POST",
                url: '/occ/findAllAdmin',  //从数据库查询返回的是个list
                dataType: "json",
                contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                async: false,
                cache: false,
                success: function (data) {
                    $.each(data, function (index, item) {
                        $('#bg_id').append(new Option(item.getCarName, item.bg_zt));//往下拉菜单里添加元素
                    })
                    $('#bg_id').val();
                    layui.form.render("select");
                    //form.render();//菜单渲染 把内容加载进去
                }

            })
        });
    });
*/
</script>
<style type="text/css">
    .layui-table-cell {
        overflow: visible !important;
    }

    td .layui-form-select {
        margin-top: -10px;
        margin-left: -15px;
        margin-right: -15px;
    }

    .layui-form-select dl {
        z-index: 9999;

    }

    .layui-table-cell {
        overflow: visible;

    }

    .layui-table-box {
        overflow: visible;

    }

    .layui-table-body {
        overflow: visible;

    }

    .div-inline {
        display: inline
    }


    #fileName {
        position: relative;
        display: inline-block;
        background: #D0EEFF;
        border: 1px solid #99D3F5;
        border-radius: 4px;
        padding: 4px 12px;
        overflow: hidden;
        color: #1E88C7;
        text-decoration: none;
        text-indent: 0;
        line-height: 20px;
    }

    #fileName input {
        position: absolute;
        font-size: 100px;
        right: 0;
        top: 0;
        opacity: 0;
    }

    #fileName:hover {
        background: #AADFFD;
        border-color: #78C3F3;
        color: #004974;
        text-decoration: none;
    }
</style>

</body>
</html>
