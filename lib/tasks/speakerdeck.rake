namespace :speakerdeck do
  desc "Fetch slides from speakerdeck"
  task fetch: :environment do
    res = Faraday.get('https://speakerdeck.com/yuuu.atom')
    return if res.status != 200

    rss = RSS::Parser.parse(res.body, true)
    rss.entries.each do |entry|
      next if Slide.find_by(link: entry.link.href).present?

      entry_res = Faraday.get(entry.link.href)
      next if entry_res.status != 200

      doc = Nokogiri::HTML.parse(entry_res.body, entry_res.headers['charset'])
      image = doc.css('//meta[property="og:image"]/@content').to_s

      Slide.create(
        title: entry.title.content,
        body: ApplicationController.helpers.strip_tags(entry.content.content).truncate(100) + '...',
        image: image,
        link: entry.link.href,
        published_at: entry.published.content
      )
    end
  end
end
