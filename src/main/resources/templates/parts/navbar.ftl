<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <ul class="nav navbar-default">
        <li class="nav-item active">
            <a class="nav-link" href="/">Electron <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Телефоны</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Ноутбуки</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">О магазие</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Как связаться</a>
        </li>
        <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">Список пользователей</a>
            </li>
        <li class="nav-item">
            <a class="nav-link" href="/item">Список товаров</a>
        </li>
        </#if>
    </ul>
        <#if name == "unknown">
            <a class="btn btn-outline-primary" href="/login"> Войти </a>
        <#else>
            <div class="mr-4">${name}</div>
            <@l.logout />
        </#if>
</nav>