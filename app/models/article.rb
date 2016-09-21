class Article < ActiveRecord::Base
  belongs_to :user

  def self.all
    data = {
        "articles":[
            {
                "author":"Smokey",
                "authorImg":"https://placekitten.com/40/40",
                "imgSrc":"https://placekitten.com/200/150",
                "articleId":1,
                "body":"You gotta be kitten me.",
                "date":"2016-06-12",
                "likes":3,
                "comments":12
            },
            {
                "author":"Lucy",
                "authorImg":"https://placekitten.com/41/41",
                "imgSrc":"https://placekitten.com/200/151",
                "articleId":2,
                "body":"Turn up the mew-sic.",
                "date":"2016-07-21",
                "likes":1,
                "comments":0
            },
            {
                "author":"Oliver",
                "authorImg":"https://placekitten.com/42/42",
                "imgSrc":"https://placekitten.com/200/152",
                "articleId":3,
                "body":"Its a catastrophe",
                "date":"2016-05-10",
                "likes":8,
                "comments":1
            },
            {
                "author":"Oreo",
                "authorImg":"https://placekitten.com/43/43",
                "imgSrc":"https://placekitten.com/200/153",
                "articleId":4,
                "body":"Happy purr-th day.",
                "date":"2016-02-22",
                "likes":28,
                "comments":21
            }
        ]
    }

    data[:articles].collect { |article| OpenStruct.new(article) }
  end
end