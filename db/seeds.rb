# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Sample.create(
  title: "サンプルタイトル1",
  about: "このデータベースのサンプルデータです。",
  content: "これはサンプルのコンテンツです。",
  tag: "サンプル"
)

Sample.create(
  title: "サンプルタイトル2",
  about: "これもデータベースのサンプルデータです。",
  content: "これはもう1つのサンプルのコンテンツです。",
  tag: "テスト"
)