t = seq(0, 1, by=1/800)  # WARNING: using t is bad pRactice because it's reserved- but let's be bad
amps = c(5, .10, .15, .20, .25, .30)
x = matrix(0, 201, 100)
for (j in 1:6) x[,j] = amps[j]*sin(2*pi*t*2*j)
x = ts(cbind(x, rowSums(x)), start=0, deltat=1/200)               
ts.plot(x, lty=c(1:6, 1), lwd=c(rep(1,6), 2), ylab="Sinusoids")
names = c("Fundamental","2nd Harmonic","3rd Harmonic","4th Harmonic","5th Harmonic", 
          "6th Harmonic","Formed Signal")
legend("topright", names, lty=c(1:6, 1), lwd=c(rep(1,6), 2))
rm(t)                    # Redemption
