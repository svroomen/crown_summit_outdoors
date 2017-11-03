ActiveAdmin.register Product do
  ActiveAdmin.setup do |config|
    config.default_per_page = 20
  end

  permit_params :name, :description, :price, :stock_quantity, :gender,
                :category_id, :size_type, :image, image_attributes: [:_destroy]

  index as: :grid, columns: 3 do |product|
    div link_to image_tag(product.image(:thumb), size: '115x115'),
                admin_product_path(product)
    div link_to product.name, admin_product_path(product)
  end

  index default: true do
    table
    selectable_column
    id_column
    column :name
    column :category
    column :gender
    column :description
    column :price
    column :stock_quantity
    column :image_file_name
    actions
  end

  show do
    attributes_table do
      row :name
      row :category
      row :size_type
      row :gender
      row :description
      row :price
      row :stock_quantity
      row :created_at
      row :updated_at
      row :image do |ad|
        image_tag ad.image.url(:large)
      end
    end
  end

  form html: { enctype: 'multipart/form-data' } do |f|
    f.inputs do
      f.input :name, required: true
      f.input :category, prompt: 'Please select a category', required: true
      f.input :size_type, as: :select, collection: Product.product_size_types,
                          required: true, prompt: 'Please select a size type'
      f.input :gender, as: :select, collection: Product.gender_options,
                       required: true, prompt: 'Please select a gender'
      f.input :description, required: true
      f.input :price, required: true
      f.input :stock_quantity, required: true
      f.input :image, as: :file, hint: image_tag(f.object.image.url(:medium))
      if f.object.image.present?
        f.semantic_fields_for :image_attributes do |image_fields|
          image_fields.input :_destroy, as: :boolean, label: 'Delete Image?'
        end
      end
    end
    f.actions
  end
end
