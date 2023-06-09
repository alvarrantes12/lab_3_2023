json.array! @media_contents do |media_content|
    json.name media_content.name
    json.date media_content.year
    json.director_name @media_content.director.first_name
end
