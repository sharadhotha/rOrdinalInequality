proportions<- function(endow, categories){
	if(!is.vector(endow)){
		stop("The argument endow needs to be a vector.")
	}
	if(!is.vector(categories)){
		stop("The argument categories needs to be a vector.")
	}
	if(anyDuplicated(categories)){
		stop("The categories Vector has duplicates.")
	}
	
	arr<-integer(length(categories))
	cat<-setNames(arr,categories)
	count<- 0
	for(val1 in endow){
		if(!is.element(val1,categories)){
			stop("Categories doesn't cover all possible endowments")
		}	
		cat[as.character(val1)]<- cat[as.character(val1)]+1
	}
	# cat<-unname(cat)
	cat<-cat/sum(cat)
	cat
	
}