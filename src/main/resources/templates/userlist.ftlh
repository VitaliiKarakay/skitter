<#import "parts/common.ftlh" as c>
<@c.page>
    List of users
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Role</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <#if user.id!=1>
                <td><a href="/user/${user.id}">Edit</a> </td>
                </#if>
            </tr>
        </#list>
        </tbody>
    </table>
</@c.page>