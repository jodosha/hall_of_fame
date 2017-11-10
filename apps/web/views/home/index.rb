module Web::Views::Home
  class Index
    include Web::View

    def avatar(contributor)
      link_to "https://github.com/#{contributor.username}", target: "_blank" do
        image(contributor.avatar_url, alt: contributor.username, title: contributor.username, width: "200", height: "200")
      end
    end
  end
end
