<#import "parts/common.ftl" as c>

<@c.page>
<h2>Список товаров </h2>
<a href="/item/add" class="btn btn-primary"  role="button" aria-pressed="true">Добавить</a>
<table class="table">
    <thead>
    <tr>
        <th>#</th>
        <th>Наименование</th>
        <th>Описание</th>
        <th>Цена</th>
        <th>Доступность</th>
        <th>Количество</th>
        <th>Опции</th>
        <th>Действие</th>
    </tr>
    </thead>
    <tbody>
    <#list items as item>
    <tr>
        <td>${item.id}</td>
        <td>${item.name}</td>
        <td>${item.description}</td>
        <td>${item.price}</td>
        <td>${item.isexist?string}</td>
        <td>${item.qty}</td>
        <td>${item.options}</td>
        <td><a href="/item/${item.id}" class="btn btn-primary" role="button" aria-pressed="true">Редактировать</a>
            <form method="post" action="/item/delItem">
                <input type="hidden" value="${item.id}" name="id">
                <input type="hidden" value="${_csrf.token}" name="_csrf">
                <button class="btn btn-danger" type="submit">Удалить</button>
            </form></td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>
