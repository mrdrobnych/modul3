ActiveAdmin.register Room do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

form do |f|
	f.actions
		f.inputs 'Room Info' do
			f.input :hotel_id, :input_html => {value: 1} #, :as => :select, :collection => Hotel.all.map{|u| ["#{u.name}", u.id]}
			f.input :number
			f.input :bed
			f.input :desk
			f.file_field :photos, multiple: true
		end
	f.actions
end
permit_params :hotel_id, :number, :bed, :desk, {photos: []}

end
