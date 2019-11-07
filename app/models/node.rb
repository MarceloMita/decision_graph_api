class Node < ApplicationRecord
  belongs_to :tree

  def execute_node(context)
    vars = self.tree.variables
    used_vars = vars.select { |var| self.condition.include?(var) }


  end
end
