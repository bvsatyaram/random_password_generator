module RandomPasswordGenerator
  # Generates a random password
  # Arguments:
  # +length+: The length of the password to be generated. Default value: 8
  # +options+: Various options to generate password
  #   +:skip_lower_case+:               Skips lower case alphabets if set to true
  #   +:skip_upper_case+:               Skips upper case alphabets if set to true
  #   +:skip_numbers+:                  Skips numbers if set to true
  #   +:skip_symbols+:                  Skips symbols if set to true
  #   +:dont_exclude_unfrieldly_chars+: Does not skip commonly mistaken characters if set to true
  def self.generate(length = 8, options = {})
    chars = []
    chars += ("a".."z").to_a unless options[:skip_lower_case]
    chars += ("A".."Z").to_a unless options[:skip_upper_case]
    chars += ("0".."9").to_a unless options[:skip_numbers]
    chars += ["!", "@", "#", "$", "%", "^", "&", "(", ")", "{", "}", "[", "]", "-", "_", "<", ">", "?"] unless options[:skip_symbols]
    # Skip easily mistaken characters
    chars -= %w(i o 0 1 l !) unless options[:dont_exclude_unfrieldly_chars]

    (1..length).collect{chars[rand(chars.size)]}.join
  end
end
