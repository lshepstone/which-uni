require 'addressable/uri'
require 'mechanize'

module WhichUni
  class Searcher
    SEARCH_BASE_URL = 'http://google.co.uk/search'

    def results_for(query)
      page = agent.get(search_url(query))
      page.search('#res .r a').map do |link|
        mechanized_link = Mechanize::Page::Link.new(link, agent, page)
        Result.new(mechanized_link)
      end
    end

    private

    def agent
      @agent ||= Mechanize.new
    end

    def search_url(query)
      "#{SEARCH_BASE_URL}?q=#{Addressable::URI.escape(query)}"
    end
  end
end
