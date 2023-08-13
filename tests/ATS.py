# Installing and starting up Chrome using Webdriver Manager
#!pip install webdriver_manager
#!pip install selenium

# -------------------------------------
from selenium import webdriver 
from selenium.webdriver.common.by import By 
from selenium.webdriver.chrome.service import Service as ChromeService 
from webdriver_manager.chrome import ChromeDriverManager 
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from webdriver_manager.chrome import ChromeDriverManager

driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))

from selenium import webdriver
driver = webdriver.Chrome(service=ChromeService('C:\Program Files\Google\Chrome\Application\chromedriver-win64'))

C:\Program Files\Google\Chrome\Application\chromedriver-win64

?ChromeDriverManager()

# instantiate options 
options = webdriver.ChromeOptions() 
 
# run browser in headless mode 
options.add_argument('--headless')
#headless = True 
 
# instantiate driver 
driver = webdriver.Chrome(service=ChromeService( 
	ChromeDriverManager().install()), options=options) 
#driver.implicitly_wait(10)

# load website 
url = 'https://angular.io/' 
url = 'https://www.kvk.nl/zoeken/handelsregister/?handelsnaam=team.blue&kvknummer=&straat=&postcode=&huisnummer=&plaats=&hoofdvestiging=1&rechtspersoon=1&nevenvestiging=1&zoekvervallen=0&zoekuitgeschreven=1&start=0' 
# get the entire website content 
driver.get(url) 
WebDriverWait(driver, 10).until(EC.element_to_be_clickable((By.XPATH,'//*[@id="cookie-consent"]/div/button'))).click()

