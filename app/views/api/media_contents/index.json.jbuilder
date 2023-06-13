json.array! @media_contents do |media_content|
    json.name media_content.name
    json.date media_content.year
    json.director do
        json.first_name media_content.director.first_name
    end
end
