def self.all_cached
    Rails.cache.fetch('Contact.all') { all.to_a }
  end