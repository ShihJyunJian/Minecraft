<%@page import="controller.RegisterForm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>up9cloud.net - 九天之上 | Minecraft 麥塊 - 繁體中文私服</title>
        <base target="_self" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
        <link href="/resource/css/register.css" rel="stylesheet" type="text/css">
        <script src="/resource/js/register.usage.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <div id="signup">
                <div class="tabs">
                    <p><a href="#tab0" name="selector0" >普通註冊</a></p>
                    <p><a href="#tab1" name="selector1" >正版帳號註冊</a></p>
                </div>
                <br>
                <div class="tab_container">
                    <div id="tab0" class="tab_content">
                        <div class="sep"></div><br>
                        <div class="header">
                            請填寫資料：<br>
                        </div>
                        <div class="important" name="tips0">${tips0}</div>
                        <form id="registerform" name="registerform" action="register.do" method="post" onsubmit="return checktab2();">
                            <div class="inputs">
                                <input type="hidden"  name="status" value="0"/>
                                <select class="prefix" name="usernamePrefix">
                                    <option value="sp-" >sp-</option>
                                    <%--<option value="up9cloud-" >up9cloud-</option>
                                    <option value="-" >-</option>--%>
                                </select>
                                <input type="username" name="username" placeholder="請輸入帳號" autofocus />
                                <input type="hidden" name="email" placeholder="請輸入信箱"/>
                                <input type="password" name="password" placeholder="請輸入密碼" />
                                <br>
                                <input type="radio" name="sex" value="1">男
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="sex" value="2">女<br><br>
                                <%--<div class="checkboxy">
                                    <input name="cecky" id="checky" value="1" type="checkbox" /><label class="terms">同意使用者合約</label>
                                </div>--%>
                                <input id="submit" type="submit" value="確定註冊">
                            </div>
                        </form>
                    </div>
                    <div id="tab1" class="tab_content">
                        <div class="sep"></div><br>
                        <div class="header">
                            <div class="important">
                                注意！<br>
                                您必須有購買minecraft官方正版遊戲<br>
                                才可正版註冊<br>
                                如需代購請洽客服！<br>
                            </div>
                        </div>
                        <div class="tip" name="tips1">${tips1}</div>
                        <form id="registerform" name="registerform" action="register.do" method="post" onsubmit="return checktab1();">
                            <div class="inputs">
                                <input type="hidden" name="status" value="1"/>
                                <input type="hidden" name="usernamePrefix" value=""/>
                                <input type="hidden" name="username" placeholder="請輸入帳號"/>
                                <input type="email" name="email" placeholder="cs@up9cloud.net" autofocus />
                                <input type="password" name="password" placeholder="請輸入密碼"/>
                                <br>
                                <input id="sex" type="radio" name="sex" value="1">男
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="sex" value="2">女<br><br>
                                <%--<div class="checkboxy">
                                    <input name="cecky" id="checky" value="1" type="checkbox" /><label class="terms">同意使用者合約</label>
                                </div>--%>
                                <input id="submit" type="submit" value="確定註冊"></a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>