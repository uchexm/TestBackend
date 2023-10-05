# Remove existing Company records (use with caution)
Company.destroy_all

# Seed data for Company with icons
[
  Rails.root.join('public', 'icons', 'visa-black.svg'),
  Rails.root.join('public', 'icons', 'tyme-bank-black.svg'),
  Rails.root.join('public', 'icons', 'distell-black.svg'),
  Rails.root.join('public', 'icons', 'spotify-black.svg'),
  Rails.root.join('public', 'icons', 'microsoft-black.svg'),
  Rails.root.join('public', 'icons', 'engen-black.svg'),
  Rails.root.join('public', 'icons', 'nike-black.svg'),
  Rails.root.join('public', 'icons', 'wesgrow-black.svg'),
  Rails.root.join('public', 'icons', 'multichoice-black.svg'),
  Rails.root.join('public', 'icons', 'pnp-black.svg'),
  Rails.root.join('public', 'icons', 'liquid-black.svg'),
  Rails.root.join('public', 'icons', 'tfg-black.svg'),
  Rails.root.join('public', 'icons', 'sanlam-black.svg'),
  Rails.root.join('public', 'icons', 'santam-black.svg'),
  Rails.root.join('public', 'icons', 'bbc-black.svg'),
].each do |icon_path|
  company = Company.new
  company.icon.attach(io: File.open(icon_path), filename: File.basename(icon_path))
  company.save
end

puts 'Seed data for companies created.'
