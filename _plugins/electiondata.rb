
require 'net/http'

# fetch UK election data from
# wikidata
module Elections
    class Generator < Jekyll::Generator
        def generate(site)
            file = Jekyll::Page.new(site, __dir__, "", "uk-elections.csv").tap do |file|
                file.content = Net::HTTP.get(URI("https://www.wikidata.org/wiki/Special:EntityData/Q25052149.json")) 
                file.output
            end
            site.pages << file
        end
    end
end