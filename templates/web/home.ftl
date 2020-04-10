<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Trang chủ</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb-5121/css/all.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/owlcarousel234/dist/assets/owl.carousel.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap441/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select1139/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/styles.css"/>
  </head>
  <body>
    <@renderComponent component=contentModel.header_o.item />
    <!--<div class="welcome-img" style="background-image: url(&quot;../../assets/images/bg_1.png&quot;)"></div> -->
    <div class="content">
        <#list (contentModel.sections_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        
    </div>
    <div class="search-result container-fluid">
         <div class="content__title text--center">
          <h1 class="text--uppercase">Kết quả tìm kiếm</h1>
        </div>
        <div class="caption-search">
            <span>Kết quả tìm kiếm: </span>Tìm được <b id="total-search">0 kết quả</b> với từ khóa <b id="term-search">"Hòa Bình"</b>
        </div>
        
        <div class="separator">Danh sách kết quả tìm kiếm</div>
        
        <div class="search-result__list col-sm-12 col-md-8 col-lg-8">
        </div>
    <div>
    
    <!-- Handlebar Templates -->
	<script id="search-results-template" type="text/x-handlebars-template">
		{{#each results}}
		<div class="row">
		    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 row">
		        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
		            {{#if image}}
    		            <a href="{{url}}"><img src="{{image}}" width="100%"/></a>
    			    {{/if}}
		        </div>
		        <div class="title__search col-lg-6 col-md-6 col-sm-6 col-xs-12">
		            <a href="{{url}}"><h4><b>{{title}}</b></h4></a>
		            {{#if highlight}}
        		        <p class="limit-text-250">{{{highlight}}}</p>
        			{{/if}}
		        </div>
		    </div>
		    </div>
		</div>
		{{else}}
		    <p>No results found</p>
		{{/each}}
	</script>
    <@renderComponent component=contentModel.memberlist_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery341/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap441/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select1139/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/owlcarousel234/dist/owl.carousel.min.js"></script>
    <script src="/static-assets/js/language_selector.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/smooth_scroll.js"></script>
    <script src="/static-assets/js/responsive.js"></script>
    <script src="/static-assets/js/search-bar.js"></script>
    <script src="/static-assets/js/handlebars.min-latest.js"></script>
    <script src="/static-assets/js/script.js"></script>
  </body>
</html>
<@studio.toolSupport />