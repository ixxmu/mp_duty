register_website(
  name: 'default',
  test: -> (uri) {
    uri.hostname == 'm.cnbeta.com'
  },
  request: -> (uri) {
    headers = {
      'User-Agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:74.0) Gecko/20100101 Firefox/74.0'
    }

    get_with_headers(uri, headers)
  },
  process: -> (html) {
    document = Nokogiri::HTML(html)

    title = document.css('div.title').first.content
    author = 'cnbeta'
    content = document.css('#artibody').first

    {
      title: title,
      author: author,
      labels: author,
      content: content.to_html.lines.map(&:strip).join
    }
  }
)
