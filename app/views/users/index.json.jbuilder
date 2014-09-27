json.array!(@users) do |user|
  json.extract! user, :id, :name, :bsc_number, :msc_number, :phd_number, :email, :identity_card, :phone, :address, :birth_date, :membership, :paid, :responsible_id
  json.url user_url(user, format: :json)
end
