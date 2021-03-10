//获取患者信息ID
var id = "";

/**
 * 请选择患者名称下拉框
 */
function chushihua() {
    $.ajax({
        url: $("#PageContext").val() + "/patient/aa/patientName",
        type: "post",
        success: function (res) {
            console.log(res);
            for (let i = 0; i < res.length; i++) {
                $("#xiala").append("<option value='" + res[i].patientName + "'>" + res[i].patientName + "</option>");
            }
        }
    })
}

/**
 * 请选择患者名称下的表单赋值
 */
function dianji() {
    $.ajax({
        url: $("#PageContext").val() + "/patient/aa/patientName=" + $("#xiala").val(),
        type: "post",
        success: function (date) {
            var val = $("#xiala").val();
            for (let i = 0; i < date.length; i++) {
                if (val === date[i].patientName) {
                    // console.log(date[i])
                    id = date[i].patientId;
                    $("#tablexingming").text(date[i].patientName);
                    $("#tablechushengnianyue").text(date[i].patientBirthday);
                    $("#tablexingbei").text(date[i].patientSex);
                    $("#tablehyzk").text(date[i].patientHyzk);
                    $("#tableguoji").text(date[i].patientGuoji);
                    $("#tableshenfenzheng").text(date[i].patientIdCard);
                    $("#tablezhiye").text(date[i].patientZhiye);
                    $("#tableshoujihaoma").text(date[i].patientSjhm);
                    $("#tablegongsimingcheng").text(date[i].patientGsmc);
                    $("#tablegongsidianhua").text(date[i].patientGsdh);
                    $("#tabledianziyoujian").text(date[i].patientGuoji);
                    $("#tableshouxuandizhi").text(date[i].patientSxlx);
                    $("#tablejiuzhenyuanyin").text(date[i].patientJzyx);
                    $("#tableriqi").text(date[i].patientSqxy);
                    $("#tableshouquanren").text(date[i].patientSqdbqz);
                    if (date[i].patientZdfa !== null && !date[i].patientZdfa !== "") {
                        $("#reasonaa").val(date[i].patientZdfa);
                    }
                }
            }

        }
    })
}

/**
 * 保存诊断方案
 */
function ontijaobaocun() {
    var val = $("#reasonaa").val();
    $.ajax({
        url: $("#PageContext").val() + "/patient/diagnosisA",
        type: "post",
        data: {id: id, zdfa: val},
        success: function (res) {
            alert("诊断保存成功")
        },
        error:function (){
            alert("诊断保存失败")
        }

    })
}

/**
 * 诊断方案查询表
 */
var username = "";

function dianjia() {

    $.ajax({
        url: $("#PageContext").val() + "/login/session",
        type: "post",
        success: function (res) {
            username = res;
        }
    })

    $.ajax({
        url: $("#PageContext").val() + "/patient/aa/patientName=" + "   ",
        type: "post",
        success: function (date) {
            for (let i = 0; i < date.length; i++) {
                var fullChars = pinyin.getFullChars(date[i].patientName);
                console.log(date[i].patientName);
                console.log(fullChars);
                if (username === fullChars.toLowerCase()) {
                    id = date[i].patientId;
                    $("#tablexingming").text(date[i].patientName);
                    $("#tablechushengnianyue").text(date[i].patientBirthday);
                    $("#tablexingbei").text(date[i].patientSex);
                    $("#tablehyzk").text(date[i].patientHyzk);
                    $("#tableguoji").text(date[i].patientGuoji);
                    $("#tableshenfenzheng").text(date[i].patientIdCard);
                    $("#tablezhiye").text(date[i].patientZhiye);
                    $("#tableshoujihaoma").text(date[i].patientSjhm);
                    $("#tablegongsimingcheng").text(date[i].patientGsmc);
                    $("#tablegongsidianhua").text(date[i].patientGsdh);
                    $("#tabledianziyoujian").text(date[i].patientGuoji);
                    $("#tableshouxuandizhi").text(date[i].patientSxlx);
                    $("#tablejiuzhenyuanyin").text(date[i].patientJzyx);
                    $("#tableriqi").text(date[i].patientSqxy);
                    $("#tableshouquanren").text(date[i].patientSqdbqz);
                    if (date[i].patientZdfa !== null && !date[i].patientZdfa !== "") {
                        $("#reasonaa").val(date[i].patientZdfa);
                    } else {
                        $("#reasonaa").val("请注明诊断方案以及诊断人姓名");
                    }
                }
            }

        }
    })
}