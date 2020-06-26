typeo
is: var type: type 
 ^ (self is: var in: self vars) | (type === #number & (self is: var in: self numbers)) | (type === #symbol & (self is: var in: self symbols))