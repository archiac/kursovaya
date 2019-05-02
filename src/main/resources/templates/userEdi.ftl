<#import "parts/common.ftl" as c>

<@c.page>
<h2>Редактировать пользователя</h2>
<form action="/user" method="post">
    <div class="form-group row">
        <label for="Username" class="col-sm-2 col-form-label">Username</label>
        <div class="col-sm-10">
            <input type="text" name="username" id="Username" class="form-control" value="${user.username}">
        </div>
    </div>
    <div class="form-group row">
        <label for="Email" class="col-sm-2 col-form-label">Email</label>
        <div class="col-sm-10">
            <input type="text" name="email" id="Email" class="form-control" value="${user.email}">
        </div>
    </div>
    <fieldset class="form-group">
        <div class="row">
            <legend class="col-form-label col-sm-2 pt-0">Роль</legend>
            <div class="col-sm-10">
    <#list roles as role>
    <div class="col-sm-10">
        <label class="form-check-label"><input class="form-check-input" type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </div>
    </#list>
            </div>
        </div>
    </fieldset>
    <div>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <div class="form-group row">
            <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">Сохранить</button>
            </div>
</form>
</@c.page>