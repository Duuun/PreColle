class PurecolleController < ApplicationController
  
  require "open-uri"
  require "nokogiri"

  def index
    url = "http://anicobin.ldblog.jp/archives/cat_1137163.html"
    charset = nil

    html = open(url) do |f|
      charset = f.charset #文字種別を取得
      f.read #htmlを読み込んで変数htmlに渡す
    end

    #htmlをパースしてオブジェクトを生成
    doc = Nokogiri::HTML.parse(html, nil, charset)
    # @hoge = doc.css('img').map { |img| img.attr('src') }
    #@nodes = doc.xpath('//*[(@class="ArticleFirstImageThumbnail")]//img')
    nodes = doc.xpath('//div[@class="top-article-outer"]')
    @title = nodes.css('.top-article-title a')
    @img = nodes.css('.top-left .ArticleFirstImageThumbnail a img').map {|img| img.attr('src')}

    # @doc = Nokogiri::HTML(open(uri), nil, "utf-8")
    # @doc = Nokogiri::HTML(open(uri), nil, "utf-8")

  end

end
