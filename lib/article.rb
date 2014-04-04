module Article
  def acts_as_article
    include InstanceMethods
    ######################### Class Methods ###############################
    has_one :post, :as => :article, :autosave => true, :dependent => :destroy
    alias_method_chain :post, :build

    post_attributes = Post.content_columns.map(&:name)

    def article_attr_accessor(*attribute_array)
      attribute_array.each do |att|
        define_method(att) do
          post.send(att)
        end
        
        define_method("#{att}=") do |val|
          post.send("#{att}", val)
        end
      end
    end
    article_attr_accessor * post_attributes
  end

  module InstanceMethods
    def article_with_build
      article_without_build || build_article
    end
  end
end

