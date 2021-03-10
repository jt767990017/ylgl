<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../../static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../static/css/si.css" rel="stylesheet">
    <link href="../../static/css/font.css" rel="stylesheet">
    <link href="../../static/css/common.css" rel="stylesheet">
    <link rel="stylesheet" href="../../static/css/toastr.min.css" type="text/css" media="screen">

    <script src="../../static/js/jquery.min.js"></script>
    <script src="../../static/js/toastr.min.js"></script>
    <script type="text/javascript" src="../../static/js/area.js"></script>
    <script src="../../static/js/country.js"></script>
    <script>
        function ona() {
            $.ajax({
                url: "${pageContext.request.contextPath}/patient/huanzheyuyue",
                type: "post",
                data: $("form").serialize(),
                success: function (data) {
                    alert("预约成功")
                }
            })
        }
    </script>
</head>
<body>
<div id="header" class="header" style="margin-top: 0px;">
    <div class="container">
        <div style="width:60%; margin-left: 24%; padding-top:25px;">
            <h3>患者信息预约表</h3>
        </div>
    </div>
</div>

<div class="login-content">
    <div class="container" style="font-size: 12px;">
        <div class="panel panel-default" style="margin-top:10px;">
            <div class="panel-body">
                <form class="form-horizontal" id='br_form'>
                    <div class="form-group info-title">
                        <h3 for="" style="font-weight:normal; font-size:16px;" class="col-sm-12 ">个人信息</h3>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-2 col-sm-offset-2">
                            <button type="submit" onclick="ona()" class="btn btn-success btn-block">提 交</button>

                        </div>
                    </div>
                    <div class="form-group info-title">
                        <table class="table table-bordered" style="margin-bottom:8px;">
                            <tr>
                                <td style="width:145px;">姓名</td>
                                <td><input type="text" name="username" class="form-control" id="inputschool"></td>
                                <td style="width:145px;">出生年月</td>
                                <td><input type="datetime-local" name="birthday" class="form-control" id="inputschool1">
                                </td>
                            </tr>
                            <tr>
                                <td>性别</td>
                                <td>
                                    <label class="radio-inline">
                                        <input type="radio" name="sex" id="sex1" value="男"> 男
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="sex" id="sex2" value="女" checked> 女
                                    </label>
                                </td>
                                <td>婚姻状况</td>
                                <td>
                                    <label class="radio-inline">
                                        <input type="radio" name="marital" id="inlineRadio1" value="单身"> 单身
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="marital" id="inlineRadio2" value="已婚"> 已婚
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="marital" id="inlineRadio3" value="未婚"> 未婚
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td>国籍</td>
                                <td>
                                    <select id="nationality" name="nationality" class="form-control col-sm-2">
                                        <option value="中国">中国</option>
                                        <option value="日本">日本</option>
                                        <option value="韩国">韩国</option>
                                        <option value="澳大利亚">澳大利亚</option>
                                        <option value="美国">美国</option>
                                        <option value="加拿大">加拿大</option>
                                        <option value="塞尔维亚">塞尔维亚</option>
                                        <option value="伊拉克">伊拉克</option>
                                    </select>
                                </td>
                                <td>身份证或护照号码</td>
                                <td>
                                    <input type="" name="inumber" class="form-control" id="inputschoo3">

                                </td>
                            </tr>
                            <tr>
                                <td>职业</td>
                                <td>
                                    <input type="text" name="occupation" class="form-control" id="inputschoo4">
                                </td>
                                <td>手机号码</td>
                                <td>
                                    <input type="text" name="mobile" class="form-control" id="inputschoo5">
                                </td>
                            </tr>
                            <tr>
                                <td>公司名称</td>
                                <td>
                                    <input type="text" name="employer" class="form-control" id="inputschoo6">
                                </td>
                                <td>公司电话</td>
                                <td>
                                    <input type="text" name="ephone" class="form-control" id="inputschoo7">
                                </td>
                            </tr>
                            <tr>
                                <td>电子邮件</td>
                                <td>
                                    <input type="text" name="email" class="form-control" id="inputschoo8">
                                </td>
                                <td>首选联系方式</td>
                                <td>
                                    <label class="radio-inline">
                                        <input type="radio" name="communication" id="communication1" value="电话" checked>
                                        电话
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="communication" id="communication2" value="电子邮件"> 电子邮件
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="communication" id="communication3" value="短信"> 短信
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="communication" id="communication4" value="邮件"> 邮件
                                    </label>
                                </td>

                            </tr>
                            <tr>
                                <td>地址</td>
                                <td colspan="3"></td>

                            </tr>
                            <tr>
                                <td>紧急联系姓名</td>
                                <td></td>
                                <td>与患者的关系</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>紧急联系电话</td>
                                <td></td>
                                <td>了解渠道</td>
                                <td>朋友推荐</td>
                            </tr>
                            <tr>
                                <td>本次预约通过</td>
                                <td colspan="3">前台预约</td>
                            </tr>
                        </table>
                    </div>


                    <div class="form-group info-title">
                        <h3 for="" style="font-weight:normal; font-size:16px;" class="col-sm-12 ">医疗信息</h3>
                    </div>

                    <div class="form-group info-title">
                        <table class="table table-bordered" style="margin-bottom:8px;">
                            <tr>
                                <td style="width:145px;">就诊原因</td>
                                <td>
                                    <textarea name="reason" id="reason" class="form-control"
                                              placeholder="请注明详情"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>过往病史</td>
                                <td>无&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td>家族病史</td>
                                <td>无&nbsp;</td>
                            </tr>
                            <tr>
                                <td>目前用药</td>
                                <td>无&nbsp;</td>
                            </tr>
                            <tr>
                                <td>过敏药物</td>
                                <td>无&nbsp;</td>
                            </tr>
                        </table>
                    </div>


                    <div class="form-group info-title">
                        <h3 for="" style="font-weight:normal; font-size:16px;" class="col-sm-12 ">付款方式</h3>
                    </div>

                    <div class="form-group info-title">
                        <table class="table table-bordered" style="margin-bottom:8px;">
                            <tr>
                                <td style="width:145px;">付款方式</td>
                                <td>现金</td>
                            </tr>
                        </table>
                    </div>


                    <div class="form-group info-title">
                        <h3 for="" style="font-weight:normal; font-size:16px;" class="col-sm-12 ">授权协议</h3>
                    </div>


                    <div class="form-group info-title">
                        <table class="table table-bordered" style="margin-bottom:8px;">
                            <tr>
                                <td style="width:145px;">电子邮件授权</td>
                                <td>是</td>
                                <td style="width:145px;">短信授权</td>
                                <td>是</td>
                            </tr>
                            <tr>
                                <td>日期</td>
                                <td>
                                    <input type="datetime-local" name="creation_date" id="inputschoo9">
                                </td>
                                <td>患者或授权代表签字</td>
                                <td>
                                    <input type="d" name="authorized" class="form-control" id="authorized">

                                </td>
                            </tr>
                        </table>
                    </div>


                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>
