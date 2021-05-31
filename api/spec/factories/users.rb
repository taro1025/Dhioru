FactoryBot.define do
  factory :valid_user, class: User do
    email {"taro1025@gmail.com"}
    sex_id {0}
    last_name_kanji { "崎野" }
    first_name_kanji { "倫太郎" }
    last_name_kana { "さきの" }
    first_name_kana { "りんたろう" }
    postal_code {"241-0005"}
    state {"神奈川県"}
    city {"横浜市旭区"}
    town {"towntown"}
    line1 {"15-53-1"}
    country {"日本"}
    phone_number {"08010251025"}
    birthday {"2000年10月25日"}
    news_latter {false}
  end
end
