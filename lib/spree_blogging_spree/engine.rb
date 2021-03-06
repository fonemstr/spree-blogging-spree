module SpreeBloggingSpree
  class Engine < Rails::Engine 
    engine_name 'spree_blogging_spree' 

    def self.activate  
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
      Spree::Ability.register_ability(SpreeBloggingSpreeAbility)
    end
    
    config.autoload_paths += %W(#{config.root}/lib) 
    config.to_prepare &method(:activate).to_proc
  end
end