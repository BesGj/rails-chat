class User < ApplicationRecord

  validates_uniqueness_of :username


  def self.generate
    adjectives = ["Black", "Warrior", "Gamer", "Fighter", "Supermen", "Batman"]
    nouns = ["Paolo", "Rossi", "Jack", "Jimmy", "Page"]
    number = rand.to_s[2..4]
    username = "#{adjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)
  end
end
