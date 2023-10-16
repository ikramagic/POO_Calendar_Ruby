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

    def self.find_by_email(input)
        @@all_users.each do |one_user| #chaque instance présente dans l'array all users sera maintenant divisée en one_user
            if one_user.email == input #si one_user = adresse email mentionnée dans input
                return one_user #on conserve ce user
            end
        end
        return "Désolé, cet utilisateur n'est pas présent dans la liste et ne peut donc pas être utilisé." 
        #si input est absent, on l'indique avec cet petit message
    end
end