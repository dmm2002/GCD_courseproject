
#read both training and test data
x_train<-read.table("/Users/davidmorrison/R/GCD/projdata/train/X_train.txt",stringsAsFactors=FALSE)
x_test<-read.table("/Users/davidmorrison/R/GCD/projdata/test/X_test.txt",stringsAsFactors=FALSE)

#combine into one dataset and remove originals to reduce memory usuage
data<-rbind(x_train,x_test)
rm(x_train,x_test)

#read in features name, assign them as column names
features<-read.table("/Users/davidmorrison/R/GCD/projdata/features.txt")
colnames(data)<-features$V2

#subset to only include std and mean data, remove no longer needed data
colnm<-colnames(data)
cols<-colnm[grep(c("std|mean|Activity"),colnm)]
a<-grep("Freq",cols)
cols<-cols[-a]
fdata<-data[,cols]
rm(features,data)

#read in test and train activity set, merge, decode activities, add to dataset
#read in activity set
activity_train<-read.table("/Users/davidmorrison/R/GCD/projdata/train/y_train.txt"
                           ,stringsAsFactors=FALSE,col.names=c("Act_num"))
activity_test<-read.table("/Users/davidmorrison/R/GCD/projdata/test/y_test.txt"
                          ,stringsAsFactors=FALSE,col.names=c("Act_num"))

#merge activity data and add to dataset
activity_set<-rbind(activity_train,activity_test)
fdata<-cbind(fdata,activity_set)

#add and merge subject data
subject_train<-read.table("/Users/davidmorrison/R/GCD/projdata/train/subject_train.txt"
                           ,stringsAsFactors=FALSE,col.names=c("subject"))
subject_test<-read.table("/Users/davidmorrison/R/GCD/projdata/test/subject_test.txt"
                          ,stringsAsFactors=FALSE,col.names=c("subject"))
subject_set<-rbind(subject_train,subject_test)
fdata<-cbind(fdata,subject_set)

#decode activity
act_labels<-read.table("/Users/davidmorrison/R/GCD/projdata/activity_labels.txt"
                       ,stringsAsFactors=FALSE,col.names=c("Act_num","Activity"))

#once numbers are on main dataset, merge to get labels 
#(since merging reorders, need to add then decode)
fdata<-merge(x=fdata,y=act_labels,by.x="Act_num",by.y="Act_num") #probably could use gsub instead
fdata$Act_num<-NULL #remove act_num since we dont want it in the final dataset

#tidy up the column names
colnames<-colnames(fdata)
colnames <- tolower(gsub("[^[:alpha:]]", "", colnames))
colnames(fdata)<-colnames

#create combined dataset (cdata), then aggregate to get tidy data (tdata) and 
#output to tidy_data.txt
cdata <- melt(fdata, id.vars=c("activity", "subject"))
tdata <- dcast(cdata, subject + activity ~ variable, mean)
write.table(tdata, "tidy_data.txt",row.name=FALSE)
