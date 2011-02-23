atom_feed do |feed|
  feed.title(@title)
  feed.updated(@updated)

  @posts.each do |post|
    feed.entry(post, :url => permalink_url(post.permalink)) do |entry|
      entry.title(post.title)
      entry.content(BlueCloth::new(post.content).to_html(), :type => "html")
      entry.author do |author|
        author.name post.author.name
      end
    end
  end
end