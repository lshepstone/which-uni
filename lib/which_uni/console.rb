module WhichUni
  class Console
    def feeling_lucky_search
      query = 'which university'
      result = Searcher.new.results_for(query).first

      puts "which-uni version #{WhichUni::VERSION}\n"
      puts "Your feeling lucky search for '#{query}' returned the page"
      puts "  \"#{result.page_title}\""
      puts "  located at #{result.url}"
      puts 'Done.'
    end
  end
end
