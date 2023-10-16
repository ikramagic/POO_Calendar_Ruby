class User
    attr_accessor :email, :age
    @@all_users = []

    def initialize(email_def, age_def)
        @email = email_def
        @age = age_def
        @@all_users << self
    end

    def self.all #self ferme l'accès aux données en dehors de la méthode de classe, self = sera utilisée uniquement dans cette méthode
        return @@all_users
    end
end