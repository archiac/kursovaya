<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
        <h5 class="my-0 mr-md-auto font-weight-normal">Shop</h5>
        <nav class="my-2 my-md-0 mr-md-3">
            <a class="p-2 text-dark" href="#">Бытовая техника</a>
            <a class="p-2 text-dark" href="#">Компьютеры</a>
            <a class="p-2 text-dark" href="#">Автотовары</a>
            <a class="p-2 text-dark" href="#">Оргтехника</a>
        </nav>
        <#if name == "unknown">
            <a class="btn btn-outline-primary" href="/login"> Войти </a>
        <#else>
            <div class="mr-4">${name}</div>
            <@l.logout />
        </#if>
    </div>


    </div>
</nav>