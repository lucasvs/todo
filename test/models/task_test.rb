require 'test_helper'

class TaskTest < ActiveSupport::TestCase
 
 it "Titulo da tarefa nao pode ser vazio" do
  Task.new(:title => "").should_not be_valid
end
end
