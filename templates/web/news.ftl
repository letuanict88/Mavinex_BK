<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content__title text--center">
    <h1 class="text--uppercase text--red">${contentModel.title_s}</h1>
</div>
<#list news as news>
    ${news.title_s}
</#list>
<@studio.toolSupport />