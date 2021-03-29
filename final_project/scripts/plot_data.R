laugh_plot <- by_laugh %>% 
  ggplot(aes(Pitch, Duration)) +
  geom_point(aes(color = Hit_Rate)) +
  theme_light() +
  ggtitle('Interaction of pitch and duration on laugh type ID') +
  xlab('Total Duration (seconds)') +
  ylab('Log Mean Pitch (Hz)')

ggsave(here::here("output", "figures", "laugh_plot_pitch_duration.png"), laugh_plot)
ggsave(here::here("output", "figures", "laugh_plot_pitch_duration.svg"), laugh_plot)
ggsave(here::here("output", "figures", "laugh_plot_pitch_duration.pdf"), laugh_plot)

#####

subject_plot <- by_subject %>% 
  ggplot(aes(country, hit_rate, color = country)) +
  geom_boxplot() +
  geom_jitter(alpha = 0.25) +
  theme_light() +
  theme(axis.text.x = element_blank()) +
  ggtitle('Impact on country of origin on American laugh type identification')

ggsave(here::here("output", "figures", "subject_plot_country.png"), subject_plot)
ggsave(here::here("output", "figures", "subject_plot_country.svg"), subject_plot)
ggsave(here::here("output", "figures", "subject_plot_country.pdf"), subject_plot)
