{resource type="js" src="/system/jquery.centova.tabset.js" depends="common"}
{resource type="js" src="/system/list_editor.js" id="listeditor" depends="common"}
{resource type="js" src="/system/mountpoint_list_editor.js" id="mpeditor" depends="listeditor"}
{resource type="js" src="/system/mp_sc_list_editor.js" depends="mpeditor"}

{onready}
	var ml = $('#mountlimit').length ? 'mountlimit' : {$config.mountlimit|atoi};
	window.mountpoint_list = new ShoutCastMPListEditor(window,'window.mountpoint_list','mountpoints',ml);
	window.mountpoint_list.configure({$config.port|atoi})
{/onready}

{css}
select#mountpoints_list {
    height: 40px !important;
}
{/css}

<div class="m-portlet m-portlet--mobile m-portlet--rounded m-portlet--head-solid-bg">
<div class="m-portlet__head sp-box-table">
<div class="m-portlet__head-caption">
<div class="m-portlet__head-title">
<h3 class="m-portlet__head-text sp-box-table"> {="Mount Points"} </h3>
</div>
</div>
</div>
<div class="m-portlet__body">

<select class="form-control" name="config[mountpoints][]" size="10" id="mountpoints_list">
{loop $mountpoint=$config.mountpoints}
<option value="{$mountpoint.asstring|htmlentities}">{$mountpoint.streampath|htmlentities}</option>
{/loop}
</select>

<!--<input type="button" id="mountpoints_new" value="{="Create new"}" />
<input type="button" id="mountpoints_remove" value="{="Remove"}" />-->

<div class="fstabset" id="mountpoints_form">
<fieldset id="mountpoint_settings_tab" class="accordion_active">
<legend>{="Settings"}</legend>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Stream path"}</span>
</div>
<input disabled="disabled" type="text" name="mountpoints_field[streampath]" class="list_editor_field form-control" size="30" value="" />
</div>

{check ($actual_admin) and ($config.have_v250==0)}
<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Legacy source port"}</span>
</div>
<input type="text" name="mountpoints_field[streamportlegacy]" class="list_editor_field form-control" size="5" value="" />
</div>
{/check}
</fieldset>

<!-- insert[sc2mpcfg] -->

<fieldset id="mountpoint_relay_tab" class="accordion_active">
<legend>{="Relaying"}</legend>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Relay URL"}</span>
</div>
{if $config.usesource==0}<input id="sc_relay_url" type="text" name="mountpoints_field[streamrelayurl]" class="list_editor_field form-control" size="50" value="" />{/if}
{if $config.usesource==1}<input id="sc_relay_url" class="form-control" disabled="disabled" value="{="Cannot simultaneously relay a remote stream and use the autoDJ."}" />{/if}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="CDN Master"}</span>
</div>
<select name="mountpoints_field[cdnmaster]" class="list_editor_field form-control">
<option value="">{="Auto"} ({="based on master CDN mode setting"})</option>
<option value="0">{="Off"}</option>
<option value="1">{="On"}</option>
</select>
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="CDN Slave"}</span>
</div>
<select name="mountpoints_field[cdnslave]" class="list_editor_field form-control">
<option value="">{="Auto"} ({="based on master CDN mode setting"})</option>
<option value="0">{="Off"}</option>
<option value="1">{="On"}</option>
</select>
</div>

</fieldset>
	
<input type="hidden" name="mountpoints_field[streamid]" class="list_editor_field" value="" />

</div>

</div>
</div>
