def domain_name(url)
  url = url.gsub("http://", "")
  url = url.gsub("https://", "")
  url = url.gsub("www.", "")

  return url.split(".")[0]
end
