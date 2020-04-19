<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div id="${contentModel.objectId}" class="carousel slide" data-ride="carousel" <@studio.iceAttr component=contentModel/>>
    <div class="carousel-inner">
        <#if (contentModel.image_o.item)??>
            <#assign first = true>
            <#list contentModel.image_o.item as element>
                <#if first>
                <div class="carousel-item welcome-img active"> 
                    <img src="${element.image_s!""}" class="img-responsive" alt="slide"></div>
                <#assign first = false>
                <#else>
                <div class="carousel-item welcome-img">
                    <img src="${element.image_s!""}" class="img-responsive" alt="slide"></div>
                </#if>
            </#list>
        </#if>
    <!--<div class="carousel-item welcome-img" style="background-image: url(&quot;../../assets/images/bg_1.png&quot;)">
    </div>
    <div class="carousel-item welcome-img" style="background-image: url(&quot;../../assets/images/bg_1.png&quot;)">
    </div>
    -->
    </div>
    
</div>
<@studio.toolSupport />