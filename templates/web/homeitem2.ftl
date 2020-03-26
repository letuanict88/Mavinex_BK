<#import "/templates/system/common/cstudio-support.ftl" as studio />
  <div class="content__item" id="expertise" <@studio.iceAttr component=contentModel/>>
    <div class="content__title text--center">
      <h1 class="text--uppercase">${contentModel.title_s}</h1>
    </div>
    <div class="content__details row">
        <#list contentModel.contentitem_o.item as content>
            <@renderComponent component=content />
        </#list>
    </div>
  </div>
<@studio.toolSupport />