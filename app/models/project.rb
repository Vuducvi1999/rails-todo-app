class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :user    # chú ý table danh từ số ít

  def progress_status
    return 0 if self.tasks.length == 0
    done_tasks = self.tasks.select {|item| item.done?}.length
    done_tasks * 100 / self.tasks.length 
  end

end
