{resource type="js" src="/system/jquery.centova.tabset.js" depends="common"}

<div class="m-portlet m-portlet--mobile m-portlet--rounded m-portlet--head-solid-bg">
<div class="m-portlet__head sp-box-table">
<div class="m-portlet__head-caption">
<div class="m-portlet__head-title">
<h3 class="m-portlet__head-text sp-box-table"> {="Relaying"} </h3>
</div>
</div>
</div>
<div class="m-portlet__body">

<div class="fstabset" id="widgets_tabs">
<fieldset>
<legend>{="Relaying"}</legend>

<p>{="Configures relaying of your stream by other servers, where your stream will act as a source for the remote server."}</p>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Allow other servers to relay stream"}</span>
</div>
<select name="config[allowrelay]" class="form-control">
<option value="0"{if $config.allowrelay=="0"} selected="selected"{/if}>{="No"}</option>
<option value="1"{if $config.allowrelay=="1"} selected="selected"{/if}>{="Yes"}</option>
</select> {$errors.allowrelay|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Allow relays to make stream public"}</span>
</div>
<select name="config[allowpublicrelay]" class="form-control">
<option value="0"{if $config.allowpublicrelay=="0"} selected="selected"{/if}>{="No"}</option>
<option value="1"{if $config.allowpublicrelay=="1"} selected="selected"{/if}>{="Yes"}</option>
</select> {$errors.allowpublicrelay|checkerror}
</div>

<p>{="Tip: Use the %sMount Points%s tab to configure your server to relay a remote stream.","<a href='#' onclick='go_mp_tab(); return false'>","</a>"}</p>

</fieldset>
<fieldset>
<legend>{="SHOUTcast CDN"}</legend>

<p>{="Configures SHOUTcast Server CDN features (%sdetails%s).","<a href='http://wiki.shoutcast.com/wiki/SHOUTcast_Server_CDN_Features' target='_blank'>","</a>"}</p>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="CDN mode"}&nbsp;{tip type="icon"}<strong>{="Off"}</strong> - {="Disabled"}<br /><strong>{="On"}</strong> - {="Disabled by default; can be enabled per-mount point"}<br /><strong>{="Always"}</strong> - {="Enabled by default; can be disabled per-mount point"}<br /><strong>{="Master"}</strong> - {="Hybrid mode; all streams serve as CDN master by default; need to be manually configured to work as a CDN slave"}{/tip}</span>
</div>
<select name="config[cdn]" class="form-control">
<option value=""{if $config.cdn==""} selected="selected"{/if}>{="Off"}</option>
<option value="on"{if $config.cdn=="on"} selected="selected"{/if}>{="On"}</option>
<option value="always"{if $config.cdn=="always"} selected="selected"{/if}>{="Always"}</option>
<option value="master"{if $config.cdn=="master"} selected="selected"{/if}>{="Master"}</option>
</select> {$errors.cdn|checkerror}
</div>

</fieldset>

</div>

</div>
</div>