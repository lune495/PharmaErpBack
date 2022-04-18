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
      @error = nil

      Notification.all.each do |notif|
        if notif.produit_id == produit.id
          @error = "existe deja"
          break
        end
      end
      if @error == nil
        if produit.date_peremtion - Date.today == produit.intervalle_notif
          @notification.contenu  =  "Le produit #{produit.nom} expire dans #{produit.intervalle_notif} jours "
          @notification.etat  =  0
          @notification.save
        end 
      end
      # puts "Contenu : #{@notification.contenu}"
    end
  end

  def self.rappel_notif
    #puts 'Hi Alioune Badara'
    Produit.all.each do |produit|
      Notification.all.each do |notif|
        if notif.produit_id == produit.id && produit.date_peremtion - Date.today == 5
          notif.contenu  =  "Rappel ! il ne reste que 5 jour pour le produit #{produit.nom} "
          notif.etat  =  0
          notif.save
          break
        end
      end
      #puts "Contenu2 : #{produit.date_peremtion - Date.today} "
    end
  end
end