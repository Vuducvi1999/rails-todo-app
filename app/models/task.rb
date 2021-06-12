class Task < ApplicationRecord
  belongs_to :project

  def status_color
    case self.status
    when 'new'
      'primary'
    when 'process'
      'info'
    when 'done'
      'success'
    end
  end

  def done?
    self.status == 'done'
  end
  
  LIST_OF_TASKS = [
    ['New', 'new'],
    ['Process', 'process'],
    ['Done', 'done'],
  ]
  
end
