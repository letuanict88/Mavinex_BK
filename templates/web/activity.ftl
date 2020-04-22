<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="content" <@studio.iceAttr component=contentModel/>>
        <div class="content__title">
                <div class="container">
                        <div class="content__title">
                          <#if (contentModel.title_s)??>
                          <h2 class="text--uppercase text--red">${contentModel.title_s}</h2>
                          </#if>
                        </div>
                </div>
        </div>
        <div class="content__details container">
            <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                        <#if (contentModel.item_o.item)??>
                                <#list contentModel.item_o.item as element>
                                    <div class="d-flex">
                                        <div class="activity__content-btn">
                                             <i class="fa fa-play text--red"></i> 
                                        </div>
                                        <div class="text-white">
                                            <p style="font-size:14pt;">${element.content_t}<p>
                                        </div>
                                    </div>
                                </#list>
                        </#if>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                        <#if (contentModel.image_s)?? >
                        <img src="${contentModel.image_s}" alt="Lĩnh vực hoạt động" width="100%">
                        </#if>
                    </div>
            </div>
        </div>
<@studio.toolSupport />