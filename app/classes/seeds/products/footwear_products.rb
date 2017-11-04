module Seeds
  module Products
    # creates all footwear products
    class FootwearProducts < Seeds::Products::ProductCreation
      def self.seed_products
        mens_footwear
        womens_footwear
      end

      def self.mens_hiking_boots
        params = {
          c_name: Category::HIKING_BOOTS,
          p_name: "Arc’teryx Men's Bora Mid GTX Hiking Boots",
          description: 'Conquer any terrain in these Bora GTX men’s hiking Boots. Front and rear pulls make it simple to put on your Boots in a hurry, while the seamless one-piece upper contributes to comfort and waterproof protection. The heels of these hiking Boots boast a mountaineering tread for improved braking and traction, while the Vibram outsole allows for maximum tread with the flexibility you crave.',
          price: 319.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::FOOTWEAR_SIZE_TYPE,
          i_name: 'mens_hiking_boot.jpg'
        }

        create_product(params)
      end

      def self.womens_hiking_boots
        params = {
          c_name: Category::HIKING_BOOTS,
          p_name: "Arc’teryx Women's Bora Mid GTX Hiking Boots",
          description: 'Easy to put on, these Bora GTX hikers have front and rear pull loops for an easy on, as well as a seamless one-piece upper for durable wear. The Ortholite footbed is 3D molded to conform to your foot for superior comfort and lasting support. The high-quality Vibram outsole provides outstanding support and improved traction, making these hiking Boots ideal for everything from day hikes to trekking through the backwoods for days on end.',
          price: 319.99,
          quantity: 100,
          gender: Product::FEMALE,
          size_type: Product::FOOTWEAR_SIZE_TYPE,
          i_name: 'womens_hiking_boot.jpg'
        }

        create_product(params)
      end

      def self.mens_winter_boots
        params = {
          c_name: Category::WINTER_BOOTS,
          p_name: "Merrell Men's Capra Glacial Ice+ Mid Waterproof Winter Boots",
          description: 'Scramble over snow and ice with unparalleled traction thanks to Vibram® Arctic Grip. Breathable, waterproof, and insulated to keep toes toasty without overheating.',
          price: 259.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::FOOTWEAR_SIZE_TYPE,
          i_name: 'mens_winter_boot.jpeg'
        }

        create_product(params)
      end

      def self.womens_winter_boots
        params = {
          c_name: Category::WINTER_BOOTS,
          p_name: "Keen Women's Delta Winter Boots",
          description: 'Perfect for winter conditions, these Delta boots by Keen offer dual climate rubber outsoles for all-weather wear. Complete with a thermal heat-shield footbed, these boots are the ultimate in comfort and warmth. In classic Keen style, these boots are equipped with a KEEN waterproof membrane to keep you dry, while the leather uppers provide additional waterproofing and an on-trend style.',
          price: 179.99,
          quantity: 100,
          gender: Product::FEMALE,
          size_type: Product::FOOTWEAR_SIZE_TYPE,
          i_name: 'womens_winter_boot.jpg'
        }

        create_product(params)
      end

      def self.mens_hiking_shoes
        params = {
          c_name: Category::HIKING_SHOES,
          p_name: "Arc'teryx Men's Acrux SL GTX Hiking Shoes",
          description: 'Designed for technical approaches on difficult terrain, the Acrux SL leverages advanced Arc’teryx footwear technologies for optimal fit, agility and traction, then streamlines them for exceptionally lightweight performance. The Adaptive Fit Lite design uses zonal stretch that shapes to the foot for an exceptional fit and is highly air permeable for comfort in warmer conditions. Easy to pack and carry, the versatile Acrux SL is light, exceptionally durable and designed to handle demanding approaches, scrambles, day hikes and everyday wear.',
          price: 199.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::FOOTWEAR_SIZE_TYPE,
          i_name: 'mens_hiking_shoe.jpg'
        }

        create_product(params)
      end

      def self.womens_hiking_shoes
        params = {
          c_name: Category::HIKING_SHOES,
          p_name: "Arc'teryx Women's Acrux FL GTX Hiking Shoes",
          description: 'Carefully designed for technical approaches and extended day hikes, the Acrux FL GTX delivers durable performance with the weather protection and custom comfort of an Adaptive Fit GORE-TEX® liner. The single piece upper uses seamless thermolaminated construction for elevated durability and irritation free performance, and the artfully designed Vibram® Arc’teryx Approach Outsole combines the grippy surefootedness of a climbing shoe with the stability and rolling stride of a hiking sole. The heel features a “Y” groove that helps facilitate braking on steep descents. Cushioning comes from the injected EVA midsole that is specifically moulded for stability and impact protection on varied terrain.',
          price: 139.99,
          quantity: 100,
          gender: Product::FEMALE,
          size_type: Product::FOOTWEAR_SIZE_TYPE,
          i_name: 'womens_hiking_shoe.jpg'
        }

        create_product(params)
      end

      def self.mens_running_shoes
        params = {
          c_name: Category::RUNNING_SHOES,
          p_name: "ASICS Men's Gel Nimbus 18 Running Shoes",
          description: 'After 18 years of innovation, the Nimbus® series continues as one of the most recognized high performing footwear by ASICS. The new GEL® placement offers modernized geometry of cushioning, designed to improve adaptability and mitigate brisk impacts. Improved Guidance Line® Technology harmoniously syncs componentry to embrace the motions of the runner’s gait cycle.',
          price: 199.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::FOOTWEAR_SIZE_TYPE,
          i_name: 'mens_running_shoe.jpg'
        }

        create_product(params)
      end

      def self.womens_running_shoes
        params = {
          c_name: Category::RUNNING_SHOES,
          p_name: "ASICS Women's Gel Cumulus 19 GTX Running Shoes",
          description: 'Featuring ASICS updated Convergence GEL® Technology and Rearfoot GEL® Cushioning Technology, the GEL-Cumulus® 19 GTX delivers superior comfort and shock dissipation, while enhancing foot function for a smooth ride. The GEL-Cumulus® 19 also sports a contemporized upper to signal the latest generation. The GORE-TEX Upper of this version will protect you from the elements.',
          price: 179.99,
          quantity: 100,
          gender: Product::FEMALE,
          size_type: Product::FOOTWEAR_SIZE_TYPE,
          i_name: 'womens_running_shoe.jpg'
        }

        create_product(params)
      end

      def self.mens_footwear
        mens_hiking_boots
        mens_winter_boots
        mens_hiking_shoes
        mens_running_shoes
      end

      def self.womens_footwear
        womens_hiking_boots
        womens_winter_boots
        womens_hiking_shoes
        womens_running_shoes
      end

      private_class_method :mens_hiking_boots, :womens_hiking_boots,
                           :mens_winter_boots, :womens_winter_boots,
                           :mens_hiking_shoes, :womens_hiking_shoes,
                           :mens_running_shoes, :womens_running_shoes,
                           :mens_footwear, :womens_footwear
    end
  end
end