class SpecialOffer

  class << self
    def for_month(month)
      offers = {
        'September 2011' => 'ipl-permanent-hair-reduction',
        'October 2011' => 'dermal-fillers',
        'November 2011' => 'jan-marini',
        'December 2011' => 'jan-marini',
        'January 2012' => 'hampshire-chronicle',
        'February 2012' => 'hampshire-chronicle',
        'March 2012' => 'hampshire-chronicle',
        'April 2012' => 'hampshire-chronicle',
        'May 2012' => 'hampshire-chronicle'
      }
      by_key(offers[month])
    end

    def by_key(key)
      return if key.nil?
      attrs = YAML::load_file(File.dirname(__FILE__) + '/special_offers.yml')[key]
      new(attrs.merge(key: key)) unless attrs.nil?
    end
  end

  attr_accessor :key, :short_description, :long_description, :link, :small_image, :large_image

  def initialize(params)
    params.each do |key, value|
      self.send("#{key}=".to_sym, value)
    end
  end

  def short_description_text(month)
    short_description.gsub("<<month>>", month)
  end

  def long_description_text(month, next_month)
    long_description.gsub("<<month>>", month).gsub("<<next-month>>", next_month)
  end

end
