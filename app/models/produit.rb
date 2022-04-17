class Produit < ApplicationRecord
  has_many :venteproduits
  has_many :ventes, through: :venteproduits
  belongs_to :famille
  belongs_to :user
  # has_one_attached :image
  # validates :image, {
  #   presence: true
  # }
  
  # def get_image_url
  #   url_for(self.image)
  # end

  def self.notifications
    #puts 'Hi Alioune Badara'
    Produit.all.each do |produit|
      @notification = Notification.new
      @notification.produit_id  =  produit.id
      if(produit.date_peremtion - Date.today == produit.intervalle_notif)
           @notification.contenu  =  "Le produit #{produit.nom} expire dans #{produit.intervalle_notif} jours "
      end 
      @notification.etat  =  0
      @notification.save
      # puts "Contenu : #{@notification.contenu}"
    end
  end

  def self.rappel_notif
    #puts 'Hi Alioune Badara'
    Produit.all.each do |produit|
      @notification = Notification.new
      @notification.produit_id  =  produit.id
      if(produit.date_peremtion - Date.today == 2)
           @notification.contenu  =  "Rappel ! il ne reste que 5 jour pour le produit #{produit.nom} "
      end 
      @notification.etat  =  0
      @notification.save
      # puts "Contenu2 : #{@notification.contenu}"
    end
  end
end
