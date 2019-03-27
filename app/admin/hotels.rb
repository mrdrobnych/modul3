ActiveAdmin.register Hotel do
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
		f.inputs 'Hotel Info' do
			f.input :name
			f.input :rate
			f.input :desk
			f.file_field :photo
		end
	f.actions
end
permit_params :name, :rate, :desk, :photo

end
