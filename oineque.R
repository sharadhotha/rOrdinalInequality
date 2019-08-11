oineque<-function(endow, categories, alpha){
    i<-1
    ineq<-0
    sta<-status(endow,categories)
    sta<-unname(sta)
    while(i<=length(endow)){
        ineq<-ineq+((sta[i])^alpha)
		i<-i+1
    }
    ineq<-ineq-lenght(endow)
    ineq<-ineq/length(endow)
    ineq<-ineq/alpha
    ineq<-ineq/(alpha-1)
    ineq
}