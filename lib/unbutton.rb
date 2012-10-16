require "uri"
require "unbutton/version"

module Unbutton
  def self.facebook_link(url, options={})
    base = "http://www.facebook.com/sharer.php"
    params = params = { u: url }
    options.has_key?(:title) && params[:t] = options[:title]
    create_url base, params
  end

  def self.linkedin_link(url, options)
    base = "http://www.linkedin.com/shareArticle"
    params = params = { url: url, mini: true }
    options.has_key?(:title) && params[:title] = options[:title]
    options.has_key?(:description) && params[:summary] = options[:description]
    options.has_key?(:source) && params[:source] = options[:source]

    create_url base, params
  end

  def self.pinterest_link(url, options)
    base = "http://pinterest.com/pin/create/button/"
    params = { url: url }
    options.has_key?(:media) && params[:media] = options[:media]
    options.has_key?(:title) && params[:description] = options[:title]
    create_url base, params
  end

  def self.twitter_link(url, options={})
    base = "http://twitter.com/intent/tweet"
    params = { url: url }
    options.has_key?(:title) && params[:text] = options[:title]
    options.has_key?(:source) && params[:via] = options[:source]
    create_url base, params
  end

  def self.tumblr_link(url, options={})
    base = "http://www.tumblr.com/share/link"
    params = { url: url }
    options.has_key?(:title) && params[:name] = options[:title]
    options.has_key?(:description) && params[:description] = options[:description]
    create_url base, params
  end

  def self.googleplus_link(url, options={})
    base = "https://plus.google.com/share"
    params = { url: url }
    options.has_key?(:title) && params[:t] = options[:title]
    create_url base, params
  end

  def self.mailto_link(url, options={})
    base = "mailto:"
    params = { 
      subject: 'Shared',
      body: url
    }
    options.has_key?(:title) && params[:subject] = options[:title]
    options.has_key?(:source) && params[:subject] += " via #{options[:source]}"
    create_url base, params
  end

  private

  def self.create_url(base, params)
    query_string = URI.encode_www_form(params)
    "#{base}?#{query_string}"
  end
end
