equality
not: var type: type 
 ^ (type === #number & (self is: var in: self symbols , self pair)) | (type === #symbol & (self is: var in: self numbers , self pair))