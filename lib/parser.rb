require "thor"
require "open-uri"
require "nokogiri"

TIME_FORMAT = "%Y/%d".freeze
SPEC_TEMPLATE = "templates/spec/code_spec.rb.tt"

module Parser
  class CodeGenerator < Thor::Group
    include Thor::Actions

    argument :date
    argument :datepath

    def self.source_root
      File.expand_path("../", File.dirname(__FILE__))
    end

    def generate!
      create_file("input/#{datepath}.txt", force: true) { get_uniq_input(date) }
      create_file("lib/#{datepath}.rb", skip: true)
      # template(SPEC_TEMPLATE, "spec/#{datepath}_spec.rb", skip: true)
    end

    private

    def generate_template(date)
      html = URI.open("https://adventofcode.com/#{date.year}/day/#{date.day}").read
      @doc = Nokogiri::HTML(html)
      @title = get_title
      @sample_input = get_sample_input
      @sample_answer = get_sample_answer
      @instructions = get_instructions
    end

    def get_title
      cleaned = @doc.at_css("h2")&.text.gsub(/-/, "").strip
      cleaned[cleaned.index(":") + 2..]
    end

    def get_sample_input
      @doc.at_css("pre code")&.text
    end

    def get_sample_answer
      @doc.at_css("p code em")&.text
    end

    def get_instructions
      @doc.at_css(".day-desc")&.text
    end

    def get_uniq_input(date)
      URI.open("https://adventofcode.com/#{date.year}/day/#{date.day}/input", headers).read
    rescue OpenURI::HTTPError, Errno::ENOENT
      "Uh oh. Looks like something went wrong :("
    end

    def headers
      @headers ||= { "Cookie" => ENV.fetch("COOKIE") { File.read(".session/cookie") } }
    end
  end
end
