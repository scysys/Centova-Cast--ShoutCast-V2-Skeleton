	<div class="m-portlet m-portlet--mobile m-portlet--rounded m-portlet--head-solid-bg">
<div class="m-portlet__head sp-box-table">
<div class="m-portlet__head-caption">
<div class="m-portlet__head-title">
<h3 class="m-portlet__head-text sp-box-table"> {="Server Overrides"} </h3>
</div>
</div>
</div>
<div class="m-portlet__body">

<p>{="Controls the title and URL shown in media players.  Use %s to insert the title/URL provided by the source."}</p>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Stream title format"}</span>
</div>
<input type="text" name="config[titleformat]" class="form-control" value="{$config.titleformat|htmlentities}" /> {$errors.titleformat|checkerror}
</div>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Stream URL format"}</span>
</div>
<input class="form-control" type="text" name="config[urlformat]" size="50" value="{$config.urlformat|htmlentities}" /> {$errors.urlformat|checkerror}
</div>

<p>{="Public server determines whether the stream will appear in public yellow-pages services."}</p>

<div class="input-group mb-3">
<div class="input-group-prepend">
<span class="input-group-text">{="Public server"}</span>
</div>
<select name="config[publicserver]" class="form-control">
<option value="default"{if $config.publicserver=="default"} selected="selected"{/if}>{="Automatic (determined by source)"}</option>
<option value="never"{if $config.publicserver=="never"} selected="selected"{/if}>{="Never"}</option>
<option value="always"{if $config.publicserver=="always"} selected="selected"{/if}>{="Always"}</option>
</select> {$errors.publicserver|checkerror}
</div>

<div class="spred">{="Warning: if your stream is made public but the directory server cannot reach it, SHOUTcast DNAS may shut itself down without warning."}</p>

</div>
</div>
