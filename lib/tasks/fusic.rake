namespace :fusic do
  desc "Fetch artifles from fusic"
  task fetch: :environment do
    res = Faraday.get('https://tech.fusic.co.jp/feed/')
    return if res.status != 200

    rss = RSS::Parser.parse(res.body, true)
    rss.items.each do |item|
      next if Article.find_by(link: item.link).present?

      item_res = Faraday.get(item.link)
      next if item_res.status != 200

      doc = Nokogiri::HTML.parse(item_res.body, item_res.headers['charset'])
      author = doc.css('div#okazaki h2.name')
      next if author.empty?

      image = doc.css('//meta[property="og:image"]/@content').to_s
      body = ApplicationController.helpers.strip_tags(doc.css('main.content').to_s).truncate(100) + '...'

      Article.create(
        title: item.title,
        body: body,
        image: image,
        link: item.link,
        published_at: item.date
      )
    end
  end

end
