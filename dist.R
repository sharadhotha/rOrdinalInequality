dist<-function(endow,categories,alpha,c){
	sta<-status(endow, categories, TRUE)
	arr<-integer(length(endow))
	i<-1
	while(i<=length(endow)){
		arr[i]<-c*(sta[i])^alpha
		i<-i+1
	}
	arr<-setNames(arr,endow)
	arr
}