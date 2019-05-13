<#import "parts/common.ftl" as c>

<@c.page>

<h2 class="text-center">Список пользователей</h2>
    <h6> </h6>
<table class="table">
    <thead>
    <tr>
        <th>Username</th>
        <th>Email</th>
        <th>Телефон</th>
        <th>Роль</th>
        <th>Действие</th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
    <tr>
        <td>${user.username}</td>
        <td>${user.email}</td>
        <td>${user.phone}</td>
        <td><#list user.roles as role>${role}<#sep>, </#list></td>
        <td><a href="/user/${user.id}" class="btn btn-primary" role="button" aria-pressed="true">Редактировать</a>
            <form method="post" action="/user/delUser">
                <input type="hidden" value="${user.id}" name="id">
                <input type="hidden" value="${_csrf.token}" name="_csrf">
                <button class="btn btn-danger" type="submit">      Удалить     </button>
            </form></td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>
