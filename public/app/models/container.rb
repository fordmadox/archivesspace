class Container < Record

  def display_string
    bits = []
    if @json['type']
      bits << I18n.t("enumerations.container_type.#{@json['type']}", :default => @json['type'].capitalize)
    else
      # update "Box" bit to grab from a YML file.
      bits << 'Box'
    end
    bits << @json['indicator']

    bits.join(' ')
  end

end
