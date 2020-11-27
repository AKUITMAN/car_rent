<%--
  Created by IntelliJ IDEA.
  User: AKUITLI
  Date: 2020/11/23
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>登录-车速递租车</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="/css/pagehome.login.css">
    <script type="application/javascript" src="/js/jquery-3.3.1.js"></script>
    <script type="application/javascript" src="/js/bootstrap.min.js"></script>
    <script type="application/javascript" src="/layui/layui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue"></script>
</head>
<body>
<div data-v-0a99943a id="app">
    <div data-v-95c8bc32="" data-v-0a99943a="" class="header2">
        <div data-v-95c8bc32="" class="layout clear">
            <div data-v-95c8bc32="" class="left logo">
                <a data-v-95c8bc32="" href="index.html">
                    <img data-v-95c8bc32="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKYAAAAqCAYAAAA5+iDUAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3FpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QjgwRkFGQ0U4MzFDMTFFNzkzM0FCMEZGM0ZFMDMzQ0UiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QjgwRkFGQ0Q4MzFDMTFFNzkzM0FCMEZGM0ZFMDMzQ0UiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOmU1YTliNDEzLTU2NDEtMDc0MS05OTA2LTZhNDg5YjU1NzNlYyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiLz4gPC9y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">
                </a>
            </div>
            <h2 data-v-95c8bc32="" class="left">欢迎登录</h2>
            <h2 data-v-95c8bc32="" class="left" style="display: none;">欢迎注册</h2>
            <h2 data-v-95c8bc32="" class="left" style="display: none;">找回密码</h2>
            <h2 data-v-95c8bc32="" class="left" style="display: none;">重置密码</h2>
            <a data-v-95c8bc32="" href="index.jsp" class="right">回到首页&gt;</a>
        </div>
    </div>
    <div data-v-0a99943a="" class="login">
        <div data-v-0a99943a="" class="layout">
            <div data-v-0a99943a="" class="loginCom clear">
                <div data-v-0a99943a="" class="loginImg left">
                    <img data-v-0a99943a="" src="../images/login.a7fdfe2.jpg">
                </div>
                <div data-v-0a99943a="" class="loginType right">
                    <div class="denglu">
                        登&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp录
                    </div>
                    <div class="forms">
                        <form class="layui-form" method="post">
                            <div class="layui-form-item">
                                <label class="layui-form-label">用户名</label>
                                <div class="layui-input-block">
                                    <input type="text" name="tel" required  lay-verify="required" placeholder="请输入手机号" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label">密&nbsp&nbsp&nbsp&nbsp码</label>
                                <div class="layui-input-block">
                                    <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div data-v-0a99943a="" class="other clear"><a data-v-0a99943a="" href="backPass.html" class="right forget">忘记密码？</a></div>
                            <div class="layui-form-item">

                                <button class="layui-btn" lay-submit lay-filter="formDemo">登录</button>
                            </div>
                            <div data-v-0a99943a="" class="goRegister">
                                还没有账号？<a data-v-0a99943a="" href="register.jsp">免费注册</a></div>
                        </form>
                    </div>
                </div>
            </div>
            <div data-v-0a99943a="" class="loginPoster clear">
                <div data-v-0a99943a="" class="posterItem">
                    <div data-v-0a99943a="" class="bgOrange">
                        <img data-v-0a99943a="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEEAAABBCAYAAACO98lFAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3FpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RDc3MTA4RkE4OTc3MTFFNzgyQTBDMTlFNzlCRTgzOTUiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RDc3MTA4Rjk4OTc3MTFFNzgyQTBDMTlFNzlCRTgzOTUiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjM0ZmM3YWJmLTQ4NjEtMTY0Ni1hNzBhLTRlNzRiMzQzMWQ2NSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz75ZBWOAAADtklEQVR42uyaXUhUQRTH1UqzDxMlMyopsh6KJVQioqKlD4lIilSiiDAkUnoRgnoQjCIoKigRI3wI7UEIDCQqsR6SiEozkSioKCorMoqtrSzT3Nt/6CwMw9y929273Lt0DvzYe+eemR3/zj3nzGiyYRhJ/7ulJLGxCCwCi8AisAgsAovAIrAILAKLwCKwCCwCi8AisAheFGEBaANDwLDJMOgAhfGaZHIczxjzQTfIcmi8n2AVeJBIK+GkgwIISwdnEmklTAEBMAHUgYYYx9sF6uk6F3xwdLZChDhQZvy1YTDNxKcGvFLIMPFNAwEas9rp+cbrdSijz8sgaOKTCZ6ACokfJr6/wEW63uH0ZMfHQYA0sImuW6IInhXSfQ/4beLbDHaCFSAPDHhZhGIwmdLi9Qh+XdL1RHAQ1ERYDSLTTCXhxry2Eh4Cn3Q/Ik16NEK/ucBvMY9lYB2YT6/PJ/AIdHpNBJ9yn0qfiylFBkz6iXjQLt23US0grAQcB4ssVtJ+0OeFFHkUbABFmmcv6Ifpj/Cuhwuhp5RSG8GeKL97jISo90KK9Bmx2V6QAtps9q/1Qor0x9BXxI4mcACUSu27wWpNXAlSrDihrMb1bpfNs2Poe4z6H1LahSC3wAWlvZGC8Xal/azdGOeUCDk2+30G18A+SpOyiVpjOf3GDSl2nAbVYI6m5tjqpggzTNqHLHL6HVru2yKskmfgEt03UfVYa+Jf7mZg7FEC1QgoByL7TAdXlOeVwA/yQY5F0CsGRTRmHjgcwXfAzvydEuG1MpkG5XkW/RBhy5SeFVqIcJ/ErCJBv1v4u5YdcjT1gWwBqvZ0lmrS3goKqGYQAe8c1Rorqf291/YO6jglVMCEA9pSMFN6XkUV41vw0WRMUSpvkUrsdoodudQ2SdMn6GZM0JkofDbSMh408ekD40DQYok30/f0W/h12Zl/PHaRcp4vtfApoBqhUxPZb9ArIew5fdZJR3anQLbSpyNRj9yrqdDRHaR8IcLb629SW0jxH6YzB9fOGHWDfAUvo+g7RBuwVukwRrUWOnwRG7ElJj5HNFWna4cqYbspBbZoTGSBXjDLxnfdpv2Dq3sH3UoI/eMYg2AteKN5toaywzzNs7u0gkbdFqFb03bPxjjiTKFQOlQNm9gnbAYZUtsonVX4badGh2NCNp0wp9P9O6r3QzGMKd79SlodC+nVFRuox+AqOO/UYWsy/6s//1WaRWARWAQWgUVgEVgEFoFFYBFYBBaBRWARWAQWwZb9EWAAUgf3IV4F8yAAAAAASUVORK5CYII=">
                    </div>
                    <div data-v-0a99943a="">价格透明</div>
                </div>
                <div data-v-0a99943a="" class="empty"></div>
                <div data-v-0a99943a="" class="posterItem">
                    <div data-v-0a99943a="" class="bgYellow">
                        <img data-v-0a99943a="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEEAAABBCAYAAACO98lFAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3FpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RTBEQ0QzMUE4OTc3MTFFN0I4NDM4ODMxMEQ3MzMwM0UiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RTBEQ0QzMTk4OTc3MTFFN0I4NDM4ODMxMEQ3MzMwM0UiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjM0ZmM3YWJmLTQ4NjEtMTY0Ni1hNzBhLTRlNzRiMzQzMWQ2NSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7tphDsAAADVUlEQVR42uyaS2gUMRjHd9xa+rBsxaqtj63iA8S9rIpQTy0+8GpRVHwcqhdLQRFExBcexENPohYUEQR7ELwUehSvKnpYUIou+CgoFVERxWqrZfxHUxlCZiazk539Fr8P/mSayWSS336TfEnquK6b+t/NYQgMgSEwBIbAEBgCQ2AIDIEhMAQDmxGbouOEClYD7YWGoY+Qq9EUVISuQesN67VjwhPiyKD+LqjoRrfb0Oxytv1fH8oJAfePQFNu6SbgLapaCBKADStADVUHAfmbXLt2uZwQYs8O6gCF+jJIRqAFFgdw0cg1eFdBhUBidtDYMcsA/rCGTpCNE7yegLpakLyGGsvQVtHQZXjfK+qesL9EAD8MvWEPyWBJsYMlPvcQOmVQbidpCHDNlUhWxajihkGZXFDcUKrVWKxrq+f6RUSv+IxvfQwd3ObJm4TG5fV1MR7I643QTbujjaU4AddD3gDHchsLnrqv2I4TbI4J+YQWfWtJjgmg2YxkcUIQVlMdGHPK3ysApskS4FYkyz1Zs5A3lyIE1Qsa5P5BXAC1SG5pYo+lFCG0avJOohONMQCI6HNIzgaqzaE4Rc7X5C2E+qFen06Kd2/w/BDvIRESd0Jdcor121RpoQjB7xs9hM6OIAbQLYX3BQRIb6AvARDmUfwc0gH3LgHEOUgtU6cpOwodl59Be0CdTRQ9IR1y/wy0GSCOwiseyLxBaMxT5hP0BLoovSQxswXB5JfpgO4DxGOkd6EJ5X4W6oYyBnXVUoTwFGqOUL7DJ9803C6SXDuEvCMP7TAsuxvKJtH2pLbcs9AdufD5ANWFlG+DvkOT0EBVnzsgX2zb9UHflF3jnpBODSjl30HdVQdBnBHI0yOdjUL1Ph1aF3BQ06+ZYmlCkADuhZwhXNB0JgM9D3luUAVBDoJoIDRseJhy2PNcO/TI8Lmr1CGcjXiq9Ex6zUTE5w7YhmDl3AF15OQcn04gwPsqNnTx3rfUzh3OJwRgOjo9bbNCG/+psgR6mfp7OJKUiZ3oNrneIOEJuxIGML122E5pKd2ZqoxtoQQhVyEIeUpjws+U3ZMsUxOHuPVUIFTyfwAdKhDGbf0iEe0XNJMKhKo3hsAQGAJDYAgMgSEwBIbAEBhCqP0WYADxKqsDYTGzKAAAAABJRU5ErkJggg==">
                    </div>
                    <div data-v-0a99943a="">手续便捷</div>
                </div>
                <div data-v-0a99943a="" class="empty"></div>
                <div data-v-0a99943a="" class="posterItem">
                    <div data-v-0a99943a="" class="bgOrange">
                        <img data-v-0a99943a="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEEAAABBCAYAAACO98lFAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3FpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6Rjg0ODMxNzM4OTc3MTFFNzg3RjJBRTA5NkRCRDQzOTQiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6Rjg0ODMxNzI4OTc3MTFFNzg3RjJBRTA5NkRCRDQzOTQiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjM0ZmM3YWJmLTQ4NjEtMTY0Ni1hNzBhLTRlNzRiMzQzMWQ2NSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6+n6onAAACx0lEQVR42uyaPWhUQRDH83I5EU9Ro5LgZwyKnV2wsBEE0U5sxFQp/ChEEEGwsEhhIQhBES1SaWljazo1CLEJiFWwUEwMBIxG0ULQZP0NbOA4dh+53Ny7vWQG/uxx+2d275e392beJXPOdaz36OywMAgGwSAYBINgEAyCQTAIBsEgGITiIGRZVreIQfQBLflxcJV5Gg9ppRtVneuV0QMXDnm/XPj+i4SAtwe9dvkh8z1rEgK+ATTjVhbiG1hTEPAMoT+uvhD/UNtDYG4Deuwai0eSpy0h8H4veuN0QvL0NgtCU+oEEh9jmETHlVJKnkmfN/1iiY1eZBhHu5VTS75xn1990yrHwZ//UVdMjC5/T2jsv0uR50N0qaBKV9YR+lc0kmlCeIqmUbkACH/RS61kmcYvUGo1/CqPc0pXgmzoNsONyBfuT3TGN05XhV3As4BOoo3oBdoa8EjDNQL4O1r77lL+w/Sh7ZG5LX7uENoW8VT8B9+E9ubcvfo0N616HMglm96DSgHbL3zf8JS8J3i14FnwuXZ4cLWxiGbxLSV5HGRjbEo+4OnA9Fs0hmcRTz+vTwQ8r7wk9qGzAc87cswkWSdU5bseubffr/IMRzzDNU1XKJ60RdlszxgNgkEwCAbBILR/qDdQ5NvlK8La+IpvdvnRG0Pocdkcnjnv6WbYH/B8xzOdcgN1i+FmpGz+wbxUkhfQtchVOI/nFKM8MBmL9BhScd4DxN1UG6jDqDungdqJjuQ0WZt9A1XxZXNnzjrJNlAl3/2F2uTf+OZX4qk6VpXQBYe+SA+idRzUIJDnAC+PRo6CdgiA96z7ORkIxDn0rAnHKy/+ofPoeSoQPqKDLbi7fUL9qUBo5b/KN/yAU6tYahUElXW1IEy0CMJEShAuo6mCAUz5dZO5O1gDZRAMgkEwCAbBIBgEg2AQDIJBMAgGYZ3EfwEGAKPc9cUgOjp8AAAAAElFTkSuQmCC">
                    </div>
                    <div data-v-0a99943a="">全国连锁</div>
                </div>
                <div data-v-0a99943a="" class="empty"></div>
                <div data-v-0a99943a="" class="posterItem">
                    <div data-v-0a99943a="" class="bgYellow">
                        <img data-v-0a99943a="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEEAAABBCAYAAACO98lFAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA3FpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDE0IDc5LjE1MTQ4MSwgMjAxMy8wMy8xMy0xMjowOToxNSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MDRCQjJDNkU4OTc4MTFFN0E3MTQ5RkYyOEFEODFERjkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MDRCQjJDNkQ4OTc4MTFFN0E3MTQ5RkYyOEFEODFERjkiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIChXaW5kb3dzKSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjM0ZmM3YWJmLTQ4NjEtMTY0Ni1hNzBhLTRlNzRiMzQzMWQ2NSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo1NWY1ODZmZS0yNGNjLTg2NGMtODFmMi0yNjYzODhhNjczYTMiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz76yMiSAAAClElEQVR42uybv2sTYRjH7xy0ov0xtEXQFkqCCg7pVIQSUAeRxkIdWnTwH1AHu2Ww0EIXxw7FzU1oCdj6ox0arQpdihlKdVRcFMU6qUkjiOf3IW/gCIncmeeeu+SeBz5Dkjd3731yed/ned/EdhzHinscsDRUgkpQCSpBJagElaASVIJKUAkqIdISusF18AR8ByvgKjgaRmdswVK6E0yAKXARHKzTpgzWQQ48BT/bQQJ9spfBJBgDHT7e6xbyGJRaSUIzF94oiubOyBkx+1GUcBhkwDXGCxcTwiWBvrtHQhjTihyDKZeEMBcqbc0TNFlSCbGQUIq7hFmTYY6AX3GUMAPmwB/wGuzETcJdMO96nALD7SKBbunPHgRkXY9PgWfgUDtI+AHOgOPgjkcBSfAc9Ip8RJQxMvCv2Kxpm615/V7N60nw0fEeTfdfQkIZpBqIIAG26/mETwEsEqRqh2/gAnjjei5jqsDqe0+AlyAhXTtIFlD1RFhNCohUAfXVQxsa5DbMoMcl4EOUZodXHtsdMxdcFdEP8v8pwM95RSTkfLSlqbIAlsAuOC103sDHBEpovoAeweySzjcAfkflTqCMcEE4xV7gEMB5J1B0gXegT0DAJ3CSq9zmTJtpJ2la6C64xbnewF07PDADXpBxH6xyHjCozZctUwZzxzY4Z1V2pyJdRdIexCXwnvm4b8E4t4AgS2mavtKm4xxRMCn3XqutJ9Aiyih41ORxlsH5oARILKrQjHEF3Lb87xnS1+qGVfndQrBb9EzrCV4YAmse1wgegkGpvklKqJIGLxpcfB6cle6THeKfPmgV+aZV+S0DzfuLjANp6HlCy4XuRaoElaASVIJKUAkqQSWoBJWgElSCSvAefwUYAHpU1cT5ia7kAAAAAElFTkSuQmCC">
                    </div>
                    <div data-v-0a99943a="">用车无忧</div>
                </div>
            </div>


        </div>
    </div>

    <div data-v-3aaf9db2="" data-v-0a99943a="" class="footer2">
        <div data-v-3aaf9db2="" class="layout clear">
            <div data-v-3aaf9db2="" class="d1">
                <a data-v-3aaf9db2="" href="about.html">关于车速递</a>|
                <a data-v-3aaf9db2="" target="_blank" href="http://search.51job.com/list/co,c,2264765,0000,10,1.html">诚聘英才</a>|
                <a data-v-3aaf9db2="" href="about.html">联系我们</a>|<a data-v-3aaf9db2="" href="helpCenter.html">帮助中心</a>
            </div>
            <div data-v-3aaf9db2="" class="d2">
                <span data-v-3aaf9db2="">客服热线：400-919-8000</span>
                <span data-v-3aaf9db2="">服务时间：08:00-20:00</span>
            </div>
            <div data-v-3aaf9db2="" class="d3">上海车速递汽车租赁有限公司（总公司）杭州/深圳/广州/成都/武汉/苏州/佛山（分公司）</div>
            <div data-v-3aaf9db2="" class="d4">©2009-2018 Chesudi.com 上海车速递汽车租赁有限公司 All Rights Reserved. 沪ICP备09082566号  </div>
            <div data-v-3aaf9db2="" class="d5">
                <a data-v-3aaf9db2="" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010502003185" target="_blank">
                    <img data-v-3aaf9db2="" src="https://www.chesudi.com/static/img/gongan.d0289dc.png" class="img1"></a>
                <img data-v-3aaf9db2="" src="https://www.chesudi.com/static/img/cnnic.4528ccc.png" class="img2">
            </div>
        </div>
    </div>




</div>


<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(dt){
            $.ajax({
                url:"/user/login",
                type:"post",
                data:$("form").serialize(),
                dataType:'json',
                success:function(obj) {
                    console.log(obj.code);
                    if(obj.code == 1) {
                        window.location.href="loginsuccess.jsp";
                    }else {
                        layer.alert(obj.info);
                    }
                },
                error:function(){
                    layer.alert("ajax错误");
                }
            });
            return false;

        });
    });
</script>
</body>
</html>
