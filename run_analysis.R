## Call necessary libraries. 
library(dplyr)

## Reading in activity names and column names. 
activity_labels<-read.table("activity_labels.txt", stringsAsFactors = FALSE)
features<-read.table("features.txt", stringsAsFactors = FALSE)
features_vect<-features[,2]

## Cleaning up column names. 
temp_features<-gsub("-", "", features_vect)
clean_features<-gsub("\\(\\)", "", temp_features)


## Reading in test data. 
subject_test<-read.table("subject_test.txt")
y_test<-read.table("y_test.txt")
x_test<-read.table("x_test.txt")

## Adding column names to test data. 
colnames(x_test)<-clean_features

## Combining test data columns. 
test_temp<-cbind(subject_test, y_test)
test_final<-cbind(test_temp, x_test)


## Reading in train data. 
subject_train<-read.table("subject_train.txt")
y_train<-read.table("y_train.txt")
x_train<-read.table("X_train.txt")

## Adding column names to train data. 
colnames(x_train)<-clean_features

## Combining train data columns. 
train_temp<-cbind(subject_train, y_train)
train_final<-cbind(train_temp, x_train)

## Comining test data rows with train data rows. 
df<-rbind(test_final, train_final)

## Adding columns names for first two columns. 
colnames(df)[1]<-"Subject"
colnames(df)[2]<-"Activity"

## Adding in activity names. 
act.labels <- c("WALKING", "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
for (i in 1:6){
df$Activity <- gsub(i, act.labels[i], df$Activity)
}

## Selecting only columns for means or standard deviation. 
df_select<-df[,grep("Subject|Activity|mean[XYZ]|std[XYZ]|mean$|std$",names(df))]

## Getting mean of each measurement for each subject and activity. 
data_summary <- df_select %>%
group_by(Subject,Activity) %>%
summarise_each(funs(mean))

## Exporting tidy data set. 
write.table(data_summary, "tidy_data.txt", row.name=FALSE)
