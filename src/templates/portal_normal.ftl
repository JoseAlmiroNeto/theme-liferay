<!DOCTYPE html>
<#include init />
<html class="${root_css_class}" dir="<@liferay.language key=" lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>
		${html_title}
	</title>
	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<@liferay_util["include"]
		page=top_head_include />
</head>

<body class="${css_class}">
	<@liferay_ui["quick-access"]
		contentId="#main-content" />
	<@liferay_util["include"]
		page=body_top_include />
	<@liferay.control_menu />
	<div class="container-fluid position-relative px-0" id="wrapper">
		<header class="d-flex flex-column flex-sm-row align-items-center justify-content-center justify-content-sm-between px-4 py-2" id="banner" role="banner">
			<div class="d-flex align-items-center">
				<!-- Menu bar em hamburguer -->
				<div class="dropdown d-md-none">
					<button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<#if has_navigation && is_setup_complete>
							<#include "${full_templates_path}/navigation.ftl" />
						</#if>
					</div>
				</div>
				<!-- logo -->
				<div id="heading" class="d-flex align-items-center">
					<div aria-level="1" class="site-title" role="heading">
						<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments=" ${site_name}" key="go-to-x" />">
						<img alt="${logo_description}" src="${site_logo}" style="max-height: 100px; width: auto;" />
						</a>
					</div>
				</div>
				<!-- Menu navigation -->
				<div class="header-menu-bar d-none d-md-block">
					<#if has_navigation && is_setup_complete>
						<#include "${full_templates_path}/navigation.ftl" />
					</#if>
				</div>
			</div>
			<!-- Barra de Busca -->
			<div class="search-bar d-flex align-items-center">
				<@liferay_portlet["runtime"]
					portletName="com_liferay_portal_search_web_search_bar_portlet_SearchBarPortlet" />
			</div>
		</header>
		<section id="content">
			<h2 class="hide-accessible sr-only" role="heading" aria-level="1">
				${htmlUtil.escape(the_title)}
			</h2>
			<#if selectable>
				<@liferay_util["include"]
					page=content_include />
				<#else>
					${portletDisplay.recycle()}
					${portletDisplay.setTitle(the_title)}
					<@liferay_theme["wrap-portlet"]
						page="portlet.ftl">
						<@liferay_util["include"]
							page=content_include />
						</@>
			</#if>
		</section>
		<footer id="footer" role="contentinfo">
			<p class="powered-by">
				<@liferay.language_format
					arguments='<a href="http://www.liferay.com" rel="external">Liferay</a>'
					key="powered-by-x" />
			</p>
		</footer>
	</div>
	<@liferay_util["include"]
		page=body_bottom_include />
	<@liferay_util["include"]
		page=bottom_include />
	<script src="${javascript_folder}/slick.min.js"></script>
	<script src="${javascript_folder}/slickresponsive.js"></script>
</body>

</html>