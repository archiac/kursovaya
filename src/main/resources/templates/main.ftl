<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="card-deck"
    <#list items as item>
        <div class="card bg-light mb-3 my-3" style="max-width: 18rem;">
        <#--<#if item.getType() == "PHONE">-->
            <#--<div class="card-header"> ${item.type} </div>-->
        <#--<#else>-->
        <#--<div class="card-header">Ноутбук</div>-->
        <#--</#if>-->
        <div class="card-body">
        <h5 class="card-title">${item.name}</h5>
        <p class="card-text">${item.options}</p>
        </div>
        <div class="card-footer">
        <a href="/order/${item.name}" class="btn btn-primary">Заказать</a>
        </div>
        </div>
    </#list>
    </div>
</@c.page>