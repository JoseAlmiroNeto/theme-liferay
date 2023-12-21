<div class="c-mb-4 c-mt-4 search-total-label">
	<#if searchContainer.getTotal()==1>
		${languageUtil.format(locale, "x-result-for-x", [searchContainer.getTotal(), "<strong>" + htmlUtil.escape(searchResultsPortletDisplayContext.getKeywords()) + "</strong>"]
, false)}
		<#else>
			${languageUtil.format(locale, "x-results-for-x", [searchContainer.getTotal(), "<strong>" + htmlUtil.escape(searchResultsPortletDisplayContext.getKeywords()) + "</strong>"]
, false)}
	</#if>
</div>
<div class="container-news row w-100 w-sm-50">
	<#if entries?has_content>
		<#list entries as entry>
			<a href="${entry.getViewURL()}" class="card-layout-news w-100 col-xl-4 col-md-6 shadow-sm" style="text-decoration: none">
				<div class="card-layout-news-body d-flex flex-column">
					<div class="card-layout-news-body-date d-flex">
						<#if entry?has_content>
							${entry.getCreatorUserName()}
						</#if>
						<#if entry?has_content>
							${entry.getPublishedDateString()}
						</#if>
					</div>
					<#if entry?has_content>
						<h1 class="card-layout-news-body-title">
							${entry.getHighlightedTitle()}
						</h1>
					</#if>
					<#if entry?has_content>
						<p class="card-layout-news-body-content m-0">
							${entry.getContent()}
						</p>
					</#if>
				</div>
			</a>
		</#list>
	</#if>
</div>