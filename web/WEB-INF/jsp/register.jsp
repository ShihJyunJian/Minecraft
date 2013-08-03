<%@page import="controller.RegisterForm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="/Minecraft/resource/CSS/fonts-min.css" rel="stylesheet" type="text/css" />
        <link href="/Minecraft/resource/CSS/tabview.css" rel="stylesheet" type="text/css" />
        <script src="/Minecraft/resource/js/yahoo-dom-event.js" type="text/javascript"></script>
        <script src="/Minecraft/resource/js/element-beta-min.js" type="text/javascript"></script>
        <script src="/Minecraft/resource/js/tabview.js" type="text/javascript"></script>
        <title>歡迎來到九天之上</title>
    </head>

    <body>
        <div id="yuitabview1" class="yui-navset">
            <ul class="yui-nav">

                <li  class="selected"><a href="#tab1"><em>正版帳號注冊</em></a></li>
                <li><a href="#tab2"><em>普通注冊</em></a></li>

            </ul>

            <div class="yui-content">
                <div id="tab1" align="left">
                    請填寫基本資料：<p>
                    <form id="registerform" name="registerform" action="register.do" method="post" onsubmit="return checktab1();">
                        <input type="hidden"  name="status" value="1">
                        <input type="hidden" name="username" value=""/><br>
                        電子信箱 <input type="text" title="email" value="請輸入帳號" name="email" onfocus="if (this.value==this.defaultValue) this.value=''"/><br>
                        密碼 <input type="password" value="" name="password"/><br><br>
                        性別
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="sex" type="radio" name="sex" value="1">男
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="sex" value="2">女<br><br>
                        <input type="submit" value="註冊"/>
                                    <div>${tips1}</div>
                    </form>
                </div>
                <div id="tab2" align="left">
                    請填寫基本資料：<p>
                    <form id="registerform" name="registerform" action="register.do" method="post" onsubmit="return checktab2();">
                        <input type="hidden"  name="status" value="0">
                        帳號 <input type="text" name="username" value="請輸入帳號" onfocus="if (this.value==this.defaultValue) this.value=''"/><br>
                        <input type="hidden" name="email" value="請輸入mail" onfocus="if (this.value==this.defaultValue) this.value=''"/><br>
                        密碼 <input type="password" name="password" value=""/><br><br>
                        性別
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="sex" value="1">男
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="sex" value="2">女<br><br>
                        <input type="submit" value="註冊"/>
                                    <div>${tips0}</div>
                    </form>
                </div>
            </div>
            <div align="right"><input type="button" value="回首頁" onClick="window.top.location.href = 'index.htm';"></div>
        </div>
        <script language="javascript" type="text/javascript">
                        function checktab1()
                        {
                            var x = top.document.getElementById("DOMWindowIframe").name;
                            var a = top.window.frames[x].document.getElementsByName("email");
                            var b = top.window.frames[x].document.getElementsByName("password");
                            var c = top.window.frames[x].document.getElementsByName("sex");

                            if (a[0].value === "") {
                                alert("請輸入信箱");
                                return false;
                            }
                            if (b[0].value === "") {
                                alert("請輸入密碼");
                                return false;
                            }
                            if (c[0].checked === false && c[1].checked === false) {
                                alert("請輸入性別");
                                return false;
                            }
                        }

                        function checktab2()
                        {
                            var x = top.document.getElementById("DOMWindowIframe").name;
                            var a1 = top.window.frames[x].document.getElementsByName("username");
                            var b = top.window.frames[x].document.getElementsByName("password");
                            var c = top.window.frames[x].document.getElementsByName("sex");

                            if (a1[1].value === "") {
                                alert("請輸入帳號");
                                return false;
                            }
                            if (b[1].value === "") {
                                alert("請輸入密碼");
                                return false;
                            }
                            if (c[2].checked === false && c[3].checked === false) {
                                alert("請輸入性別");
                                return false;
                            }
                        }



                        (function() {
                            var cn = document.body.className.toString();
                            if (cn.indexOf('yui-skin-sam') === -1) {
                                document.body.className += " yui-skin-sam";
                            }
                        })();

                        var yuitabview1 = new YAHOO.widget.TabView('yuitabview1');

        </script>
    </body>
</html>