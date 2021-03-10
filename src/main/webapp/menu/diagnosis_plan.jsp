<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../../static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../static/css/si.css" rel="stylesheet">
    <link href="../../static/css/font.css" rel="stylesheet">

    <script src="../../static/js/jquery.min.js"></script>
    <script src="../../static/js/Convert_Pinyin.js"></script>
    <script src="../../static/js/patient_information.js"></script>
</head>
<body onload="dianjia()">
<div id="header" class="header" style="margin-top: 0px;">
    <div class="container">
        <div style="width:60%; margin-left: 24%; padding-top:25px;">
            <h3>患者诊断信息查看表</h3>
        </div>
    </div>
</div>
<%--请选择患者名称：
<select id="xiala" onchange="dianji()">
    <option value="-1">---请选择---</option>
</select>--%>
<%--<input type="button" id="tijiaoanniu" value="保存诊断方案" onclick="ontijaobaocun()">--%>

<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
<div class="login-content">
    <div class="container" style="font-size: 12px;">
        <div class="panel panel-default" style="margin-top:10px;">
            <div class="panel-body">
                <form class="form-horizontal" id='br_form' action="" method='post'>
                    <div class="form-group info-title">
                        <h3 for="" style="font-weight:normal; font-size:16px;" class="col-sm-12 ">个人信息</h3>
                    </div>

                    <div class="form-group info-title">
                        <table class="table table-bordered" style="margin-bottom:8px;">
                            <tr>
                                <td style="width:145px;">姓名</td>
                                <td id="tablexingming"></td>
                                <td style="width:145px;">出生年月</td>
                                <td id="tablechushengnianyue"></td>
                            </tr>
                            <tr>
                                <td>性别</td>
                                <td id="tablexingbei"></td>
                                <td>婚姻状况</td>
                                <td id="tablehyzk"></td>
                            </tr>
                            <tr>
                                <td>国籍</td>
                                <td id="tableguoji"></td>
                                <td>身份证或护照号码</td>
                                <td id="tableshenfenzheng"></td>
                            </tr>
                            <tr>
                                <td>职业</td>
                                <td id="tablezhiye"></td>
                                <td>手机号码</td>
                                <td id="tableshoujihaoma"></td>
                            </tr>
                            <tr>
                                <td>公司名称</td>
                                <td id="tablegongsimingcheng"></td>
                                <td>公司电话</td>
                                <td id="tablegongsidianhua"></td>
                            </tr>
                            <tr>
                                <td>电子邮件</td>
                                <td id="tabledianziyoujian"></td>
                                <td>首选联系方式</td>
                                <td id="tableshouxuandizhi"></td>

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
                                <td id="tablejiuzhenyuanyin"></td>
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
                        <h3 for="" style="font-weight:normal; font-size:16px;" class="col-sm-12 ">诊断方案</h3>
                    </div>

                    <div class="form-group info-title">
                        <table class="table table-bordered" style="margin-bottom:8px;">
                            <tr>
                                <td style="width:145px;">诊断方案</td>
                                <td id="zhenduanfangantable">
                                    <textarea  name="reason" readonly id="reasonaa" class="form-control"
                                               placeholder="请注明诊断方案以及诊断人姓名"></textarea>
                                </td>
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
                                <td id="tableriqi"></td>
                                <td>患者或授权代表签字</td>
                                <td id="tableshouquanren"></td>
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
