import org.craftercms.blueprints.headless.NewsSearchHelper


def searchHelper = new NewsSearchHelper(elasticsearch, urlTransformationService)
def intros = searchHelper.search(null)
println "List News:"
print news

templateModel.news = news