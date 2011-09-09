class SpecialOffer

  class << self
    def for_month(month)
      offers = {
        'September 2011' => 'ipl-permanent-hair-reduction',
        'October 2011' => 'wrinkle-relaxing-injections'
      }
      by_key(offers[month])
    end

    def by_key(key)
      return if key.nil?
      send(key.gsub('-', '_').to_sym)
    end

    def ipl_permanent_hair_reduction
      new(key: 'ipl-permanent-hair-reduction',
          short_description: '20% off when you purchase a course of 3 IPL treatments in <<month>>.',
          link: '/treatments/ipl-permanent-hair-reduction',
          small_image: '/images/callouts/special_offer.png')
    end

    def wrinkle_relaxing_injections
      new(key: 'wrinkle-relaxing-injections',
          short_description: '20% off botox treatment.',
          link: '/treatments/wrinkle-relaxing-injections',
          small_image: '/images/treatments/wrinkle-relaxing-injections/wrinkle-relaxing-injections-88.jpg')
    end
  end

  attr_accessor :key, :short_description, :link, :small_image

  def initialize(params)
    params.each do |key, value|
      self.send("#{key}=".to_sym, value)
    end
  end

  def short_description_text(month)
    short_description.gsub("<<month>>", month)
  end

end
