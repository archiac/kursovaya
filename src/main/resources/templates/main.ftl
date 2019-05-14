<#include "parts/security.ftl">
<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="card-columns">
    <#list items as item>
        <div class="card bg-light mb-3 my-3" style="max-width: 18rem;">
        <#--<#if item.getType() == "PHONE">-->
            <#--<div class="card-header"> ${item.type} </div>-->
        <#--<#else>-->
        <#--<div class="card-header">Ноутбук</div>-->
        <#--</#if>-->
        <div class="card-body">
        <h5 class="card-title">${item.name}</h5>
        <#--<p class="card-text">${item.options}</p>-->
            <p class="card-text"">${item.description}</p>
        </div>
    <p class="font-weight-bold ml-3">Цена: ${item.price}руб.</p>

<!-- Button trigger modal -->
<button type="button" class="btn-secondary" data-toggle="modal" data-target=#${item.name}>
    Характеристики
</button>

<!-- Modal -->
<div class="modal fade" id=${item.name} tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitle">${item.name}. Характеристики:</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ${item.options}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">ОК</button>
            </div>
        </div>
    </div>
</div>




        <div class="card-footer">
<label class="control-label">
<p class="text-left"">В наличии: ${item.qty}</p>
    </label>

        <a href="/order/${item.id}" class="btn btn-outline-success ml-3">Заказать</a>

        </div>
        </div>
    </#list>
    </div>
</@c.page>