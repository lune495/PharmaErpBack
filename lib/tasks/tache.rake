namespace :tache do
  desc "TODO"
  task produit: :environment do
    Produit.notifications
    Produit.rappel_notif
  end

end
