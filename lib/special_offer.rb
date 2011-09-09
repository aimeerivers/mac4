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
          long_description: '<p>Book a course of 3 treatments and enjoy a <strong>limited offer of 20% off.</strong> You can choose to have a single area treated or combine up to 3 different areas. Your course of 3 must be paid for in advance during <<month>> and your first appointment taken during <<month>> or <<next-month>>.',
          link: '/treatments/ipl-permanent-hair-reduction',
          small_image: '/images/callouts/special_offer.png',
          large_image: '/images/treatments/ipl-permanent-hair-reduction/ipl-permanent-hair-reduction-123.jpg')
    end

    def wrinkle_relaxing_injections
      new(key: 'wrinkle-relaxing-injections',
          short_description: '20% off botox treatment.',
          link: '/treatments/wrinkle-relaxing-injections',
          small_image: '/images/treatments/wrinkle-relaxing-injections/wrinkle-relaxing-injections-88.jpg')
    end

    def dermaroller
      new(key: 'dermaroller',
          short_description: '20% off a treatment with the Genuine Dermaroller.',
          long_description: '20% off a treatment with the Genuine Dermaroller.',
          link: '/treatments/dermaroller',
          small_image: '/images/treatments/dermaroller/dermaroller-88.jpg',
          large_image: '/images/treatments/dermaroller/dermaroller-88.jpg')
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
