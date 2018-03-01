class PermissionDeniedError < StandardError
  attr_reader :action

  def initialize(message, action)
    # Call the parent's constructor to set the message
    super(message)
    puts "Es el padre"
    # Store the action in an instance variable
    @action = action
    puts "Es el error de hijo"
  end
end

# Cuando alguien trate de borrar algo sin permiso podrías
# hacer algo así:
raise PermissionDeniedError.new("Error Daniel", :delete)
