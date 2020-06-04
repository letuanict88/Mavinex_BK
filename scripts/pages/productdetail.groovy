import org.craftercms.blueprints.headless.GroupProductSearchHelper
import org.craftercms.blueprints.headless.TaxonomySearchHelper

def productGroup = contentModel.productchildgroup_o.item.key
def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def relatedProducts = searchHelper.searchProducts(productGroup.text, 0,5)


def categories = new TaxonomySearchHelper("product-category-child", elasticsearch, siteItemService)
						.getItems()

// def grouproductName = ""
// print "category======>"
// print categories.items.each{ item ->
//     print "category item : "
//     print item
//     if (item.value == contentModel.productchildgroup_o.item.key) {
//         grouproductName += item.label
//     }
// }
// print grouproductName
templateModel.groupProduct = categories
templateModel.relatedProducts = relatedProducts