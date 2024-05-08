
register_website(
  name: 'telegraph',
  test: -> (uri) {
    uri.hostname == 'mp.weixin.qq.com'
  },
  request: ->(uri) {
    headers = {
      'User-Agent' => 'Mozilla/5.0 (Linux; Android 11; KB2000 Build/RP1A.201005.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/116.0.0.0 Mobile Safari/537.36 XWEB/1160117 MMWEBSDK/20240404 MMWEBID/2484 MicroMessenger/8.0.49.2600(0x28003137) WeChat/arm64 Weixin NetType/WIFI Language/zh_CN ABI/arm64'
    }

    get_with_headers(uri, headers)
  },
  process: -> (html) {
    document = Nokogiri::HTML(html)
    title = document.css('#activity-name').first.content.strip
    author = document.css('#js_name').first.content.strip
    content = document.css('#js_content').first

    content.traverse{|x|
      x.remove_class
      x.remove_attribute('id')
      x.remove_attribute('style')
      if x.name == 'img'
        unless x['src']
          x['src'] = x['data-src']
        end
      end
    }

    {
      title: title,
      author: author,
      content: content.to_html.lines.map(&:strip).join
    }
  }
)
