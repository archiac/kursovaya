<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>

<@c.page>

<h2 class="text-center">Список товаров </h2>
    <form method="post" action="/item/filter">
        <input type="text" name="filter" placeholder="Поиск по модели">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit">Найти</button>
    </form>
    <#if isAdmin>
    <a class="btn btn-primary" href="/item/addPhone" role="button">Добавить телефон</a>
    <a class="btn btn-secondary" href="/item/addLaptop" role="button">Добавить ноутбук</a>
    </#if>
<table class="table">
    <thead>
    <tr>
        <th>Номер</th>
        <th>Товар</th>
        <th>Модель</th>
        <th>Описание</th>
        <th>Цена</th>
        <#if isAdmin> <th>Доступность</th></#if>
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
       <#if isAdmin ><td>${item.isexist?string}</td></#if>
        <td>${item.qty}</td>
        <td>${item.options}</td>
        <td>
        <#if isAdmin><a href="/item/${item.id}" class="btn btn-primary" role="button" aria-pressed="true">Редактировать</a>
            <form method="post" action="/item/delItem">
                <input type="hidden" value="${item.id}" name="id">
                <input type="hidden" value="${_csrf.token}" name="_csrf">
                <button class="btn btn-danger" type="submit">Удалить</button>
            </form>
        <#else>
            <a href="/order/${item.id}" class="btn btn-danger" role="button" aria-pressed="true">Заказать</a>
            </#if>
        </td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>
