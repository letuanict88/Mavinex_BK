<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="content__logo-list" id="logoList" <@studio.iceAttr component=contentModel/>>
        <div class="content__logo-imgs owl-carousel owl-theme owl-loaded">
          <div class="owl-stage-outer">
            <div class="owl-stage">
              <#list contentModel.member_o.item as element>
                    <div class="content__logo-img owl-item"><img src="${element.logo_s}" alt="${element.imagealt_s}"/></div>
              </#list>
            </div>
          </div>
        </div>
    </div>
<@studio.toolSupport />