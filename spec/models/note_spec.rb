require 'rails_helper'

RSpec.describe Note, type: :model do

  it "generates associated data from a factory" do
    note = FactoryBot.create(:note)
    puts "This note's project is #{note.project.inspect}"
    puts "This note's user is #{note.user.inspect}"
  end
end

#   # メッセージがなければ無効な様態であること
#   it "is invaild without a message" do
#     note = Note.new(message: nil)
#     note.valid?
#     expect(note.errors[:message]).to include("can't be blank")
#   end

#   # 文字列に一致するメッセージを検索する
#   describe "search message for a term" do
#     before do

#       @note1 = @project.notes.create(
#         message: "This is the first note.",
#         user: @user,
#       )

#       @note2 = @project.notes.create(
#         message: "This is the second note.",
#         user: @user,
#       )

#       @note3 = @project.notes.create(
#         message: "First, oreheat the oven.",
#         user: @user
#       )
#     end

#     # 一致するデータが見つかるとき
#     context "when a match is found" do
#       it "returns notes that match the search term" do
#         expect(Note.search("first")).to include(@note1, @note3)
#       end
#     end

#     context "when no match is found" do
#       it "returns an empty collection" do
#         expect(Note.search("message")).to be_empty
#       end
#     end
#   end
# end
