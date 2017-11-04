module Seeds
  module Products
    # creates all accessory products
    class AccessoryProducts < Seeds::Products::ProductCreation
      def self.seed_products
        mens_accessories
        womens_accessories
      end

      def self.mens_winter_gloves
        params = {
          c_name: Category::WINTER_GLOVES_AND_MITTS,
          p_name: "Arc'teryx Beta Men's Gloves",
          description: 'Designed to layer over the insulated Atom Glove Liner or fleece Delta Glove, the Beta Shell Glove delivers exceptional dexterity, superior grip and the highest level of waterproof/breathable protection. Built with rugged N333p-X 3L GORE-TEX® fabric with tricot technology on the palm and fingers, highly breathable N70p GORE-TEX® on the back of the hand, and constructed with fully taped seams, the Beta Shell Glove seals out water, wind and snow. Laminated to the palm and fingertips, TPU reinforcements are used instead of leather. TPU’s hydrophobic properties prevent the reinforcements from wetting out. This saves weight, and more importantly, prevents the heat loss wet materials can cause. Because the TPU reinforcements can be strategically laminated to the precise areas needed, using them results in increased dexterity, improved breathability and extended durability.',
          price: 279.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'mens_winter_gloves.jpg'
        }

        create_product(params)
      end

      def self.womens_winter_gloves
        params = {
          c_name: Category::WINTER_GLOVES_AND_MITTS,
          p_name: "Arc'teryx Venta Women's Gloves",
          description: 'Made from a warm, exceptionally breathable N72s 3L WINDSTOPPER® 3L with hi-loft fleece fabric, the Venta Glove delivers warmth and weather protection for cross country skiing, snowshoeing or winter trail runs. The fabric’s brushed inner is lofty and warm, and the outer sheds snow and light rain. Dexterity is built into the patterning, and TPU palm reinforcements enhance durability and improve grip, but won’t absorb moisture. Sensors on the thumb and forefinger allow use of smartphones and touch screen devices while wearing the gloves.',
          price: 79.99,
          quantity: 100,
          gender: Product::FEMALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'womens_winter_gloves.jpg'
        }

        create_product(params)
      end

      def self.mens_toques
        params = {
          c_name: Category::TOQUES_AND_BALACLAVAS,
          p_name: "Icebreaker Men's Scout Beanie",
          description: 'A classic for every outdoorsman, the Scout beanie is casual-cool with a fold-over style. Crafted of a soft blend of acrylic and merino wool, this beanie is highly breathable for all-day comfort. With a softly ribbed look, this beanie adds just a hint of texture to your cold weather wear, while the rich color palette focuses attention on your face. Small and lightweight, this beanie easily tucks away in a pocket when not needed.',
          price: 44.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'mens_beanie.jpg'
        }

        create_product(params)
      end

      def self.womens_toques
        params = {
          c_name: Category::TOQUES_AND_BALACLAVAS,
          p_name: "Arc'teryx Women's Waffle Toque",
          description: 'Lattice style waffle knit provides visual interest to this medium weight unlined toque in a form fitting silhouette.',
          price: 39.99,
          quantity: 100,
          gender: Product::FEMALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'womens_beanie.jpg'
        }

        create_product(params)
      end

      def self.mens_hats
        params = {
          c_name: Category::HATS_AND_CAPS,
          p_name: "Arc'teryx Men's Bird Cap",
          description: 'For switchbacking up-trail, strolling the neighborhood, and everything in between, here’s your won’t-let-you-down everyday headgear: the Arc’teryx Men’s Bird Cap. Stitched with the company’s instantly recognizable ancient-bird logo, this low-sitting billed cap claims a FlexFit® design that hugs your head through thick and thin.',
          price: 39.99,
          quantity: 100,
          gender: Product::MALE,
          size_type: Product::CLOTHING_SIZE_TYPE,
          i_name: 'mens_hat.jpg'
        }

        create_product(params)
      end

      def self.mens_accessories
        mens_winter_gloves
        mens_toques
        mens_hats
      end

      def self.womens_accessories
        womens_winter_gloves
        womens_toques
      end

      private_class_method :mens_winter_gloves, :womens_winter_gloves,
                           :mens_toques, :womens_toques, :mens_hats,
                           :mens_accessories, :womens_accessories
    end
  end
end