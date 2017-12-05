module Seeds
  class SiteInformation
    def self.seed_site_information
      SiteInfo.first_or_create!(
        description: 'Crown Summit was founded in 2009. Since then we have dedicated our efforts to provide excellent customer service and outstanding products. Our passion comes from our love for the great outdoors. We welcome you to share our passion with us, in striving to conquer all environments in the world.',
        customer_service_message: 'We welcome and value your feedback. If you have any comments or questions regarding Atmosphere.ca, please contact us by telephone or fill out the online feedback form, and we will get back to you as soon as possible.',
        email: 'crown_summit@google.com',
        phone: '1-855-000-CRWN (0000)',
        hours: 'Monday - Friday: 8am to 9pm (EST)/Saturday: 9am – 5pm (EST)/Sunday: 9am – 5pm (EST)',
        locations: 'Winnipeg, MB/',
      )
    end
  end
end