class Tree < ApplicationRecord
  slug :title
  has_many :nodes
  has_many :leafs
  has_many :variables

  def self.create_complete_tree(params)
    params = params.with_indifferent_access
    nodes_arr = params.delete(:nodes)
    leafs_arr = params.delete(:leafs)
    variables_arr = params.delete(:variables)

    nodes = nodes_arr.map { |node| Node.new(node) }
    leafs = leafs_arr.map { |leaf| Leaf.new(name: leaf) }
    variables = variables_arr.map { |variable| Variable.new(name: variable) }

    params[:nodes] = nodes
    params[:leafs] = leafs
    params[:variables] = variables

    self.create(params)
  end
end
