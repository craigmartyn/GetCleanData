run_analysis <- function() {##Read in files
        X_train<-read.table("X_train.txt")
        y_train<-read.table("y_train.txt")
        subject_train<-read.table("subject_train.txt")
        X_test<-read.table("X_test.txt")
        y_test<-read.table("y_test.txt")
        subject_test<-read.table("subject_test.txt")
        features<-read.table("features.txt")
        activity_labels<-read.table("activity_labels.txt")
        ## Merge training and test data sets
        X_traintest<-rbind(X_train,X_test)
        y_traintest<-rbind(y_train,y_test)
        subject_traintest<-rbind(subject_train,subject_test)
        #Select columns in X data set that contain mean or std
        mstdmatch<-grep("mean|std",features[,2])
        X_mstd<-select(X_traintest,mstdmatch)
        #Name columns
        names(X_mstd)<-features[mstdmatch,2]
        names(y_traintest)<-"Activity"
        names(subject_traintest)<-"Subject"
        ##Add descriptive activity names
        activitymatch<-match(y_traintest$Activity,activity_labels[,1])
        y_traintest$Activity<-activity_labels[activitymatch,2]
        ##Combine columns
        combineddata<-cbind(subject_traintest,y_traintest,X_mstd)
        ##Calculate and return mean for each variable for each Activity and Subject
        meltdata<-melt(combineddata,id=c("Subject","Activity"))
        dcast(meltdata, Activity + Subject ~ variable, mean)
}