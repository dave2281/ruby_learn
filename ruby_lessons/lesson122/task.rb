def to_db_hash
  return super.merge(
    {
      'text' => @text,
      'due_date' => @due_date.to_s
    }
  )
end

def load_data(data_hash)
  super(data_hash) 

  @due_date = Date.parse(data_hash['due_date'])
end