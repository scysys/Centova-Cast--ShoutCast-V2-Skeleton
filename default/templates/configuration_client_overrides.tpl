	
<table cellspacing="1" cellpadding="0" border="0">

<tr><td colspan="2">{="Controls the title and URL shown in media players.  Use %s to insert the title/URL provided by the source."}<br /><br /></td></tr>

<tr>
	<td width="110">{="Stream title format"}:</td>
	<td><input type="text" name="config[titleformat]" size="50" value="{$config.titleformat|htmlentities}" /> {$errors.titleformat|checkerror}</td>
</tr>
<tr>
	<td>{="Stream URL format"}:</td>
	<td><input type="text" name="config[urlformat]" size="50" value="{$config.urlformat|htmlentities}" /> {$errors.urlformat|checkerror}</td>
</tr>
<tr><td colspan="2"><br /><br /></td></tr>

<tr><td colspan="2">{="Public server determines whether the stream will appear in public yellow-pages services."}<br /><br /></td></tr>
<tr>
	<td>{="Public server"}:</td>
	<td>
		<select name="config[publicserver]" size="1">
		<option value="default"{if $config.publicserver=="default"} selected="selected"{/if}>{="Automatic (determined by source)"}</option>
		<option value="never"{if $config.publicserver=="never"} selected="selected"{/if}>{="Never"}</option>
		<option value="always"{if $config.publicserver=="always"} selected="selected"{/if}>{="Always"}</option>
		</select> {$errors.publicserver|checkerror}
	</td>
</tr>
	<tr><td colspan="2" class="info">
		<br />
		{="Warning: if your stream is made public but the directory server cannot reach it, SHOUTcast DNAS may shut itself down without warning."}<br /><br />
	</td></tr>

</table>
