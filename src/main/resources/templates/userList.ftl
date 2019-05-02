<#import "parts/common.ftl" as c>

<@c.page>

Список пользователей
<table class="table">
    <thead>
    <tr>
        <th>Username</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Role</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
    <tr>
        <td>${user.username}</td>
        <td>${user.email}</td>
        <td>${user.phone}</td>
        <td><#list user.roles as role>${role}<#sep>, </#list></td>
        <td><a href="/user/${user.id}">Редактировать</a></td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>
