<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>${contentModel.title_s}</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb-5121/css/all.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/owlcarousel234/dist/assets/owl.carousel.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/owlcarousel234/dist/assets/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap441/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select1139/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/styles.css"/>
    <link rel="stylesheet" href="/static-assets/css/mavinex.css"/>
    <style>
        .line-white{
            color: #FFF;
            
        }

        body {
  font-family: Arial;
  margin: 0;
}

* {
  box-sizing: border-box;
}

img {
  vertical-align: middle;
}

/* Position the image container (needed to position the left and right arrows) */
.container {
  position: relative;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Add a pointer when hovering over the thumbnail images */
.cursor {
  cursor: pointer;
}

/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 40%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* Container for image text */
.caption-container {
  text-align: center;
  background-color: #222;
  padding: 2px 16px;
  color: white;
}
/* 
.row:after {
  content: "";
  display: table;
  clear: both;
} */

/* Six columns side by side */
.column {
  float: left;
  /* width: 16.66%; */
  width: 24.633%;
  margin: 0 1px;
}

/* Add a transparency effect for thumnbail images */
.demo {
  opacity: 0.6;
}

.active,
.demo:hover {
  opacity: 1;
}

.mb-custom {
  /* position: absolute;
  bottom: 0; */
}
.btn-desc {
  background-color: #00559a;
  padding: 8px;
  width: 40%;
  bottom: 0;
  border: 1px solid #FFF;
  color: #FFF;
}
</style>
  </head>
  <body>
    <button onclick="topFunction()" id="btn-up-top" ><i class="fa fa-angle-up"></i></button>
    <@renderComponent component=contentModel.header_o.item />
    <div class="content" style="background-color: #FFF;">
        <@renderComponent component=contentModel.slide_o.item />
         <div class="recruitment ">
        <div class="content__title text--center">
            <h1 style="background-color: #00559a; padding:10px;" class="text--uppercase text-white text-left">Kỹ sư công trình</h1>
          </div>
        <div class="container p-3">         
            <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-6">
                    <#list contentModel.productimage_o.item as myItem>
                    	<div class="mySlides">
                            <div class="numbertext">1 / 6</div>
                            <img src="${myItem.productimage_s}" alt="${myItem.productimagename_s}" style="width:100%">
                        </div>
                    </#list>
                  <a class="prev" onclick="plusSlides(-1)">❮</a>
                  <a class="next" onclick="plusSlides(1)">❯</a>
                
                  <div class="container">
                    <div class="row">
                      <#list contentModel.productimage_o.item as myItem>
                         <div class="column">
                            <img class="demo cursor" src="${myItem.productimage_s}" style="width:100%; height: 80px;" onclick="currentSlide(${myItem?counter})" alt="The Woods">
                          </div>
                      </#list>
                    </div>
                  </div>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-6">
                   <h4 style="background-color: red; padding:10px;" class="text--uppercase">
                        ${contentModel.productname_s}
                  </h4>
                  <div>
                     <p>
                        ${contentModel.productdescription_html}
                      </p>
                  </div>
                  <div class="d-flex mb-custom">
                    <button class="btn-desc" style="width: 49%; margin-right: 2%;">${contentModel.phonenumber_s}</button>
                    <button class="btn-desc" style="width: 49%;">Yêu cầu báo giá</button>
                  </div>
                </div>
            </div>
        </div>
        <hr style="border: 3px solid #00559a">
        <div class="container">
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-6">
                <h4 style="background-color: #00559a; padding:10px; vertical-align: middle; line-height: normal;" class="text--uppercase text-white text--center">sản phẩm tương tự</h4>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6">
                  
              </div>
            </div>
        </div>
        <hr style="border: 3px solid #00559a">
      </div>  
    </div>
    <@renderComponent component=contentModel.memberlist_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <script src="/static-assets/plugins/jquery341/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap441/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select1139/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/owlcarousel234/dist/owl.carousel.min.js"></script>
    <script src="/static-assets/js/language_selector.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/smooth_scroll.js"></script>
    <script src="/static-assets/js/responsive.js"></script>
    <script src="/static-assets/js/search-bar.js"></script>
    <script src="/static-assets/js/handlebars.min-latest.js"></script>
    <script src="/static-assets/js/jquery.twbsPagination.min.js"></script>
    <script src="/static-assets/js/script.js"></script>
     <script>
      var slideIndex = 1;
      showSlides(slideIndex);
      
      function plusSlides(n) {
        showSlides(slideIndex += n);
      }
      
      function currentSlide(n) {
        showSlides(slideIndex = n);
      }
      
      function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        var captionText = document.getElementById("caption");
        if (n > slides.length) {slideIndex = 1}
        if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        //captionText.innerHTML = dots[slideIndex-1].alt;
      }
      </script>
  </body>
</html>
<@studio.toolSupport />