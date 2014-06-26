schema "001" do

  entity "Article" do

    string    :body,        optional: false
    integer32 :length
    boolean   :published,   default: false
    datetime  :publishedAt
    string    :title,       optional: false

    belongs_to :author
  end

  entity "Author" do
    float :fee
    string :name, optional: false
    has_many :articles 
  end

end
