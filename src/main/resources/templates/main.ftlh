<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" class="form-control" placeholder="filter" value = "${filter!}" />
                <button type="submit" class="btn btn-primary ml-2">Search</button>
            </form>
        </div>
    </div>
    <#if !user.activationCode??>
    <#include "parts/messageEdit.ftlh" />
        <#else>
            <div class="alert alert-danger" role="alert">
                In order to add a message you need to activate  your account. Check your email for activation.
            </div>
    </#if>

    <#include "parts/messageList.ftlh" />
</@c.page>