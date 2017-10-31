InputModule = require "input"

input = new InputModule.Input
  setup: true # Change to true when positioning the input so you can see it
  y: 30 # y position
  x: 36  # x position
  width: 280
  height: 120
  virtualKeyboard: true # Enable or disable virtual keyboard for when viewing on computer
  placeholder: "Username" # Text visible before the user type
  placeholderColor: "red" # Color of the placeholder text
  text: "May peace, joy, and happiness be with you now and in the future.  Happy Holidays!" # Initial text in the input
  textColor: "#b1b1b1" # Color of the input text
  type: "text" # Use any of the available HTML input types. Take into account that on the computer the same keyboard image will appear regarding the type used.
  backgroundColor: "#fff"
  fontSize: 17 # Size in px
  fontFamily: "Roboto" # Font family for placeholder and input text
  fontWeight: "400" # Font weight for placeholder and input text
  lineHeight: 1 # Line height in em
  tabIndex: 5 # Tab index for the input (default is 0)
  padding: 10 # Padding in px, multiple values are also supported via string, e.g. "10 5 16 2"
  autofocus: false # Change to true to enable autofocus
  goButton: false # Set true here in order to use "Go" instead of "Return" as button (only works on real devices)
  submit: false # Change to true if you want to enable form submission
  
input.style = 
	placeholderColor: "red"