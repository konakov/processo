module ApplicationHelper

  def link_to_add_fields(name, f, association, classes = {})
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for association, new_object, child_index: "new_#{association}" do |b|
      render association.to_s.singularize + "_fields", f: b
    end
    link_to_function name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")", classes
  end

  def link_to_remove_fields(name, f, classes = {})
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)", classes)
  end

end
