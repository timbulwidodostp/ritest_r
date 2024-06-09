# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Randomization inference and permutation tests, allowing for arbitrary randomization procedures with (almost) Use ritest With (In) R Software
install.packages("remotes")
remotes::install_github("grantmcdermott/ritest")
library("ritest")
library("fixest")
ritest_r = read.csv("https://raw.githubusercontent.com/timbulwidodostp/ritest_r/main/ritest_r/ritest_r.csv",sep = ";")
# Estimation Randomization inference and permutation tests, allowing for arbitrary randomization procedures with (almost) Use ritest With (In) R Software
co_est = feols(dayscorab ~ b_treat + b_dayscorab | b_pair + miss_b_dayscorab + round2 + round3, vcov = ~b_block, data = ritest_r)
co_est
ritest <- ritest(co_est, 'b_treat', strata='b_pair', cluster='b_block', reps=1e3, seed=1234)
ritest
# Randomization inference and permutation tests, allowing for arbitrary randomization procedures with (almost) Use ritest With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished