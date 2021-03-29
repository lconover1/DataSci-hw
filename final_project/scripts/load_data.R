# Downloading files from the Harvard dataverse:
# Bryant, Greg, 2018, "Perception and acoustic data with R scripts", https://doi.org/10.7910/DVN/CKLIY1, Harvard Dataverse, V1, UNF:6:uJPHlxXK/Uv3pn4nv1lJzA== [fileUNF]

#read_csv('https://dataverse.harvard.edu/file.xhtml?persistentId=doi:10.7910/DVN/CKLIY1/8A4XXA&version=1.0')
#read_csv('https://dataverse.harvard.edu/file.xhtml?persistentId=doi:10.7910/DVN/CKLIY1/WOXXVQ&version=1.0')

#I cannot find the link to the files themselves, I can only find the link to the page where they are hosted, along with a number of other files.
#I ended up just clicking the "download" link

#load from disk

acoustic <- read_csv(here::here("data", "raw", "acoustic_data_03-08-2020.csv"))
perception <- read_csv(here::here("data", "raw", "perception_data_03-08-2020.csv"))