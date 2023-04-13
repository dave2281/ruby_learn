def to_db_hash

  return super.merge(
    {
      'text' => @text.join('\n\r') 
    }
  )
end

def load_data(data_hash)
  super(data_hash) 

  @text = data_hash['text'].split('\n\r')
end