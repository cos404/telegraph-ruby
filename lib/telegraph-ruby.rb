require "request.rb"

class Telegraph include Request

  def createAccount(body)
    method = 'createAccount'
    post(method, body)
  end

  def createPage(body)
    method = 'createPage'
    post(method, body)
  end

  def editAccountInfo(body)
    method = 'editAccountInfo'
    post(method, body)
  end

  def editPage(body)
    method = 'editPage'
    post(method, body)
  end

  def getAccountInfo(body)
    method = 'getAccountInfo'
    post(method, body)
  end

  def getPage(body)
    method = 'getPage'
    post(method, body)
  end

  def getPageList(body)
    method = 'getPageList'
    post(method, body)
  end

  def getViews(body)
    method = 'getViews'
    post(method, body)
  end

  def revokeAccessToken(access_token)
    method = 'revokeAccessToken'
    post(method, access_token)
  end

end