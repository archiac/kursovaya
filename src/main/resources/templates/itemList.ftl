<#import "parts/common.ftl" as c>

<@c.page>

<h2 class="text-center">Список товаров </h2>
    <h6> </h6>

    <from method="post" action="filter" position="right">
        <input type="text" name="filter" placeholder="Поиск">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit">Найти</button>
    </from>
    <a class="btn btn-primary btn-lg btn-block" href="/item/addPhone" role="button">Добавить телефон</a>
    <a class="btn btn-secondary btn-lg btn-block" href="/item/addLaptop" role="button">Добавить ноутбук</a>
<table class="table">
    <thead>
    <tr>
        <th>#</th>
        <th>Товар</th>
        <th>Модель</th>
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
        <td><#list item.type as type>${type}<#sep>, </#list></td>
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
                <button class="btn btn-danger" type="submit">      Удалить     </button>
            </form></td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>
