def to_db_hash
  return super.merge(
    {
      'text' => @text,
      'url' => @url
    }
  )
end

def load_data(data_hash)
  super(data_hash) 

  @url = data_hash['url']
end