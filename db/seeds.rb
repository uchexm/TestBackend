# Remove existing Company records (use with caution)
Company.destroy_all

# Seed data for Company with icons
[
  Rails.root.join('public', 'icons', 'visa-black.svg'),  
  Rails.root.join('db', 'icons', 'tyme-bank-black.svg'),
  Rails.root.join('db', 'icons', 'distell-black.svg'),
  Rails.root.join('db', 'icons', 'spotify-black.svg'),
  Rails.root.join('db', 'icons', 'microsoft-black.svg'),
  Rails.root.join('db', 'icons', 'engen-black.svg'),
  Rails.root.join('db', 'icons', 'nike-black.svg'),
  Rails.root.join('db', 'icons', 'wesgrow-black.svg'),
  Rails.root.join('db', 'icons', 'multichoice-black.svg'),
  Rails.root.join('db', 'icons', 'pnp-black.svg'),
  Rails.root.join('db', 'icons', 'liquid-black.svg'),
  Rails.root.join('db', 'icons', 'tfg-black.svg'),
  Rails.root.join('db', 'icons', 'sanlam-black.svg'),
  Rails.root.join('db', 'icons', 'santam-black.svg'),
  Rails.root.join('db', 'icons', 'bbc-black.svg'),

].each do |icon_path|
  company = Company.new
  company.icon.attach(io: File.open(icon_path), filename: File.basename(icon_path))
  company.save
end

puts 'Seed data for companies created.'
