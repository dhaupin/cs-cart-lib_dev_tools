{if $addons.lib_dev_tools.dev_enable == "Y" && $addons.lib_dev_tools.dev_log_input == "Y"}
<script type="text/javascript">
	$('input, textarea, select').click(function() {
		
		out = {
			'Action' : this.formAction,
			'All Data' : this,
			'Input Tag' : this.tagName, // also this.nodeName
			'Input Type' : this.type,
			'Input Value' : this.value,
			'Input Default' : this.defaultValue,
			'Input ID' : this.id,
			'Input Name' : this.name,
		}
		
		console.dir(out)
	});
</script>
{/if}