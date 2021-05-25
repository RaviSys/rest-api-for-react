# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

250.times do |i|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    contact: Faker::PhoneNumber.cell_phone_with_country_code, 
    image_url: 'https://statinfer.com/wp-content/uploads/dummy-user.png'
  )
end

warnings = ReactError.create([
  {
    title: "Warning: You provided a `value` prop to a form field without an `onChange` handler. This will render a read-only field. If the field should be mutable use `defaultValue`. Otherwise, set either `onChange` or `readOnly`",
    error_type: "Warning"
  },
  {
    title: "Warning: findDOMNode is deprecated in StrictMode. findDOMNode was passed an instance of Transition which is inside StrictMode. Instead, add a ref directly to the element you want to reference. Learn more about using refs safely here:",
    error_type: "Warning"
  }, 
  {
    title: "Warning: A component is changing an uncontrolled input to be controlled. This is likely caused by the value changing from undefined to a defined value, which should not happen. Decide between using a controlled or uncontrolled input element for the lifetime of the component. More info: https://reactjs.org/link/controlled-components",
    error_type: "Warning"
  }
])