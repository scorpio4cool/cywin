json.extract! @project, :name, :oneword, :description
json.industry @project.categories_name
json.city @project.cities_name
json.logo_id @project.logo.try(:id)
json.logo_url @project.logo.try(:image_url)

json.screenshots do
  json.array! @project.screenshots do |screenshot|
    json.partial! 'screenshots/screenshot', screenshot: screenshot
  end
end
