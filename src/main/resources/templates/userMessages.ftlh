<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">



<@c.page>
    <#if isCurrentUser>
        <#if !isActivated??>
            <#include "parts/messageEdit.ftlh" />
        <#else>
            <div class="alert alert-danger" role="alert">
                Account is not activated
            </div>
        </#if>
    </#if>
    <#include "parts/messageList.ftlh" />

</@c.page>