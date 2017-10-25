[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign box="list"}]

[{if $readonly}]
    [{assign var="readonly" value="readonly disabled"}]
[{else}]
    [{assign var="readonly" value=""}]
[{/if}]

<script type="text/javascript">
    <!--
    window.onload = function ()
    {
        top.reloadEditFrame();
        [{ if $updatelist == 1}]
        top.oxid.admin.updateList('[{ $oxid }]');
        [{ /if}]
    }
    //-->
</script>

<div id="liste">

    <form name="search" id="search" action="[{ $oViewConf->getSelfLink() }]" method="post">

        [{$oViewConf->getHiddenSid()}]
        <input type="hidden" name="cl" value="psblocks_tplblockslist">
        <input type="hidden" name="lstrt" value="[{$lstrt}]">
        <input type="hidden" name="actedit" value="[{$actedit}]">
        <input type="hidden" name="oxid" value="[{$oxid}]">
        <input type="hidden" name="fnc" value="[{$fnc}]">
        <input type="hidden" name="language" value="[{$actlang}]">
        <input type="hidden" name="editlanguage" value="[{$actlang}]">
        <input type="hidden" name="delshopid" value="[{$delshopid}]">
        <input type="hidden" name="updatenav" value="[{$updatenav}]">

        [{foreach from=$oView->getListSorting() item=aField key=sTable}]
        [{foreach from=$aField item=sSorting key=sField}]
            <input type="hidden" name="sort[[{$sTable}]][[{$sField}]]" value="[{$sSorting}]">
        [{/foreach}]
        [{/foreach}]


        <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <colgroup>
                <col width="5%">
                <col width="60%">
                <col width="25%">
                <col width="10%">
            </colgroup>
            <tr class="listitem">
                <td valign="top" class="listfilter first" height="35">&nbsp;</td>
                <td valign="top" class="listfilter">
                    <input class="listedit" type="text" size="50" maxlength="128" name="where[oxtplblocks][oxblockname]" value="[{ $where.oxtplblocks.oxblockname }]">
                </td>
                <td valign="top" class="listfilter">
                    <input class="listedit" type="text" size="50" maxlength="128" name="where[oxtplblocks][oxmodule]" value="[{ $where.oxtplblocks.oxmodule }]">
                </td>
                <td valign="top" class="listfilter">
                    <div class="find">
                        <input class="listedit" type="submit" name="submitit" value="[{ oxmultilang ident="GENERAL_SEARCH" }]">
                    </div>
                </td>
            </tr>
            <tr>
                <td class="listheader first" height="15" width="30" align="center">[{ oxmultilang ident="GENERAL_ACTIVTITLE" }]</td>
                <td class="listheader">&nbsp;<a href="Javascript:top.oxid.admin.setSorting( document.search, 'oxtplblocks', 'oxblockname', 'asc');document.search.submit();" class="listheader">[{ oxmultilang ident="PSBLOCKS_OXBLOCKS" }]</a></td>
                <td class="listheader">&nbsp;<a href="Javascript:top.oxid.admin.setSorting( document.search, 'oxtplblocks', 'oxmodule', 'asc');document.search.submit();" class="listheader">[{ oxmultilang ident="PSBLOCKS_OXMODULE" }]</a></td>
                <td class="listheader">&nbsp;</td>
            </tr>

            [{assign var="blWhite" value=""}]
            [{assign var="_cnt" value=0}]
            [{foreach from=$mylist item=listitem}]
            [{assign var="_cnt" value=$_cnt+1}]
            <tr id="row.[{$_cnt}]">
                [{ if $listitem->blacklist == 1}]
                [{assign var="listclass" value=listitem3 }]
                [{ else}]
                [{assign var="listclass" value=listitem$blWhite }]
                [{ /if}]
                [{ if $listitem->getId() == $oxid }]
                [{assign var="listclass" value=listitem4 }]
                [{ /if}]
                <td valign="top" class="[{ $listclass}][{ if $listitem->oxtplblocks__oxactive->value == 1}] active[{/if}]" height="15"><div class="listitemfloating">&nbsp;</div></td>
                <td valign="top" class="[{ $listclass}]"><div class="listitemfloating">&nbsp; <a href="Javascript:top.oxid.admin.editThis('[{ $listitem->oxtplblocks__oxid->value}]');" class="[{ $listclass}]">[{ $listitem->oxtplblocks__oxblockname->value }]</a></div></td>
                <td valign="top" class="[{ $listclass}]"><div class="listitemfloating">&nbsp; <a href="Javascript:top.oxid.admin.editThis('[{ $listitem->oxtplblocks__oxid->value}]');" class="[{ $listclass}]">[{ $listitem->oxtplblocks__oxmodule->value }]</a></div></td>
                <td class="[{ $listclass}]">[{ if !$listitem->isOx() && !$readonly }]<a href="Javascript:top.oxid.admin.deleteThis('[{ $listitem->oxtplblocks__oxid->value }]');" class="delete" id="del.[{$_cnt}]" [{include file="help.tpl" helpid=item_delete}]></a>[{/if}]</td>
            </tr>
            [{if $blWhite == "2"}]
            [{assign var="blWhite" value=""}]
            [{else}]

            [{assign var="blWhite" value="2"}]
            [{/if}]
            [{/foreach}]
            [{include file="pagenavisnippet.tpl" colspan="4"}]
        </table>

    </form>

</div>

[{include file="pagetabsnippet.tpl"}]

<script type="text/javascript">
    if (parent.parent)
    {   parent.parent.sShopTitle   = "[{$actshopobj->oxshops__oxname->getRawValue()|oxaddslashes}]";
        parent.parent.sMenuItem    = "[{ oxmultilang ident="ACTIONS_LIST_MENUITEM" }]";
        parent.parent.sMenuSubItem = "[{ oxmultilang ident="PSBLOCKS_MANAGE" }]";
        parent.parent.sWorkArea    = "[{$_act}]";
        parent.parent.setTitle();
    }
</script>

</body>
</html>