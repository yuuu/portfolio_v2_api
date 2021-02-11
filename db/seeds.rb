# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Administrator.create!(
  email: 'webservice@y-uuu.net',
  password: 'test1234!',
  password_confirmation: 'test1234!',
)

Profile.create!(
  introduction: '2018年から福岡でWeb/IoTエンジニアしてます。2017年まで関西で組込みエンジニアしてました。Railsを使った開発や、IoTに興味がある方はぜひお声掛けを！！',
  residence: '福岡県糟屋郡新宮町',
  birthplace: '山口県下松市',
  birthday: '1989-07-27',
  hobby: 'ボウリング, ゲーム, ルービックキューブ'
)

Article.create!(
  title: 'Rails 6.1対応版: APIモードのRailsに対してCrossOriginなSPAからSession認証する方法',
  body: '本記事では、APIモードのRailsに対してCrossOriginなSPAからSession(Cookie)認証する方法を解説します。 モダンなフロントエンド開発だと、Auth0やFirebaseを使った認証例が多く見られますが、バックエンドにRailsを使った認証例はまだまだ少ないと感じています。 JWT認証ではなくCookie認証となると、その数はさらに少ないようです。',
  image: 'https://qiita-user-contents.imgix.net/https%3A%2F%2Fcdn.qiita.com%2Fassets%2Fpublic%2Farticle-ogp-background-1150d8b18a7c15795b701a55ae908f94.png?ixlib=rb-1.2.2&w=1200&mark=https%3A%2F%2Fqiita-user-contents.imgix.net%2F~text%3Fixlib%3Drb-1.2.2%26w%3D840%26h%3D380%26txt%3DRails%25206.1%25E5%25AF%25BE%25E5%25BF%259C%25E7%2589%2588%253A%2520API%25E3%2583%25A2%25E3%2583%25BC%25E3%2583%2589%25E3%2581%25AERails%25E3%2581%25AB%25E5%25AF%25BE%25E3%2581%2597%25E3%2581%25A6CrossOrigin%25E3%2581%25AASPA%25E3%2581%258B%25E3%2582%2589Session%25E8%25AA%258D%25E8%25A8%25BC%25E3%2581%2599%25E3%2582%258B%25E6%2596%25B9%25E6%25B3%2595%26txt-color%3D%2523333%26txt-font%3DHiragino%2520Sans%2520W6%26txt-size%3D54%26txt-clip%3Dellipsis%26txt-align%3Dcenter%252Cmiddle%26s%3Dc4830fc0ffd888b046a765b0e92859ab&mark-align=center%2Cmiddle&blend=https%3A%2F%2Fqiita-user-contents.imgix.net%2F~text%3Fixlib%3Drb-1.2.2%26w%3D840%26h%3D500%26txt%3D%2540Y_uuu%26txt-color%3D%2523333%26txt-font%3DHiragino%2520Sans%2520W6%26txt-size%3D45%26txt-align%3Dright%252Cbottom%26s%3D50d8ecbc8eea8379fc3dfb3eb22e0820&blend-align=center%2Cmiddle&blend-mode=normal&s=8954e10eb896b916d97728dfdf5b7e0a',
  published_at: Time.zone.parse('2021-2-9'),
  link: 'https://qiita.com/Y_uuu/items/1651b181f06499c5cede',
)

Article.create!(
  title: 'AWS Amplifyを使った開発で役立つ逆引きTips集(2020年版)',
  body: '本記事は AWS Amplify Advent Calendar 2020 の2日目の記事です。',
  image: 'https://res.cloudinary.com/dlhzyuewr/image/upload/s--jALEq-Ok--/co_rgb:222%2Cg_south_west%2Cl_text:notosansjp-medium.otf_37_bold:Y_uuu%2Cx_203%2Cy_98/c_fit%2Cco_rgb:222%2Cg_north_west%2Cl_text:notosansjp-medium.otf_70_bold:AWS%2520Amplify%25E3%2582%2592%25E4%25BD%25BF%25E3%2581%25A3%25E3%2581%259F%25E9%2596%258B%25E7%2599%25BA%25E3%2581%25A7%25E5%25BD%25B9%25E7%25AB%258B%25E3%2581%25A4%25E9%2580%2586%25E5%25BC%2595%25E3%2581%258DTips%25E9%259B%2586%25282020%25E5%25B9%25B4%25E7%2589%2588%2529%2Cw_1010%2Cx_90%2Cy_100/g_south_west%2Ch_90%2Cl_fetch:aHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2dVMGM0YkQ1cEJFbW5SNDFkY0wyeVI2UnBOOG1BUHVPbnlDR3M9czgwLWM=%2Cr_max%2Cw_90%2Cx_87%2Cy_72/v1609308637/og/new_txlqub.png',
  published_at: Time.zone.parse('2021-2-9'),
  link: 'https://zenn.dev/y_uuu/articles/95d7071992d662',
)
