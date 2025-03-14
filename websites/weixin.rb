
register_website(
  name: 'telegraph',
  test: -> (uri) {
    uri.hostname == 'mp.weixin.qq.com'
  },
  request: ->(uri) {
    uri = if uri.scheme == 'https'
            uri
          else
            uri.scheme = 'https'
            URI(uri.to_s)
          end
    headers = {
    'User-Agent' => 'Mozilla/5.0 (Linux; Android 12; HarmonyOS; FIN-AL60; HMSCore 6.14.0.309; GMSCore 0.3.0.243519) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.88 HuaweiBrowser/14.0.5.303 Mobile Safari/537.36',
    'Referer' => 'https://mp.weixin.qq.com/'
  }
    get_with_headers(uri, headers)
  },
  process: -> (html) {
    document = Nokogiri::HTML(html)
    title = document.css('#activity-name').first&.content&.strip || document.css('.rich_media_title').first&.content&.strip || '标题未找到'
    author = document.css('#js_name').first&.content&.strip || document.css('.profile_nickname').first&.content&.strip || '作者未找到'
    content = document.css('#js_content').first || document.css('.rich_media_content').first

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
