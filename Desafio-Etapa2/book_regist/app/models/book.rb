class Book < ApplicationRecord
    after_destroy do
        broadcast_remove_to(
          'todos',
          target: "todo_#{id}"
        )
      end
    validates :vinculo, :titutlo, :autor, :edicao, :issn, :editora, presence: true
    validates_comparison_of :ano, greater_than_or_equal_to: 1900, less_than_or_equal_to: 2019
end