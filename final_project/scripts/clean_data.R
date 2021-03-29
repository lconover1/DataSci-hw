perception <- rename(perception, Laugh = LaughFile)
perception$Laugh <- replace(perception$Laugh,0:length(perception$Laugh),acoustic$Laugh) %>% 
  as.numeric()
#files were for some reason renamed when saved through the audio editing software.  This is to undo that renaming

#####

by_subject <- perception %>% 
  group_by(UniqSub) %>% 
  summarise(hit_rate = sum(Hit)/max(Trial), country = unique(Country)) %>% 
  rename(subject = UniqSub)
  

write_csv(by_subject, here::here("data", "clean", "hits_by_subject.csv"))

#for in-text table only:
country_accuracy <-by_subject %>% 
  group_by(country) %>% 
  summarise(accuracy=mean(hit_rate))

#####

by_laugh <- perception %>% 
  group_by(Laugh) %>% 
  summarise(Hit_Rate = sum(Hit)/length(by_subject$subject)) %>% 
  inner_join(acoustic, by = 'Laugh') %>% 
  select(Laugh, Condition, Pitch = PitchLogMean, Duration = TotalDuration, Hit_Rate) %>% 
  mutate(factorCondition = if_else(Condition == "Spontaneous", 1, 0))

write_csv(by_laugh, here::here("data", "clean", "hits_by_laugh.csv"))