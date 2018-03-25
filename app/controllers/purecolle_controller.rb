class PurecolleController < ApplicationController
  
  require "open-uri"
  require "nokogiri"

  def index
    uri = "http://anicobin.ldblog.jp/archives/cat_1137163.html"
    # @doc = Nokogiri::HTML(open(uri), nil, "utf-8")
    @doc = Nokogiri::HTML(open(uri), nil, "utf-8")
  end

end
