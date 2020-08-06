ActiveAdmin.register Question do
  permit_params :text, :question_level

  form do |f|
    f.inputs do
      f.input :text
      f.input :question_level, :as => :number ,min:1 ,max:5
    end
    f.actions

  end

end
