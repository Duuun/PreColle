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
    @nodes = doc.css('.top-article-title a')
    @images = doc.css('.ArticleFirstImageThumbnail a img').map {|img| img.attr('src')}

    # @doc = Nokogiri::HTML(open(uri), nil, "utf-8")
    # @doc = Nokogiri::HTML(open(uri), nil, "utf-8")

  end

end
