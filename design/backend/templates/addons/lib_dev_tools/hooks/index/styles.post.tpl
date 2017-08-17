{if $addons.lib_dev_tools.dev_enable == "Y"}
	{if $addons.lib_dev_tools.dev_admin_css}
		<style type="text/css">
			{$addons.lib_dev_tools.dev_admin_css nofilter}
		</style>
	{/if}
	{if $addons.lib_dev_tools.dev_admin_bg == "Y"}
		{literal}
		<style type="text/css">
			body { 
				position: absolute;
				left:0;
				right: 0;
				top: 0;
				bottom: 0;
				height: 100%;
				width: 100%;
				background: linear-gradient(124deg, #ff2400, #e81d1d, #e8b71d, #e3e81d, #1de840, #1ddde8, #2b1de8, #dd00f3, #dd00f3);
				background-size: 1800% 1800%;
				animation: rainbow 18s ease infinite;
			}
			
			@keyframes rainbow { 
				0% {
					background-position: 0% 82%;
				}
				50% {
					background-position: 100% 19%;
				}
				100% {
					background-position: 0% 82%;
				}
			}
		</style>
		{/literal}
	{/if}
{/if}