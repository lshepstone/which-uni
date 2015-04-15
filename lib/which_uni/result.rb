module WhichUni
  class Result
    def initialize(link)
      @link = link
    end

    def url
      page.canonical_uri
    end

    def page_title
      page.title
    end

    private

    def page
      @page ||= @link.click
    end
  end
end
