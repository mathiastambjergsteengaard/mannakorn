# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += ['footer.png', 'salme_37_5_road', 'salme_37_5_feet', 'esajas_53_4_6_thorn', 'esajas_53_4_6_cross', 'fadervor','salme_23_image', 'salme_23_white',
'johannes_15_4']
Rails.application.config.assets.precompile += ["application.scss", "order_show.scss"]

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
