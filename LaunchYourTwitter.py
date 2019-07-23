from selenium import webdriver
# from time import sleep

# my monitor size :  width=1920 x height=1080

driver = webdriver.Chrome()
driver.get("https://twitter.com/login")
driver.set_window_size(500,989)
driver.set_window_position(1420,23)

# p = driver.get_window_position()
# s = driver.get_window_size()
# print(p)
# print(s)

login_user_name = "Your Username"
login_user_passwd = "*************"

# ログイン画面でログインユーザ名を自動入力する
user_name = driver.find_element_by_class_name("js-username-field")
user_name.send_keys(login_user_name)
# sleep(1)

# ログイン画面でログインパスワードを自動入力する
user_passwd = driver.find_element_by_class_name("js-password-field")
user_passwd.send_keys(login_user_passwd)
# sleep(1)

# ログイン
login_btn = driver.find_element_by_css_selector('button.submit.EdgeButton.EdgeButton--primary.EdgeButtom--medium')
login_btn.click()
