<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2021/9/17
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
        <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
</head>
<body>
        <div id="app">
            <form action="https://www.baidu.com" method="post" @submit.prevent="onSubmit" id="myForm">
                账号：<input type="text" name="adminName"><br>
                密码：<input type="text" name="adminPwd"><br>
                <input type="submit" value="登录">
            </form>
        </div>

        <script>
            var vm = new Vue({
                el:'#app',
                methods:{
                    onSubmit:function (e) {
                        //凡是事件都可以有个 e
                        console.log(e)
                        console.log(e.target)   //vue事件 可以通过e.target 拿到 标签中的dom元素
                        var form = document.getElementById('myForm');
                        console.log(form)
                        //拿取数据
                        var formDate = new FormData(e.target);
                        console.log(formDate.get('adminName'))//脱离了jquery！！！
                        //练习 引入axios ,写个ajax 发送到 通过post协议发给百度
                        axios.post('https://www.baidu.com')
                            .then(function (response) {
                                console.log(response.data.data);
                            })
                            .catch(function (error) {
                                console.log(error);
                            });

                        return false;


                    }
                }
            });
        </script>
</body>
</html>
