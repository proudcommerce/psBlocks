[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign}]

[{ if $readonly }]
[{assign var="readonly" value="readonly disabled"}]
[{else}]
[{assign var="readonly" value=""}]
[{/if}]



<form name="transfer" id="transfer" action="[{ $oViewConf->getSelfLink() }]" method="post">
    [{ $oViewConf->getHiddenSid() }]
    <input type="hidden" name="oxid" value="[{ $oxid }]">
    <input type="hidden" name="cl" value="actions_main">
</form>


<form name="myedit" id="myedit" action="[{ $oViewConf->getSelfLink() }]" method="post">
    [{ $oViewConf->getHiddenSid() }]
    <input type="hidden" name="cl" value="psblocks_oxtplblocks_editor">
    <input type="hidden" name="fnc" value="save">
    <input type="hidden" name="oxid" value="[{ $oxid }]">
    <input type="hidden" name="editval[oxtplblocks__oxid]" value="[{ $oxid }]">
    <input type="hidden" name="sorting" value="">
    <input type="hidden" name="stable" value="">
    <input type="hidden" name="starget" value="">

    <br><br>
    <table cellspacing="0" cellpadding="0" border="0" width="98%" style="margin-left: 25px;">
        <colgroup>
            <col width="25%">
            <col width="75%">
        </colgroup>
        <tr>
            <td class="edittext">[{ oxmultilang ident="PSBLOCKS_ACTIVATE_DEACTIVATE" }]</td>
            <td class="edittext"><input type="text" class="editinput" size="50" name="editval[oxtplblocks__oxactive]" value="[{ $edit->oxtplblocks__oxactive->value }]" /></td>
        </tr>
        <tr>
            <td class="edittext">[{ oxmultilang ident="PSBLOCKS_OXTEMPLATE" }]</td>
            <td class="edittext"><input type="text" class="editinput" size="50" name="editval[oxtplblocks__oxtemplate]" value="[{ $edit->oxtplblocks__oxtemplate->value }]" /></td>
        </tr>
        <tr>
            <td class="edittext">[{ oxmultilang ident="PSBLOCKS_OXBLOCKS" }]</td>
            <td class="edittext"><input type="text" class="editinput" size="50" name="editval[oxtplblocks__oxblockname]" value="[{ $edit->oxtplblocks__oxblockname->value }]" /></td>
        </tr>
        <tr>
            <td class="edittext">[{ oxmultilang ident="PSBLOCKS_OXPOS" }]</td>
            <td class="edittext"><input type="text" class="editinput" size="50" name="editval[oxtplblocks__oxpos]" value="[{ $edit->oxtplblocks__oxpos->value }]" /></td>
        </tr>
        <tr>
            <td class="edittext">[{ oxmultilang ident="PSBLOCKS_OXFILE" }]</td>
            <td class="edittext"><input type="text" class="editinput" size="50" name="editval[oxtplblocks__oxfile]" value="[{ $edit->oxtplblocks__oxfile->value }]" /></td>
        </tr>
        <tr>
            <td class="edittext">[{ oxmultilang ident="PSBLOCKS_OXMODULE" }]</td>
            <td class="edittext"><input type="text" class="editinput" size="50" name="editval[oxtplblocks__oxmodule]" value="[{ $edit->oxtplblocks__oxmodule->value }]" /></td>
        </tr>
        <tr>
            <td class="edittext">
            </td>
            <td class="edittext"><br>
                <input type="submit" class="edittext" name="save" id="saveFormButton" value="[{ oxmultilang ident="GENERAL_SAVE" }]" [{ $readonly }]>
</form>
<br><br><br>

[{ if $edit}]
    <form name="myedit" id="myedit" action="[{ $oViewConf->getSelfLink() }]" method="post">
        [{ $oViewConf->getHiddenSid() }]
        <input type="hidden" name="cl" value="psblocks_oxtplblocks_editor">
        <input type="hidden" name="fnc" value="save">
        <input type="hidden" name="oxid" value="[{ $oxid }]">
        <input type="hidden" name="editval[oxtplblocks__oxid]" value="[{ $oxid }]">
        <input type="hidden" name="sorting" value="">
        <input type="hidden" name="stable" value="">
        <input type="hidden" name="starget" value="">

        [{ if $edit->oxtplblocks__oxactive->value eq 0 }]
        <input type="hidden" name="editval[oxtplblocks__oxactive]" value="1" />
        <input type="submit" value="[{ oxmultilang ident="PSBLOCKS_ACTIVATE" }]" />
        [{/if}]

        [{ if $edit->oxtplblocks__oxactive->value eq 1 }]
        <input type="hidden" name="editval[oxtplblocks__oxactive]" value="0" />
        <input type="submit" value="[{ oxmultilang ident="PSBLOCKS_DEACTIVATE" }]" />
        [{/if}]
    </form>
[{ /if }]
</td>
</tr>
</table>


</div>

<!-- END new promotion button -->

[{include file="bottomitem.tpl"}]