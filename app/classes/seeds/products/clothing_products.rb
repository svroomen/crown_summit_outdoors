module Seeds
  module Products
    # creates all clothing products
    class ClothingProducts < Seeds::Products::ProductCreation
      def self.seed_products
        mens_clothing
        womens_clothing
      end

      def self.mens_hoodie
        params = {
          c_name: Category::HOODIES,
          p_name: "Arc'teryx Men's Incendo Hoodie",
          description: 'Designed with trail runners in mind, the Arc’teryx Incendo Hoodie is the weight of conventional fall jackets but has a design that is optimized to help you move at top speeds in comfort and with ease. The design is light to avoid weighing you down, and the jacket includes breathable shell fabric and mesh panels under the arms to let your skin breathe mile after mile. Water and wind-resistant protection shields you from the elements.',
          price: 149.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'mens_incendo_hoodie.jpg'
        }

        create_product(params)
      end

      def self.womens_hoodie
        params = {
          c_name: Category::HOODIES,
          p_name: "Arc'teryx Arenite Women's Hoodie",
          description: 'The Arc’teryx Arenite Women’s Hoodie is designed to suit a range of alpine uses, including performing as a warm standalone layer in dry conditions and a mid-layer in cold weather. Made from insulated stretchy fabric, the jacket is designed to provide a flattering athletic fit, but still leaves sufficient room for light under-layers. The jacket is designed with anatomic patterning and articulation, along with gusseting under the arms to allow plenty of freedom of movement and ergonomic performance.',
          price: 137.99,
          quantity: 100,
          gender: Product::FEMALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'womens_arenite_hoodie.jpeg'
        }

        create_product(params)
      end

      def self.mens_sweater
        params = {
          c_name: Category::SWEATERS,
          p_name: "Arc'teryx Men's Donavan Crewneck Long Sleeve",
          description: 'A classic crew neck, the Arc’teryx Donavan is a casual men’s sweater made with the Arc’teryx commitment to craft. The wool-blend double knit has a soft face with a warm knit backer and brings the benefits of four distinct fibres. Recycled wool resists odors and provides warmth, cotton fibres add comfort, polyester aids moisture management, and nylon improves durability. The crew neck delivers casual, versatile style, and the laminated neckline finishes the clean, streamlined Arc’teryx aesthetic.',
          price: 179.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'mens_donavan_crewneck.jpg'
        }

        create_product(params)
      end

      def self.mens_top
        params = {
          c_name: Category::TOPS,
          p_name: "Arc'teryx Men's Phasic Evolution Short Sleeve T Shirt",
          description: 'Combining exceptional moisture management with performance stretch and next-to-skin comfort, the Arc’teryx Phasic Evolution T Shirt is perfect for backpacking and day hikes. The lightweight, quick drying Phasic™ FL-X bi-component fabric actively pulls away moisture and provides UPF 30+ sun protection. Gusseted underarms elevate freedom of movement, and the trim fit keeps the fibres close to the skin for improved wicking performance. A front graphic reflects the Arc’teryx design.',
          price: 79.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'mens_phasic_evolution_top.jpg'
        }

        create_product(params)
      end

      def self.womens_top
        params = {
          c_name: Category::TOPS,
          p_name: "Icebreaker Women's Aero Short Sleeve Crew T Shirt - Largo",
          description: 'Featuring an updated fit for added comfort, the Icebreaker Aero Short Sleeve Crewe is their ultralight merino tech tee perfect for warm-weather trail runs, extended hiking adventures or any other time you need lightweight comfort and maximum breathability. The Aero features 120g tissue-weight fabric that blends soft, breathable and odor-resistant merino wool with a touch of nylon for added durability. Flatlock stitching and forward side seams prevent chafing when you’re on the move and the scoop neck adds a feminine touch.',
          price: 79.99,
          quantity: 100,
          gender: Product::FEMALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'womens_aero_top.jpg'
        }

        create_product(params)
      end

      def self.mens_shorts
        params = {
          c_name: Category::SHORTS,
          p_name: "Arc'teryx Adan Men's 7 Inch Shorts",
          description: 'Superlight, quick drying, stretch performance short with built in brief, small side split, and stash security pocket. Designed for high output mountain training and running.',
          price: 89.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'mens_adan_shorts.png'
        }

        create_product(params)
      end

      def self.womens_shorts
        params = {
          c_name: Category::SHORTS,
          p_name: "Arc'teryx Women's Lyra Short",
          description: 'The Lyra Short combines advanced design, materials and patterning in a versatile short geared for fast paced training and other high output activities where freedom of movement is a key to performance. Providing a high level of stretch with exceptional air circulation, the super lightweight Ourea™ quick dry fabric is comfortable next to the skin and moves with the body. Articulated patterning, a gusseted crotch and the lengthy ¾ side split combine with the fabric’s stretch to further elevate freedom of movement. The intelligently designed wide waistband is made of stretch woven fabric for a snug, comfortable fit that won’t cut or bind. A stash pocket on the waistband holds small items. The Crystalis™ integrated stretch brief feels comfortable next to the skin, wicks moisture and provides support.',
          price: 66.99,
          quantity: 100,
          gender: Product::FEMALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'womens_lyra_shorts.png'
        }

        create_product(params)
      end

      def self.mens_pants
        params = {
          c_name: Category::PANTS_AND_TIGHTS,
          p_name: "Arc'teryx Stradium Men's Pants",
          description: 'Light, full coverage, warm-up/cool down pant with 3/4 length side zips that enable easy removal over running shoes.',
          price: 119.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'mens_stradium_pants.jpg'
        }

        create_product(params)
      end

      def self.womens_pants
        params = {
          c_name: Category::PANTS_AND_TIGHTS,
          p_name: "Arc'teryx Murrin Women's Pants",
          description: 'Perfect for winter hiking and mountaineering, the Arc’teryx Murrin Women’s Pants have a slim fit with articulated knees and a gusseted crotch panel to help you maneuver with ease. The cotton canvas fabric is tough enough to take on treacherous terrains without abrading or tearing.',
          price: 119.99,
          quantity: 100,
          gender: Product::FEMALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'womens_murrin_pants.jpeg'
        }

        create_product(params)
      end

      def self.mens_baselayer
        params = {
          c_name: Category::UNDERWEAR_AND_BASELAYER,
          p_name: "Icebreaker Men's 200 Oasis Leggings With Fly",
          description: 'Whether you’re layering them beneath outerwear for frigid outdoor play or using them as standalone running pants, the Icebreaker 200 Oasis Men’s Leggings With Fly keep you warm and comfortable whatever the weather. You’ve got all-day comfort given the breathable fabric, flatlock seams, and anti-chafe waistband.',
          price: 109.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'mens_baselayer_bottom.png'
        }

        create_product(params)
      end

      def self.womens_baselayer
        params = {
          c_name: Category::UNDERWEAR_AND_BASELAYER,
          p_name: "Icebreaker 200 Oasis Women's Leggings",
          description: 'Icebreaker’s Oasis Leggings are made from lightweight 200gm merino to keep your body at the perfect temperature while you’re exploring the outdoors.',
          price: 109.99,
          quantity: 100,
          gender: Product::FEMALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'womens_baselayer_bottom.png'
        }

        create_product(params)
      end

      def self.mens_clothing
        mens_hoodie
        mens_sweater
        mens_top
        mens_shorts
        mens_pants
        mens_baselayer
      end

      def self.womens_clothing
        womens_hoodie
        womens_top
        womens_shorts
        womens_pants
        womens_baselayer
      end

      private_class_method :mens_hoodie, :womens_hoodie, :mens_sweater,
                           :mens_top, :womens_top,
                           :mens_shorts, :womens_shorts, :mens_pants,
                           :womens_pants, :mens_baselayer, :womens_baselayer,
                           :mens_clothing, :womens_clothing
    end
  end
end
