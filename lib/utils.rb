module Utils

  # Iterate through the elements already saved and delete them
  def self.clean_up_failed_post form_id
    form = Form.find form_id
    Rails.logger.error "Failed posting #{form.form_name}"

    form.form_elements.each do |fe|
      fe.element_options.each do |eo|
        eo.delete
      end

      fe.field_logic_elements.each do |fle|
        fle.field_logic_conditions.each do |flc|
          flc.delete
        end
        fle.delete
      end

      fe.delete
    end

    form.delete
  end
end
