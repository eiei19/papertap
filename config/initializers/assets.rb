Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( *.js )
Rails.application.config.assets.precompile << /\A(?!active_admin).*\.(js|css|png|gif|jpg|jpeg)\z/