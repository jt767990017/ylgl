//登录
function summitTable() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    $.ajax({
        method: "post",
        url: "${pageContext.request.contextPath}/login/log?username=" + username + "&password=" + password,
        success: function (res) {
            console.log(res)
        }
    })
}
