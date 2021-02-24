{resource type="js" src="/system/jquery.centova.tabset.js" depends="common"}
{resource type="js" src="/system/list_editor.js" id="listeditor" depends="common"}
{resource type="js" src="/system/mountpoint_list_editor.js" id="mpeditor" depends="listeditor"}
{resource type="js" src="/system/mp_sc_list_editor.js" depends="mpeditor"}

{onready}
	var ml = $('#mountlimit').length ? 'mountlimit' : {$config.mountlimit|atoi};
	window.mountpoint_list = new ShoutCastMPListEditor(window,'window.mountpoint_list','mountpoints',ml);
	window.mountpoint_list.configure({$config.port|atoi})
{/onready}

{="Current mount points"}:<br />

<div class="list_editor_manager">

	<select class="list_editor_list" name="config[mountpoints][]" size="10" id="mountpoints_list">
	{loop $mountpoint=$config.mountpoints}
	<option value="{$mountpoint.asstring|htmlentities}">{$mountpoint.streampath|htmlentities}</option>
	{/loop}
	</select>
	<br />

	<input type="button" id="mountpoints_new" value="{="Create new"}" />
	<input type="button" id="mountpoints_remove" value="{="Remove"}" />

</div>
<div class="list_editor_form fstabset" id="mountpoints_form">

	<fieldset id="mountpoint_settings_tab" class="accordion_active">
		<legend>{="Settings"}</legend>
		<table cellspacing="1" cellpadding="0" border="0">
		<tr>
			<td width="130">{="Stream path"}:</td>
			<td><input type="text" name="mountpoints_field[streampath]" class="list_editor_field" size="30" value="" /></td>
		</tr>
		{check ($actual_admin) and ($config.have_v250==0)}
		<tr>
			<td width="130">{="Legacy source port"}:</td>
			<td><input type="text" name="mountpoints_field[streamportlegacy]" class="list_editor_field" size="5" value="" /></td>
		</tr>
		{/check}
		</table>
	</fieldset>

	<!-- insert[sc2mpcfg] -->

	<fieldset id="mountpoint_relay_tab" class="accordion_active">
		<legend>{="Relaying"}</legend>

		<table cellspacing="1" cellpadding="0" border="0">
		<tr>
			<td width="100">{="Relay URL"}:</td>
			<td id="sc_relay_url">
				<input type="text" name="mountpoints_field[streamrelayurl]" class="list_editor_field" size="50" value="" />
				<span style="opacity: 0.7">({="Cannot simultaneously relay a remote stream and use the autoDJ."})</span>
			</td>
		</tr>
		</table>

		<br />

		<table cellspacing="1" cellpadding="0" border="0">
		<tr>
			<td width="100">{="CDN Master"}:</td>
			<td>
				<select name="mountpoints_field[cdnmaster]" class="list_editor_field" size="1">
				<option value="">{="Auto"} ({="based on master CDN mode setting"})</option>
				<option value="0">{="Off"}</option>
				<option value="1">{="On"}</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>{="CDN Slave"}:</td>
			<td>
				<select name="mountpoints_field[cdnslave]" class="list_editor_field" size="1">
				<option value="">{="Auto"} ({="based on master CDN mode setting"})</option>
				<option value="0">{="Off"}</option>
				<option value="1">{="On"}</option>
				</select>
			</td>
		</tr>
		</table>

	</fieldset>
	
	<input type="hidden" name="mountpoints_field[streamid]" class="list_editor_field" value="" />
	<br />

</div>
