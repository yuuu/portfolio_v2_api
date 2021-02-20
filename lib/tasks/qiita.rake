namespace :qiita do
  desc "Fetch articles from qiita"
  task fetch: :environment do
    res = Faraday.get('https://qiita.com/api/v2/users/Y_uuu/items?per_page=100')
    return if res.status != 200

    items = JSON.parse(res.body)
    items.each do |item|
      next if Article.find_by(link: item['url']).present?

      item_res = Faraday.get(item['url'])
      next if res.status != 200

      doc = Nokogiri::HTML.parse(item_res.body, item_res.headers['charset'])
      image = doc.css('//meta[property="og:image"]/@content').to_s

      Article.create(
        title: item['title'],
        body: item['body'].truncate(100) + '...',
        published_at: Time.zone.parse(item['created_at']),
        image: image,
        link: item['url'],
      )
    end
  end
end
