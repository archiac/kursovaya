<#--<#import "parts/common.ftl" as c>-->
<#--<#import "parts/login.ftl" as l>-->

<#--<@c.page>-->
<#--Login page-->
<#--<@l.login "/login" false/>-->
<#--<a href="/registrationClientInfo">Add new user</a>-->
<#--</@c.page>-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default" style="margin-top:45px">
                <div class="panel-heading">
                    <h3 class="panel-title">Войдите используя логин и пароль</h3>
                </div>
                <div class="panel-body">
                <#if logout>
                    <div class="alert alert-info" role="alert">Вы вышли из системы!</div>
                </#if>
                <#if error>
                    <div class="alert alert-danger" role="alert">Неверный логин или пароль!</div>
                </#if>

                    <form method="post">
                        <input name="${_csrf.parameterName}" value="${_csrf.token}" type="hidden">
                        <div class="form-group">
                            <label for="username">Логин</label>
                            <input type="text" class="form-control" id="username" placeholder="Логин"
                                   name="username">
                        </div>
                        <div class="form-group">
                            <label for="password">Пароль</label>
                            <input type="password" class="form-control" id="password" placeholder="Пароль"
                                   name="password">
                        </div>
                        <button type="submit" class="btn btn-default" style="margin-left: 40%;margin-right: 20%">Войти</button>
                        <a href="registration">Зарегистрироваться</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
