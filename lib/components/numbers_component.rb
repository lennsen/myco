module NumbersComponent
    # To avoid deprecation warning, you need to make the wrapper_options explicit
    # even when they won't be used.
    def number(wrapper_options = nil)
      @number ||= begin
        options[:number].to_s.html_safe if options[:number].present?
      end
    end
  end
  
  SimpleForm.include_component(NumbersComponent)