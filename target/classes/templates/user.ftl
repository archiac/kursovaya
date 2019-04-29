<#import "parts/common.ftl" as c>

<@c.page "none">
<form method="post" action="/user/filter">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <h3 style="color: #1e90ff">Поиск пользователей по активности</h3>
    <input type="text" name="filter">
    <button class="btn btn-outline-primary" type="submit">Поиск</button>
</form>
<div class="wrapper">
    <form method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <div style="padding-top: 57px">
            <h3 style="color: #1e90ff">Пользователи, зарегестрированные в системе</h3>
            <table class="table table-bordered" >
                <thead >
                <tr>
                    <th scope="col">Логин</th>
                    <th scope="col">Роль</th>
                    <th scope="col">ФИО</th>
                    <th scope="col">Телефон</th>
                    <th scope="col">Почта</th>
                    <th scope="col">Активен</th>
                    <th scope="col" width="100">Удаление</th>
                    <th scope="col" width="100">Редактирование</th>
                </tr>
                </thead>
                <tbody>
                <#list users as user>
                <tr>
                    <td>${user.username}</td>
                    <td><#list user.roles as role>${role}<#sep>, </#list></td>
                    <td>${user.fio}</td>
                    <td>${user.phone}</td>
                    <td>${user.email}</td>
                    <td>${user.active?c}</td>
                    <td>
                        <form method="post" action="/user/deleteUser">
                            <input type="hidden" value="${user.id}" name="id">
                            <input type="hidden" value="${_csrf.token}" name="_csrf">
                            <button class="btn btn-danger" type="submit">Удалить</button>
                        </form>
                    </td>
                    <td>
                        <form method="get" action="/user/${user.id}">
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-secondary">Изменить</button>
                        </form>
                    </td>
                </tr>
                </#list>
                </tbody>
            </table>
        </div>
    </form>

</div>

<#--<script type="text/javascript">-->
    <#--$(document).on('change', 'input[type=checkbox]', function () {-->
        <#--var $this = $(this), $chks = $(document.getElementsByName(this.name)), $all = $chks.filter(".chk-all");-->

        <#--if ($this.hasClass('chk-all')) {-->
            <#--$chks.prop('checked', $this.prop('checked'));-->
        <#--} else switch ($chks.filter(":checked").length) {-->
            <#--case +$all.prop('checked'):-->
                <#--$all.prop('checked', false).prop('indeterminate', false);-->
                <#--break;-->
            <#--case $chks.length - !!$this.prop('checked'):-->
                <#--$all.prop('checked', true).prop('indeterminate', false);-->
                <#--break;-->
            <#--default:-->
                <#--$all.prop('indeterminate', true);-->
        <#--}-->
    <#--});-->
<#--</script>-->
</@c.page>