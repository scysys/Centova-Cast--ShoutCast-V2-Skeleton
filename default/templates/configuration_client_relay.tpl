{resource type="js" src="/system/jquery.centova.tabset.js" depends="common"}

<div class="fstabset" id="widgets_tabs">

	<fieldset>
		<legend>{="Relaying"}</legend>

<table cellspacing="1" cellpadding="0" border="0">

<tr><td colspan="2">{="Configures relaying of your stream by other servers, where your stream will act as a source for the remote server."}<br /><br /></td></tr>

<tr>
	<td width="200">{="Allow other servers to relay stream"}:</td>
	<td>
		<select name="config[allowrelay]" size="1">
		<option value="0"{if $config.allowrelay=="0"} selected="selected"{/if}>{="No"}</option>
		<option value="1"{if $config.allowrelay=="1"} selected="selected"{/if}>{="Yes"}</option>
		</select> {$errors.allowrelay|checkerror}
	</td>
</tr>
<tr>
	<td>{="Allow relays to make stream public"}:</td>
	<td>
		<select name="config[allowpublicrelay]" size="1">
		<option value="0"{if $config.allowpublicrelay=="0"} selected="selected"{/if}>{="No"}</option>
		<option value="1"{if $config.allowpublicrelay=="1"} selected="selected"{/if}>{="Yes"}</option>
		</select> {$errors.allowpublicrelay|checkerror}
	</td>
</tr>
</table>

<br />
{="Tip: Use the %sMount Points%s tab to configure your server to relay a remote stream.","<a href='#' onclick='go_mp_tab(); return false'>","</a>"}


	</fieldset>
	<fieldset>
		<legend>{="SHOUTcast CDN"}</legend>

		<table cellspacing="1" cellpadding="0" border="0">

		<tr><td colspan="2">{="Configures SHOUTcast Server CDN features (%sdetails%s).","<a href='http://wiki.shoutcast.com/wiki/SHOUTcast_Server_CDN_Features' target='_blank'>","</a>"}<br /><br /></td></tr>

		<tr>
			<td width="200">{="CDN mode"}:</td>
			<td>
				<select name="config[cdn]" size="1">
				<option value=""{if $config.cdn==""} selected="selected"{/if}>{="Off"}</option>
				<option value="on"{if $config.cdn=="on"} selected="selected"{/if}>{="On"}</option>
				<option value="always"{if $config.cdn=="always"} selected="selected"{/if}>{="Always"}</option>
				<option value="master"{if $config.cdn=="master"} selected="selected"{/if}>{="Master"}</option>
				</select> {$errors.cdn|checkerror}

				{tip type="icon"}<strong>{="Off"}</strong> - {="Disabled"}<br /><strong>{="On"}</strong> - {="Disabled by default; can be enabled per-mount point"}<br /><strong>{="Always"}</strong> - {="Enabled by default; can be disabled per-mount point"}<br /><strong>{="Master"}</strong> - {="Hybrid mode; all streams serve as CDN master by default; need to be manually configured to work as a CDN slave"}{/tip}

			</td>
		</tr>

		</table>

	</fieldset>


</div>
