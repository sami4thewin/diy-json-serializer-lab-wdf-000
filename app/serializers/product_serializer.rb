# class ProductSerializer
#
#   def self.serialize(product)
#     serialized_product = '{'
#
#     serialized_product += '"name": ' + product.name + ', '
#     serialized_product += '"price": "' + product.price.to_s + '", '
#     serialized_product += '"inventory": "' + product.inventory.to_s + '", '
#     serialized_product += '"description": "' + product.description + '"'
#
#     # the author association can also be represented in JSON
#     # serialized_product += '"author": {'
#     # serialized_product += '"name": "' + product.author.name + '"}'
#
#     # and end with the close brace
#     serialized_product += '}'
#   end
#
# end


class ProductSerializer
  def self.serialize(product)
    serialized_product = '{'

    serialized_product += '"id": ' + product.id.to_s + ', '
    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"description": "' + product.description + '", '
    serialized_product += '"inventory": ' + product.inventory.to_s + ', '
    serialized_product += '"price": "' + product.price.to_s + '"'

    serialized_product += '}'
  end
end
