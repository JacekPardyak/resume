# Applicant Tracking System (ATS) friendly Resume
# us 8.5 x 11     : letterpaper
# eu 8.27 x 11.69 : a4paper
# use strong verbs
# taalmaatje

library(RSelenium)

# Start a Selenium firefox browser
driver <- rsDriver(browser = "firefox",
                   port = 4555L,
                   verbose = FALSE,
                   chromever = NULL)
# extract the client for readability of the code to follow
remote_driver <- driver[["client"]]

# Set URL
url <- "https://nl.indeed.com/jobs?q=r&l=2523CH&from=searchOnHP&vjk=5174920840f4fb8f"

# Navigate to the webpage
remote_driver$navigate(url)

require(tidyverse)
require(quanteda)
require(quanteda.textstats)

## Package version: 2.1.0

indeed <-"
About Apeiron Insight

Apeiron Insight is a data-driven research & analytics company, providing data products and insights to investment companies. We use predictive modelling to deliver actionable intelligence to the biggest sharks in the tank. Apeiron Insight is growing fast. We are hiring for several roles in multiple disciplines to scale up our operation.

Your role with us

As the Head of Data Science, you are the one who manages the Data Science team, in alignment with Apeiron’s vision and product strategy. You are responsible for the performance, scalability, and architectural setup of our data science stack. As a team lead, you will guide the growing team of data scientists & analysts in the daily operations, personal development and the workload planning with our development teams.
Main responsibilities will include:

Managing the budget, plan capacity of the team and grow the team in the future.
Developing and deploying predictive models for estimation of corporate performance of companies that are tracked in our data.
Identifying and executing creative ways to answer key industry questions using our proprietary data and insights.
Ensuring delivery of high-quality engineering solutions with the team, establishing, and implementing best practices for development, testing and deployment.
Implementing agile software development principles, DevOps and MLOps practices to drive a bigger impact for the team and data science users.
Managing project timelines and executing to timelines.
What are we looking for?

You have a Master’s degree or PhD in Computer Science, Mathematics, Econometrics, Operations Research Engineering field or other relevant studies.
6+ years of experience in software development with Python, SQL and R and a track record of designing, building, releasing, and maintaining code in a production environment.
Working experience as a team lead, mentoring more junior colleagues.
Experience with time series analysis.
Experience with Econometric analysis and methods, such as Choice Modelling and analyzing survey-based data.
Experience with Bayesian analysis in programming languages such as PyMC and Stan.
Ability to drive a team to maintain high standards when it comes to system design, production systems, testing, code quality and maintainability.
You are legally allowed to work in the Netherlands.
You are able to come to our lovely office in Rijswijk twice a week, or more.
What we offer?

This is your chance to join a dynamic data company where you’ll be part of a very ambitious and smart team on a mission. You’ll get all the benefits of working for an agile scale-up such as a relaxed work environment, the possibility to work from home part of the time, easy-going colleagues and freedom in your work. Additionally, we offer you:

Competitive salary tailored to your skills & experience.
25 vacation days based on a 40 hour working week.
8% holiday payment.
Profit Sharing Bonus scheme.
Pension & Mobility Allowance.
An annual budget of €3.000 to spend on professional or personal development.
Hybrid work model: a mix of working from home and in the office.
Healthy and delicious buffet breakfast, lunch and a filled refrigerator in the office.
Everything you need to work from home: a screen, keyboard and mouse.
Fun events with colleagues.
A referral reward program: refer a friend for one of our jobs.
If you think this position fits you well, we sincerely hope to hear from you. If so, please submit your resume and motivation letter."

dat_inaug <- tibble(texts = readLines("./Untitled/Untitled.Rmd") %>% paste(collapse = "")) %>%
  bind_rows(tibble(texts = indeed))
colls <- dat_inaug %>% corpus(text_field = "texts") %>%
  tokens(remove_punct = TRUE) %>%
  tokens_select(pattern = "^[A-Z]", 
                                valuetype = "regex", 
                                case_insensitive = FALSE, 
                                padding = TRUE) %>% 
  textstat_collocations(min_count = 2)
head(colls, 20)

toks <- dat_inaug %>%
  corpus(text_field = "texts") %>%
  tokens(remove_punct = TRUE) %>%
  tokens_compound(colls, concatenator = " ") %>%
  dfm() %>%
  dfm_trim(min_termfreq = 2) %>%
  dfm_remove(stopwords("en")) %>%
  textstat_frequency()

