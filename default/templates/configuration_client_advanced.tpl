{include file="shoutcast_config_lang.tpl"}

<table cellspacing="1" cellpadding="0" border="0">
<tr>
	<td>{="UVOX cipher key"}:</td>
	<td><input type="text" name="config[uvoxcipherkey]" size="40" value="{$config.uvoxcipherkey|htmlentities}" /> {$errors.uvoxcipherkey|checkerror} </td>
</tr>
<tr><td colspan="2" style="font-size: 4px">&nbsp;</td></tr>
<tr>
	<td>{="Disconnect idle sources after"}:</td>
	<td><input type="text" name="config[autodumptime]" size="6" value="{$config.autodumptime|htmlentities}" /> {="second(s) (0 for never)"} {$errors.autodumptime|checkerror} </td>
</tr>
<tr>
	<td>{="Disconnect listeners if source disconnects"}:&nbsp;</td>
	<td>
		<select name="config[autodumpusers]" size="1">
		<option value="0"{if $config.autodumpusers==0} selected="selected"{/if}>{="No"}</option>
		<option value="1"{if $config.autodumpusers>0} selected="selected"{/if}>{="Yes"}</option>
		</select> {$errors.autodumpusers|checkerror} 
	</td>
</tr>
<tr>
	<td>{="Always disconnect listeners after"}:</td>
	<td><input type="text" name="config[listenertimer]" size="5" value="{$config.listenertimer|htmlentities}" /> {="minute(s) (0 for never)"} {$errors.listenertimer|checkerror}</td>
</tr>
{check $actual_admin>0}
<tr><td colspan="2" style="font-size: 4px">&nbsp;</td></tr>
<tr>
	<td>{="Hostname lookups"}:&nbsp;</td>
	<td>
		<select name="config[namelookups]" size="1">
		<option value="0"{if $config.namelookups==0} selected="selected"{/if}>{="Disabled (use IP addresses only)"}</option>
		<option value="1"{if $config.namelookups>0} selected="selected"{/if}>{="Enabled (may cause delays)"}</option>
		</select> {$errors.namelookups|checkerror} 
	</td>
</tr>
<tr><td colspan="2" style="font-size: 4px">&nbsp;</td></tr>
<tr>
	<td>{="Use server"}:&nbsp;</td>
	<td>
		<select name="config[useserver]" size="1">
		<option value="1"{if $config.useserver>0} selected="selected"{/if}>{="Yes"}</option>
		<option value="0"{if $config.useserver==0} selected="selected"{/if}>{="No"}</option>
		</select> {$errors.useserver|checkerror} 
	</td>
</tr>
<tr>
	<td>{="Nextsong debug"}:&nbsp;</td>
	<td colspan="3">
		<select name="config[nextsongdebug]" size="1">
		<option value="1"{if $config.nextsongdebug>0} selected="selected"{/if}>{="Yes"}</option>
		<option value="0"{if $config.nextsongdebug==0} selected="selected"{/if}>{="No"}</option>
		</select> {$errors.nextsongdebug|checkerror}
	</td>
</tr>
{/check}
</table>
<br />

<h1>{="Directory listings"}</h1>
<table cellspacing="1" cellpadding="0" border="0">
<tr><td colspan="4" style="font-size: 4px">&nbsp;</td></tr>
<tr>
	<td>{="Use YP v2"}:&nbsp;</td>
	<td>
		<select name="config[yp2]" size="1">
		<option value="0"{if $config.yp2==0} selected="selected"{/if}>{="No"}</option>
		<option value="1"{if $config.yp2>0} selected="selected"{/if}>{="Yes"}</option>
		</select> {$errors.yp2|checkerror} 
	</td>
	<td>{="YP request retries"}:&nbsp;</td>
	<td><input type="text" name="config[ypmaxretries]" size="6" value="{$config.ypmaxretries|htmlentities}" /> {$errors.ypmaxretries|checkerror}</td>
</tr>
<tr>
	<td>{="YP server address"}:&nbsp;</td>
	<td><input type="text" name="config[ypaddr]" size="30" value="{$config.ypaddr|htmlentities}" /> {$errors.ypaddr|checkerror}&nbsp;&nbsp;</td>
	<td>{="YP server port"}:&nbsp;</td>
	<td><input type="text" name="config[ypport]" size="6" value="{$config.ypport|htmlentities}" /> {$errors.ypport|checkerror}&nbsp;&nbsp;</td>
</tr>
<tr>
	<td>{="YP server path"}:&nbsp;</td>
	<td><input type="text" name="config[yppath]" size="30" value="{$config.yppath|htmlentities}" /> {$errors.yppath|checkerror}</td>
	<td>{="YP request timeout"}:&nbsp;</td>
	<td><input type="text" name="config[yptimeout]" size="6" value="{$config.yptimeout|htmlentities}" /> {$errors.yptimeout|checkerror}</td>
</tr>
<tr>
	<td>{="YP report interval"}:&nbsp;</td>
	<td><input type="text" name="config[ypreportinterval]" size="6" value="{$config.ypreportinterval|htmlentities}" /> {$errors.ypreportinterval|checkerror}</td>
	<td>{="YP minimum report interval"}:&nbsp;</td>
	<td><input type="text" name="config[ypminreportinterval]" size="6" value="{$config.ypminreportinterval|htmlentities}" /> {$errors.ypminreportinterval|checkerror}</td>
</tr>


</table>

{resource type="js" src="/system/shoutcast_config.js" depends="jq"}
