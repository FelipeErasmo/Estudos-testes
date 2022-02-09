class LoginPage < SitePrism::Page
    set_url ''
    element :emailField, :id, "session_key"
    element :passwordField, :id, "session_password"
    element :loginButton, :xpath, "//button[@class= 'sing-in-form__submit-button']"


    def userLogin
        emailField.set (email)
        passwordField.set (password)
        loginButton.click
    end
end

