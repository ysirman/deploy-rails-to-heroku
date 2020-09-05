require 'rails_helper'

RSpec.describe Todo, type: :model do
  context '登録の場合' do
    it 'Todo詳細とTodo完了があれば、保存できること' do
      todo = Todo.new(detail: '野菜を買う', is_done: false)
      expect(todo.valid?).to eq true
    end
  end
end
