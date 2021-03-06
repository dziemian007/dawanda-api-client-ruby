module Dawanda

  # = Product
  #
  # Represents a single Dawanda product.  Has the following attributes:

  #
  # [id] The unique identifier for this product
  # [name] The title of this product
  # [description] This product's full description
  # [view_count] The number of times this product has been viewed
  # [product_url] The full URL to this product's detail page
  # [price] The price of this product item
  # [quantity] The number of items available for sale
  # [tags] An array of tags that the seller has used for this product
  # [materials] Any array of materials that was used in the production of this item
  #
  class Product

    include Dawanda::Model

    finder :all, '/shops/:shop_id/products'
    finder :all, '/categories/:category_id/products'
    finder :all, '/shop_categories/:shop_category_id/products'
    finder :all, '/colors/:hex/products'
    finder :all, '/colors/:hex_search/products/search'
    finder :all, '/product/:method'
    finder :all, '/pinboards/:pinboard_id/products'
    finder :generic, '/shops/window_products', :window_products_by_user_id

    finder :one, '/products/:id'

    attribute :created, :created_at
    attribute :category_id, [ :category, :id ]
    attribute :user_id, [ :user => :id ]

    attributes :id, :name, :description, :created_at, :view_count, :tags, :user,
               :ending, :quantity, :materials, :price, :restful_path, :product_url,
               :default_image, :additional_images

    # Time that this product was created
    #
    def created_at
      Time.parse(created)
    end

    # Time that this product is ending (will be removed from store)
    #
    def ending_at
      Time.parse(ending)
    end

    # Search for users with given keyword
    def self.search(keyword, params = {})
      params.update(:keyword => keyword)
      self.find_all_by_method('search', params)
    end

    # Search for users with given keyword and color
    def self.search_by_color(color, keyword, params = {})
      params.update(:keyword => keyword)
      self.find_all_by_hex_search(color, params)
    end

    # backward compatability, remove at next major version bump
    def images
      [default_image] + additional_images
    end

    def category(params = {})
      Category.find_by_id(category_id)
    end

    def shop(params = {})
      Shop.find_by_user_id(user["id"])
    end
  end
end
