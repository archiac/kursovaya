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
            <h2 class="text-center">Авторизация </h2>
                <div class="panel-body">
                <#if logout>
                    <div class="alert alert-info" role="alert">Вы вышли из системы!</div>
                </#if>
                <#if error>
                    <div class="alert alert-danger" role="alert">Неверный логин или пароль!</div>
                </#if>
                    <form class="form-horizontal" role="form"  method="post">
                        <input name="${_csrf.parameterName}" value="${_csrf.token}" type="hidden">
                        <div class="form-group">
                            <label for="username" class="col-sm-2 control-label">Логин</label>
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="username" placeholder="Логин"
                                   name="username">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-2 control-label">Пароль</label>
                            <div class="col-sm-10">
                            <input type="password" class="form-control" id="password" placeholder="Пароль"
                                   name="password">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary"">Войти</button>
                        <a href="registration">Зарегистрироваться</a>
                    </form>
                </div>

        </div>
    </div>
</div>
</body>
</html>
