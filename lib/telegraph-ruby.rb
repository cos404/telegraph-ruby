require "request.rb"

class Telegraph include Request

  def createAccount(query)
    method = 'createAccount'
    post(method, query)
  end

  def createPage(query)
    method = 'createPage'
    post(method, query)
  end

  def editAccountInfo(query)
    method = 'editAccountInfo'
    post(method, query)
  end

  def editPage(query)
    method = 'editPage'
    post(method, query)
  end

  def getAccountInfo(query)
    method = 'getAccountInfo'
    post(method, query)
  end

  def getPage(query)
    method = 'getPage'
    post(method, query)
  end

  def getPageList(query)
    method = 'getPageList'
    post(method, query)
  end

  def getViews(query)
    method = 'getViews'
    post(method, query)
  end

  def revokeAccessToken(access_token)
    method = 'revokeAccessToken'
    post(method, access_token)
  end

end