object false
child(@zones => :zones) do
  extends 'spree/api/v1/zones/show'
end
node(:count) { @zones.count }
node(:current_page) { params[:page] || 1 }
node(:pages) { @zones.total_pages }
