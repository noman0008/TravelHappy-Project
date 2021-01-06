y1=c(4,4,4,4,4,4,5,5,4,3,4,4,5,4,4,3,4,5,3,5,4,4,4,4)
> qqnorm(y1)
> y2=c(5,5,5,5,5,5,5,5,5,5,5,5,4,5,5,5,4,4,4,5,5,5,4,4)
> t.test(y1,y2,paired=TRUE)

        Paired t-test

data:  y1 and y2
t = -4.2895, df = 23, p-value = 0.0002736
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.9881722 -0.3451611
sample estimates:
mean of the differences 
             -0.6666667 


> diff=abs(y1-y2)
> diff
 [1] 1 1 1 1 1 1 0 0 1 2 1 1 1 1 1 2 0 1 1 0 1 1 0 0
> qqnorm(diff)
> t=mean(diff)*sqrt(24)/sd(diff)
> t
[1] 7.229988
> mean(diff)
[1] 0.8333333

> sd(diff)
[1] 0.5646597
> p=1-pt(t,df=23)
> p
[1] 1.163289e-07
