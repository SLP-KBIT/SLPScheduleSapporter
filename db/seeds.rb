# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hoge = User.create(email: "hoge@example.com", password: "hogehoge", password_confirmation: "hogehoge")

hoge.events.create(title: "ハッカソン2014", content: "夏休みにSLPイベントとしてハッカソンをやろう\nテーマは自由\nぼっち参加も歓迎！！！ > 誰か")
