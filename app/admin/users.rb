ActiveAdmin.register User do
  config.filters = false
  permit_params :email, :store_number, :address, :city, :zip, :state, :country, :location_type ,:tos, :admin, :aaronsmgr ,:address2, :first_name, :last_name, :phone_number, :password, :password_confirmation
  actions :index, :show, :new, :create, :update, :edit

  index do
    column :email
    column :id
    column :first_name
    column :last_name
    column :store_number
    column :address
    column :address2
    column :city
    column :state
    column :zip
    column :country
    column :phone_number
    column :location_type
    column :admin
    column :aaronsmgr
    column :created_at
    column :sign_in_count
    actions
  end

  show do
    attributes_table do
      row :email
      row :first_name
      row :last_name
      row :store_number
      row :address
      row :address2
      row :city
      row :state
      row :zip
      row :country
      row :phone_number
      row :location_type
      row :admin
      row :aaronsmgr
      row :created_at
      row :tos
      row :sign_in_count
    end
    active_admin_comments
  end

  form do |f|
    f.semantic_errors # shows errors on :base
      f.inputs 'Users' do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :first_name
      f.input :last_name
      f.input :store_number
      f.input :address
      f.input :address2
      f.input :city
      f.input :state, :as => :select,  :collection => [['Alabama', 'AL'],
              ['Alaska', 'AK'],
              ['Arizona', 'AZ'],
              ['Arkansas', 'AR'],
              ['California', 'CA'],
              ['Colorado', 'CO'],
              ['Connecticut', 'CT'],
              ['Delaware', 'DE'],
              ['District of Columbia', 'DC'],
              ['Florida', 'FL'],
              ['Georgia', 'GA'],
              ['Hawaii', 'HI'],
              ['Idaho', 'ID'],
              ['Illinois', 'IL'],
              ['Indiana', 'IN'],
              ['Iowa', 'IA'],
              ['Kansas', 'KS'],
              ['Kentucky', 'KY'],
              ['Louisiana', 'LA'],
              ['Maine', 'ME'],
              ['Maryland', 'MD'],
              ['Massachusetts', 'MA'],
              ['Michigan', 'MI'],
              ['Minnesota', 'MN'],
              ['Mississippi', 'MS'],
              ['Missouri', 'MO'],
              ['Montana', 'MT'],
              ['Nebraska', 'NE'],
              ['Nevada', 'NV'],
              ['New Hampshire', 'NH'],
              ['New Jersey', 'NJ'],
              ['New Mexico', 'NM'],
              ['New York', 'NY'],
              ['North Carolina', 'NC'],
              ['North Dakota', 'ND'],
              ['Ohio', 'OH'],
              ['Oklahoma', 'OK'],
              ['Oregon', 'OR'],
              ['Pennsylvania', 'PA'],
              ['Puerto Rico', 'PR'],
              ['Rhode Island', 'RI'],
              ['South Carolina', 'SC'],
              ['South Dakota', 'SD'],
              ['Tennessee', 'TN'],
              ['Texas', 'TX'],
              ['Utah', 'UT'],
              ['Vermont', 'VT'],
              ['Virginia', 'VA'],
              ['Washington', 'WA'],
              ['West Virginia', 'WV'],
              ['Wisconsin', 'WI'],
              ['Wyoming', 'WY'],
              ["           "],
              ['Alberta', 'AB' ],
              ['Manitoba', 'BC' ],
              ['New Brunswick', 'NB' ],
              ['Newfoundland and Labrador', 'NL' ],
              ['Nova Scotia', 'NS' ],
              ['Northwest Territories', 'NT' ],
              ['Nunavut', 'NU' ],
              ['Ontario', 'ON' ],
              ['Quebec', 'OC' ],
              ['Saskatchewan', 'SK' ],
              ['Yukon', 'IT' ]]
      f.input :zip
      f.input :country
      f.input :phone_number
      f.input :location_type, :as => :select,  :collection => [ ["Store", "store_front"],
              ["Fulfillment Center", "fulfillment_center"],
              ["Service Center", "service_center"]]
      f.input :tos
      f.input :admin
      f.input :aaronsmgr
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
