require "request.rb"

class Telegraph include Request

  def createAccount(short_name, options = {})
    path =  "createAccount?short_name=#{short_name}"
    path << "&author_name=#{options[:author_name]}" if options[:author_name]
    path << "&author_url=#{options[:author_url]}"   if options[:author_url]

    post(path)
  end

  def createPage(access_token, options = {})
    path = "createPage?access_token=#{access_token}"
    path << "&title=#{options[:title]}"                   if options[:title]
    path << "&author_name=#{options[:author_name]}"       if options[:author_name]
    path << "&author_url=#{options[:author_url]}"         if options[:author_url]
    path << "&content=#{options[:content]}"               if options[:content]
    path << "&return_content=#{options[:return_content]}" if options[:return_content]

    post(path)
  end

  def editAccountInfo(access_token, options = {})
    path = "editAccountInfo?access_token=#{access_token}"
    path << "&short_name=#{options[:short_name]}"   if options[:short_name]
    path << "&author_name=#{options[:author_name]}" if options[:author_name]
    path << "&author_url=#{options[:author_url]}"   if options[:author_url]

    post(path)
  end

  def editPage(access_token, options = {})
    path = "createPage?access_token=#{access_token}"
    path << "&path=#{options[:path]}"                     if options[:path]
    path << "&title=#{options[:title]}"                   if options[:title]
    path << "&content=#{options[:content]}"               if options[:content]
    path << "&author_name=#{options[:author_name]}"       if options[:author_name]
    path << "&author_url=#{options[:author_url]}"         if options[:author_url]
    path << "&return_content=#{options[:return_content]}" if options[:return_content]

    post(path)
  end

  def getAccountInfo(access_token, options = {})
    path = "createPage?access_token=#{access_token}"
    path << "&fields=#{options[:fields]}" if options[:fields]

    post(path)
  end

  def getPage(options = {})
    path = "createPage?path=#{options[:path]}"
    path << "&return_content=#{options[:return_content]}" if options[:return_content]

    post(path)
  end

  def getPageList(access_token, options = {})
    path = "createPage?access_token=#{access_token}"
    path << "&offset=#{options[:offset]}" if options[:offset]
    path << "&limit=#{options[:limit]}"   if options[:limit]

    post(path)
  end

  def getViews(options = {})
    path = "createPage?path=#{options[:path]}"
    path << "&year=#{options[:year]}"   if options[:year]
    path << "&month=#{options[:month]}" if options[:month]
    path << "&day=#{options[:day]}"     if options[:day]
    path << "&hour=#{options[:hour]}"   if options[:hour]

    post(path)
  end

  def revokeAccessToken(access_token)
    path = "createPage?access_token=#{access_token}"

    post(path)
  end


end

