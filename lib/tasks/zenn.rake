namespace :zenn do
  desc "Fetch artifles from zenn"
  task fetch: :environment do
    res = Faraday.get('https://zenn.dev/y_uuu/feed')
    return if res.status != 200

    rss = RSS::Parser.parse(res.body, true)
    rss.items.each do |item|
      next if Article.find_by(link: item.link).present?

      item_res = Faraday.get(item.link)
      next if item_res.status != 200

      doc = Nokogiri::HTML.parse(item_res.body, item_res.headers['charset'])
      image = doc.css('//meta[property="og:image"]/@content').to_s

      Article.create(
        title: item.title,
        body: item.description.truncate(100) + '...',
        image: image,
        link: item.link,
        published_at: item.date
      )
    end
  end

end
