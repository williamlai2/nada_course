
# download the file from the url and unzip -----------------------------------------------
url <- "https://practicalstats.com/resources/NADA-resources/NADA2-Online-3_9.zip"
download.file(url, dest="dataset.zip", mode="wb")
unzip ("dataset.zip", exdir = ".")

# rename the nada folder-------------------------
file.rename("NADA2 Online 3_9", "NADA2_online_3_9")

# remove the mac folder--------------------------------------
unlink("__MACOSX", recursive = TRUE)

# delete the zip file ----------------------
unlink("dataset.zip")
