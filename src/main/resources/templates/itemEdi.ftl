<#import "parts/common.ftl" as c>

<@c.page>
<h2>Редактировать товар</h2>
<form action="/item" method="post">
    <div class="form-group row">
        <label for="Name" class="col-sm-2 col-form-label">Наименование</label>
        <div class="col-sm-10">
            <input type="text" name="name" id="name" class="form-control" value="${item.name}">
        </div>
    </div>
    <div class="form-group row">
        <label for="Description" class="col-sm-2 col-form-label">Описание</label>
        <div class="col-sm-10">
            <input type="text" name="Description" id="Description" class="form-control" value="${item.description}">
        </div>
    </div>
    <div class="form-group row">
        <label for="Price" class="col-sm-2 col-form-label">Цена</label>
        <div class="col-sm-10">
            <input type="text" name="Price" id="Price" class="form-control" value="${item.price}">
        </div>
    </div>
    <div class="form-group row">
        <label for="isExist" class="col-sm-2 col-form-label">Доступность</label>
        <div class="col-sm-10">
            <input type="text" name="isExist" id="isExist" class="form-control" value="${item.isexist?string}">
        </div>
    </div>
    <div class="form-group row">
        <label for="Qty" class="col-sm-2 col-form-label">Количество</label>
        <div class="col-sm-10">
            <input type="text" name="Qty" id="Qty" class="form-control" value="${item.qty}">
        </div>
    </div>
    <div class="form-group row">
        <label for="Description" class="col-sm-2 col-form-label">Опции</label>
        <div class="col-sm-10">
            <input type="text" name="Description" id="Description" class="form-control" value="${item.options}">
        </div>
    </div>

    <div>
        <input type="hidden" value="${item.id}" name="itemId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <div class="form-group row">
            <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">Сохранить</button>
            </div>
</form>
</@c.page>