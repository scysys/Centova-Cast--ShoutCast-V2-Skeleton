{box title="Live Source Connections"}
	{="Enter this information into your live source software to perform a live broadcast"}.<br /><br />


{check $account.usesource!=2}
	{="When the %sautoDJ is running%s","<strong>","</strong>"} {="and you want to broadcast live to %sall autoDJ-controlled mount points%s","<strong>","</strong>"}:<br /><br />
	<div style="margin-left: 15px">
		<table cellspacing="1" cellpadding="1" border="0">
		<tr><td>{="Protocol"}:&nbsp;</td><td><strong>SHOUTcast (v1)</strong></td></tr>
		<tr><td>{="Server hostname"}:&nbsp;</td><td><strong>{$serverhostname|htmlentities}</strong></td></tr>
		<tr><td>{="Server port"}:&nbsp;</td><td><strong>{$account.port|add:2}</strong></td></tr>
		<tr><td>{="Bit rate"}:&nbsp;</td><td><strong>{$highestbitrate}</strong></td></tr>
		<tr><td valign="top">{="Password"}:&nbsp;</td><td>({="The username and password of one of your %sDJ accounts%s, separated by a colon","<a href='index.php?page=djaccounts'>","</a>"})</td></tr>
		<tr><td>&nbsp;</td><td>{="Example: %sjsmith:secret%s","<strong>","</strong>"}</td></tr>
		</table>
	</div>

	<br />

	{="When the %sautoDJ is not running%s","<strong>","</strong>"} {="or you want to broadcast live to a %snon-autoDJ mount point%s","<strong>","</strong>"}:<br /><br />

	<div style="margin-left: 15px">
{/check}

	{loop $mount=$acctconfig.mountpoints}
		{if $acctconfig.mountpoints|count>1}
			{="For the %s%s%s mount point","<strong>",$mount.streampath,"</strong>"}:<br /><br />
		{/if}
		<table cellspacing="1" cellpadding="1" border="0" style="margin-left: 15px">
		<tr><td>{="Protocol"}:&nbsp;</td><td><strong>SHOUTcast (v1)</strong></td></tr>
		<tr><td>{="Server hostname"}:&nbsp;</td><td><strong>{$serverhostname|htmlentities}</strong></td></tr>
		<tr><td>{="Server port"}:&nbsp;</td><td><strong>{$account.port|htmlentities}</strong></td></tr>
		{check $mount.liqencoder!=""}<tr><td>{="Format"}:</td><td><strong>{if $mount.liqencoder|contains:"aac"}AAC/AAC+{else}{$mount.liqencoder|strtoupper|htmlentities}{/if}</strong></td></tr>{/check}
		{if $mount.bitrate!=""}<tr><td>{="Bit rate"}:</td><td><strong>{="%s kbps",$mount.bitrate}</strong></td></tr>{/if}


		{if $acctconfig.mountpoints|count>1}
			<tr><td>{="Password"}:&nbsp;</td><td><strong>secret:#{$mount.streamid|htmlentities}</strong></td></tr>
			<tr><td></td><td>
				({="Replace 'secret' with the 'Source password' value from your %sstream settings%s, followed by a colon (:), a hash mark (#) and the number %d.","<a href='index.php?page=configure'>","</a>",$mount.streamid})
			</td></tr>
		{else}
			<tr><td>{="Password"}:&nbsp;</td><td><strong>({="The 'Source password' value from your %sstream settings%s","<a href='index.php?page=configure'>","</a>"})</td></tr>
		{/if}
		</table>
		<br />
	{/loop}

		{="Note"}: {="When the autoDJ is not running, each mount point must be sourced separately"}.

{check ($acctconfig.apptypes|contains:liquidsoap) and ($account.usesource!=2)}
	</div>
{/check}

{/box}
