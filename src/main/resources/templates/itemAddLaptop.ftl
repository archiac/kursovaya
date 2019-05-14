<#import "parts/common.ftl" as c>

<@c.page>
    <h2>Добавление ноутбука</h2>
    <h5> </h5>
    <form method="post" action="/item/itemAddLaptop">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Модель:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="name"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Описание:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="description"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Цена:</h5></label>
        <div class="col-sm-10">
            <input type="number" class="form-control" name="price"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Количество:</h5></label>
        <div class="col-sm-10">
            <input type="number" class="form-control" name="qty" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Характеристики:</h5></label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="options"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"><h5>Наличие:</h5></label>
        <div class="col-sm-10">
            <input type="checkbox" class="form-control" name="isexist" checked/>
        </div>
    </div>
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit" class="btn btn-success">Добавить в продажу</button>
    <h2> </h2>
    </form>
</@c.page>