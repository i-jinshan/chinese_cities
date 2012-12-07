# Chinese Cities

Chinese provinces and cities collection

## Installation

Add this line to your application's Gemfile:

    gem 'chinese_cities'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chinese_cities

## Usage

```ruby
province = ChineseCities::Province.find '北京市'
=> <#ChineseCities::Province:0xa612128 @name="北京市">   

province.name
=> '北京市'

province.cities
=> [#<ChineseCities::City:0xa6b94b4 @name="东城区">,
    #<ChineseCities::City:0xa6b943c @name="西城区">,
    #<ChineseCities::City:0xa6b939c @name="崇文区">,
    #<ChineseCities::City:0xa6b934c @name="宣武区">,
    #<ChineseCities::City:0xa6b92e8 @name="朝阳区">,
    #<ChineseCities::City:0xa6b920c @name="海淀区">,
    #<ChineseCities::City:0xa6b9158 @name="丰台区">,
    #<ChineseCities::City:0xa6b907c @name="房山区">,
    #<ChineseCities::City:0xa6b9018 @name="通州区">,
    #<ChineseCities::City:0xa6b8f64 @name="顺义区">,
    #<ChineseCities::City:0xa6b8ed8 @name="昌平区">,
    #<ChineseCities::City:0xa6b8de8 @name="大兴区">,
    #<ChineseCities::City:0xa6b8d98 @name="怀柔区">,
    #<ChineseCities::City:0xa6b8cbc @name="平谷区">,
    #<ChineseCities::City:0xa6b8c44 @name="密云县">,
    #<ChineseCities::City:0xa6b8be0 @name="延庆县">,
    #<ChineseCities::City:0xa6b8b68 @name="门头沟区">,
    #<ChineseCities::City:0xa6b8aa0 @name="石景山区">]

province.city_names
=> ["东城区",
    "西城区",
    "崇文区",
    "宣武区",
    "朝阳区",
    "海淀区",
    "丰台区",
    "房山区",
    "通州区",
    "顺义区",
    "昌平区",
    "大兴区",
    "怀柔区",
    "平谷区",
    "密云县",
    "延庆县",
    "门头沟区",
    "石景山区"]

ChineseCities::Province.all
=> [ An array of all province objects ]

ChineseCities::Province.all_names
=> [ An array of all province names ]

city = ChineseCities::Cities.find '西城区'
=> #<ChineseCities::City:0xac40464 @name="西城区">

city.province
=> #<ChineseCities::Province:0xaf27808 @name="北京市"

city.province_name
=> '北京市'

ChineseCities::City.all
=> [ An array of all cities objects ]

ChineseCities::City.all_names
=> [ An array of all cities names ]

# Search provinces and cities which name like your parameter
ChineseCities.search '京'
=> {:provinces=>["北京市"], :cities=>["南京市", "京山县"]}



```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
