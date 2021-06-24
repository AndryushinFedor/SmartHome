Post.destroy_all

puts "Destroyed everything you touch"

# posts = [
# {
# 	name: "Простой климат-контроль",
# 	image: File.open(Rails.root.join('public', 'images', '1.jpg')),
# 	title: "«Автоматизируем регулировку кондиционера и увлажнителя воздуха
# через mi-термометр.",
# 	content: "Xiaomi Universal Remote Controller
# Xiaomi Smart Plug
# Xiaomi Temperature/humidity sensor
# Xiaomi Gateway
# Стандартный кондиционер с ИК-управлением
# Стандартный увлажнитель воздуха
# "
# },
# {
# 	name: "Мониторинг
# состояния растений",
# 	image: File.open(Rails.root.join('public', 'images', '2.jpg')),
# 	title: "Контролируем условия содержания растений
# с помощью умных датчиков.",
# 	content: "Xiaomi Flower Monitor"
# },
# {
# 	name: "Автоматизируем
# аквариум",
# 	image: File.open(Rails.root.join('public', 'images', '3.jpg')),
# 	title: "«Кормим рыб и регулируем освещение
# по расписанию и голосовым командам.»",
# 	content: "Умная розетка Яндекса
# Яндекс станция
# Автокормушка Oltermelt Z9
# Аквариумная лампа"
# },
# {
# 	name: "На что способен
# умный дверной замок",
# 	image: File.open(Rails.root.join('public', 'images', '4.jpg')),
# 	title: "Простые, но интересные
# сценарии прихода и ухода.",
# 	content: "Aqara door lock"
# },
# {
# 	name: "Умная кормушка
# для ваших животных",
# 	image: File.open(Rails.root.join('public', 'images', '5.jpg')),
# 	title: "«Позволяет оставлять ваше животное,
# даже если нужно далеко уехать.",
# 	content: "Xiaomi Animal Feeder"
# },
#
# ]
#
# posts.each do |post|
# 	postik = Post.create(post)
# 	puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
# end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?