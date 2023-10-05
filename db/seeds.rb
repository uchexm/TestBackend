Company.destroy_all

[
  Rails.root.join('public', 'icons', 'visa-black.png'),
  Rails.root.join('public', 'icons', 'tyme-bank-black.png'),
  Rails.root.join('public', 'icons', 'distell-black.png'),
  Rails.root.join('public', 'icons', 'spotify-black.png'),
  Rails.root.join('public', 'icons', 'microsoft-black.png'),
  Rails.root.join('public', 'icons', 'engen-black.png'),
  Rails.root.join('public', 'icons', 'nike-black.png'),
  Rails.root.join('public', 'icons', 'wesgrow-black.png'),
  Rails.root.join('public', 'icons', 'multichoice-black.png'),
  Rails.root.join('public', 'icons', 'pnp-black.png'),
  Rails.root.join('public', 'icons', 'liquid.png'),
  Rails.root.join('public', 'icons', 'tfg-black.png'),
  Rails.root.join('public', 'icons', 'sanlam-black.png'),
  Rails.root.join('public', 'icons', 'santam-black.png'),
  Rails.root.join('public', 'icons', 'bbc-black.png'),
].each do |icon_path|
  company = Company.new
  company.icon.attach(io: File.open(icon_path), filename: File.basename(icon_path).split(".")[0] + ".png")
  company.save
end

puts 'Seed data for companies created.'
