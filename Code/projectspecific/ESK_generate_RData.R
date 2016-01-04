#############################################
# Generate data for the ANALYSIS
#############################################

# Stand: 4.1.2016
#getwd()

source("Code/universal/R_pkgs.R")

ESK_panel <- read_csv2("Data/Raw/esk_daten_20151222.csv")


#ESK_dateDownloaded <- date()
ESK_dateDownloaded <- "Sun Jan  3 15:59:19 2016"


################################################
## DATE into yearmon class as new variable
ESK_panel$yearmon <- as.yearmon(ESK_panel$date)

pdat <- pdata.frame(ESK_panel, index = c("householdId", "yearmon"))


##############
## make dataset available
save.image(file = "Data/Processed/20160104_ESK_panel.RData")

