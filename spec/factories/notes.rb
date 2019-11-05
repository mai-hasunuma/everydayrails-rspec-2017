FactoryBot.define do
  factory :note do
    message "My important note."
    association :project
    #ユーザはデフォルトの一人だけになる
    user { project.owner }
  end
end
