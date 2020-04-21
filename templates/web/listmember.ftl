<!-- <#import "/templates/system/common/cstudio-support.ftl" as studio />
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
<@studio.toolSupport /> -->
<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="mavinex-logos container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="owl-carousel owl-theme">
                <#list contentModel.member_o.item as element>
                <div class="item"><img src="${element.logo_s}" alt="Logo"></div>
                </#list>
            </div>
        </div>
    </div>
</div>
<@studio.toolSupport />