<#import "parts/common.ftl" as c>

<@c.page>
<h2>Заказать товар</h2>
<form action="/order/orderAddOrd" method="post">
    <div class="form-group row">
        <label for="_model" class="col-sm-2 col-form-label">Наименование</label>
        <div class="col-sm-10">
            ${item.name}
            <input type="hidden" name="_model" id="_model" class="form-control" value="${item.name}">
        </div>
    </div>
    <div class="form-group row">
        <label for="_description" class="col-sm-2 col-form-label">Описание</label>
        <div class="col-sm-10">
            ${item.description}
            <input type="hidden" name="_description" id="_description" class="form-control" value="${item.description}">
        </div>
    </div>
    <div class="form-group row">
        <label for="_description" class="col-sm-2 col-form-label">Цена</label>
        <div class="col-sm-10">
            ${item.price}
        </div>
    </div>

    <div class="form-group row">
        <label for="_qty" class="col-sm-2 col-form-label">Количество</label>
        <div class="col-sm-10">
            <input type="text" name="_qty" id="_qty" class="form-control">
        </div>
    </div>

    <div class="form-group row">
        <label for="_username" class="col-sm-2 col-form-label">ФИО</label>
        <div class="col-sm-10">
            <input type="text" name="_username" id="_username" class="form-control"}>
        </div>
    </div>

    <div class="form-group row">
        <label for="_address" class="col-sm-2 col-form-label">Адрес доставки</label>
        <div class="col-sm-10">
            <input type="text" name="_address" id="_address" class="form-control">
        </div>
    </div>

    <div class="form-group row">
        <label for="_address" class="col-sm-2 col-form-label">Cпособ оплаты</label>
        <div class="col-sm-10">
            <div class="dropdown open">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Выберите способ оплаты
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" >Наличные</a>
                    <a class="dropdown-item" >Банковская карта</a>
                </div>
            </div>
        </div>
    </div>

    <div>
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <div class="form-group row">
            <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">Заказать</button>
            </div>
</form>
</@c.page>