# telegraph-ruby

A Ruby interface to [Telegra.ph API](http://telegra.ph/api).

[![Gem Version](https://badge.fury.io/rb/telegraph-ruby.svg)](https://badge.fury.io/rb/telegraph-ruby)
[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/cos404)

## Installation

Add following line to your Gemfile:

```ruby
gem 'telegraph-ruby'
```

And then execute:

```shell
$ bundle
```

Or install it system-wide:

```shell
$ gem install telegraph-ruby
```

## Usage

```ruby
require 'telegraph-ruby'

telegraph = Telegraph.new
```

## Methods

#### [.createAccount](http://telegra.ph/api#createAccount)
```ruby
telegraph.createAccount(short_name:"cos404")
#=>  {"short_name"=>"cos404", "author_name"=>"", "author_url"=>"", "access_token"=>"e585e79dd4c296228d2a42da1d7c8d0ed18d697d54be5918a4c3a8de88f1","auth_url"=>"https://edit.telegra.ph/auth/Sr5fCg0GUH8Zlx7AzKJAEljgsXcyyBSo2WBCaCh5hp"}
```

#### [.editAccountInfo](http://telegra.ph/api#editAccountInfo)
```ruby
telegraph.editAccountInfo(access_token:'e585e79dd4c296228d2a42da1d7c8d0ed18d697d54be5918a4c3a8de88f1', short_name:'cosmos404')
#=>  {"short_name"=>"cosmos404", "author_name"=>"", "author_url"=>""}
```

#### [.getAccountInfo](http://telegra.ph/api#getAccountInfo)
```ruby
telegraph.getAccountInfo(access_token:'e585e79dd4c296228d2a42da1d7c8d0ed18d697d54be5918a4c3a8de88f1')
#=>  {"short_name"=>"cosmos404", "author_name"=>"", "author_url"=>""}
```

#### [.revokeAccessToken](http://telegra.ph/api#revokeAccessToken)
```ruby
telegraph.revokeAccessToken(access_token:'e585e79dd4c296228d2a42da1d7c8d0ed18d697d54be5918a4c3a8de88f1')
#=>  {"access_token"=>"4061ba937126ca4928ce1fd468d96953df288d205acbc6a8105a14f32747", "auth_url"=>"https://edit.telegra.ph/auth/6kKW5aur5ebJm8s61mWGEwuolWgRbxlfP69UeElhQv"}
```

#### [.createPage](http://telegra.ph/api#createPage)
```ruby
telegraph.createPage(access_token:'4061ba937126ca4928ce1fd468d96953df288d205acbc6a8105a14f32747', title:'telegraph-ruby', content:'[{"tag":"figure","children":[{"tag":"img","attrs":{"src":"http://telegra.ph/file/6a5b15e7eb4d7329ca7af.jpg"}},{"tag":"figcaption","children":[""]}]},{"tag":"p", "children":["A Ruby interface to [Telegra.ph API]"]}]')
#=>  {"path"=>"telegraph-ruby-09-28", "url"=>"http://telegra.ph/telegraph-ruby-09-28", "title"=>"telegraph-ruby", "description"=>"", "views"=>0, "can_edit"=>true}
```

#### [.editPage](http://telegra.ph/api#editPage)
```ruby
telegraph.editPage(access_token:'4061ba937126ca4928ce1fd468d96953df288d205acbc6a8105a14f32747', path:'telegraph-ruby-09-28', author_name:'@cosmos404', author_url:'https://t.me/cosmos404', title:'telegraph-ruby', content:'[{"tag":"figure","children":[{"tag":"img","attrs":{"src":"http://telegra.ph/file/6a5b15e7eb4d7329ca7af.jpg"}},{"tag":"figcaption","children":[""]}]},{"tag":"p", "children":["A Ruby interface to [Telegra.ph API]"]}]')
#=>  {"path"=>"telegraph-ruby-09-28", "url"=>"http://telegra.ph/telegraph-ruby-09-28", "title"=>"telegraph-ruby", "description"=>"", "author_name"=>"@cosmos404", "author_url"=>"https://t.me/cosmos404", "views"=>0, "can_edit"=>true}
```


#### [.getPage](http://telegra.ph/api#getPage)
```ruby
telegraph.getPage(path:'telegraph-ruby-09-28')
#=>  {"path"=>"telegraph-ruby-09-28", "url"=>"http://telegra.ph/telegraph-ruby-09-28", "title"=>"telegraph-ruby", "description"=>"A Ruby interface to [Telegra.ph API]", "author_name"=>"@cosmos404", "author_url"=>"https://t.me/cosmos404", "image_url"=>"http://telegra.ph/file/6a5b15e7eb4d7329ca7af.jpg", "views"=>2}
```

#### [.getPageList](http://telegra.ph/api#getPageList)
```ruby
telegraph.getPageList(access_token:'4061ba937126ca4928ce1fd468d96953df288d205acbc6a8105a14f32747')
#=>  {"total_count"=>1, "pages"=>[{"path"=>"telegraph-ruby-09-28", "url"=>"http://telegra.ph/telegraph-ruby-09-28", "title"=>"telegraph-ruby", "description"=>"A Ruby interface to [Telegra.ph API]", "author_name"=>"@cosmos404", "author_url"=>"https://t.me/cosmos404", "image_url"=>"http://telegra.ph/file/6a5b15e7eb4d7329ca7af.jpg", "views"=>2, "can_edit"=>true}]}
```

#### [.getViews](http://telegra.ph/api#getViews)
```ruby
telegraph.getViews(path:'telegraph-ruby-09-28')
#=>  {"views"=>2}
```

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request