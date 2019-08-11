status<- function(endow,categories,downward){
		prop<-proportions(endow,categories)
		arr1<-integer(length(endow))
		arr<-setNames(arr1,endow)
		i<-1
		while(i <= length(endow)){
			arr[i]<-sum(unname(prop[which(names(prop)==names(arr[i])):length(prop)]))
			i<-i+1
		}
		arr
}