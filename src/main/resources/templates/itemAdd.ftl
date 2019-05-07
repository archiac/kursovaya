<#import "parts/common.ftl" as c>

<@c.page>
<h2>Добавление товара</h2>
<form action="/item/addPhone" method="post">
    <div class="form-group row">
        <label for="Name" class="col-sm-2 col-form-label">Наименование</label>
        <div class="col-sm-10">
            <input type="text" name="name" id="name" class="form-control" value="${item.name}">
        </div>
    </div>
    <div class="form-group row">
        <label for="Description" class="col-sm-2 col-form-label">Описание</label>
        <div class="col-sm-10">
            <input type="text" name="Description" id="Description" class="form-control" value="${item.options}">
        </div>
    </div>
</form>
</@c.page>