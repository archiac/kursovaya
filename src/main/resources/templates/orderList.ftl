<#import "parts/common.ftl" as c>

<@c.page>

<h2 class="text-center">Список заказов</h2>
    <h6> </h6>
<table class="table">
    <thead>
    <tr>
        <th>Название</th>
        <th>Модель</th>
        <th>Количество</th>
        <th>Сумма</th>
        <th>ФИО</th>
        <th>Адрес</th>
        <th>Тип оплаты</th>
        <th>Действие</th>
    </tr>
    </thead>
    <tbody>
    <#list orders as order>
    <tr>
        <td>${order._description}</td>
        <td>${order._model}</td>
        <td>${order._qty}</td>
        <td>${order._amount}</td>
        <td>${order._username}</td>
        <td>${order._address}</td>
        <td>${order.payment}</td>
        <td> <form method="post" action="/order/addSale">
            <input type="hidden" value="${order.idorder}" name="orderId">
            <input type="hidden" value="${_csrf.token}" name="_csrf">
            <button class="btn btn-danger" type="submit">Оформить</button>
        </form></td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>
