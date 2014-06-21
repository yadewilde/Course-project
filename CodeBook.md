==================================================================
COURSE PROJECT workbook
==================================================================
The script run_analysis.R downloads the data from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

It merges the training and the test sets to create one data set 
It extracts only the measurements on the mean and standard deviation for each measurement
It uses descriptive activity names to name the activities in the data set
It labels the variables with descriptive variable names
It creates a second, independent tidy data set with the average of each variable for each activity and each subject

Data
====

The tidy dataset is 'Data.txt'. You can download it in R using the read.table() function.
The data are the average of each variable for each activity and each subject. 


Transformations or work performed to have the tidy dataset
==========================================================
Firstly, the script imports the traing and test datasets
It then imports the subjects and activities linked to these two datasets
Then, it replaces the activity numbers by a descriptive label
It merges the training and test datasets and extracts only columns for which
a mean() or a std() are present.
It replaces the inital variables labels with a more descriptive and long label
Finally, it calculates the average of each variable for each activity and each subject 


Variables
=========
The tidy dataset has 68 variables with meaningfull labels. You can understand the meaning of the variable directly.

[1] "Subject"                                                                                            
[2] "Activity"                                                                                           
[3] "Time of body acceleration signal from accelerometer - Average -X"                                   
[4] "Time of body acceleration signal from accelerometer - Average -Y"                                   
[5] "Time of body acceleration signal from accelerometer - Average -Z"                                   
[6] "Time of gravity acceleration signal from accelerometer - Average -X"                                
[7] "Time of gravity acceleration signal from accelerometer - Average -Y"                                
[8] "Time of gravity acceleration signal from accelerometer - Average -Z"                                
[9] "Time of body acceleration signal from accelerometer  - Jerk signal - Average -X"                    
[10] "Time of body acceleration signal from accelerometer  - Jerk signal - Average -Y"                    
[11] "Time of body acceleration signal from accelerometer  - Jerk signal - Average -Z"                    
[12] "Time of body acceleration signal from gyroscope- Average -X"                                        
[13] "Time of body acceleration signal from gyroscope- Average -Y"                                        
[14] "Time of body acceleration signal from gyroscope- Average -Z"                                        
[15] "Time of body acceleration signal from gyroscope - Jerk signal - Average -X"                         
[16] "Time of body acceleration signal from gyroscope - Jerk signal - Average -Y"                         
[17] "Time of body acceleration signal from gyroscope - Jerk signal - Average -Z"                         
[18] "Time of body acceleration signal from accelerometer  - Magnitude - Average "                        
[19] "Time of gravity acceleration signal from accelerometer  - Magnitude - Average "                     
[20] "Time of body acceleration signal from accelerometer  - Jerk signal  - Magnitude - Average "         
[21] "Time of body acceleration signal from gyroscope - Magnitude - Average "                             
[22] "Time of body acceleration signal from gyroscope - Jerk signal  - Magnitude - Average "              
[23] "Frequency domain signal of body from accelerometer - Average -X"                                    
[24] "Frequency domain signal of body from accelerometer - Average -Y"                                    
[25] "Frequency domain signal of body from accelerometer - Average -Z"                                    
[26] "Frequency domain signal of body from accelerometer  - Jerk signal - Average -X"                     
[27] "Frequency domain signal of body from accelerometer  - Jerk signal - Average -Y"                     
[28] "Frequency domain signal of body from accelerometer  - Jerk signal - Average -Z"                     
[29] "Frequency domain signal of body from gyroscope- Average -X"                                         
[30] "Frequency domain signal of body from gyroscope- Average -Y"                                         
[31] "Frequency domain signal of body from gyroscope- Average -Z"                                         
[32] "Frequency domain signal of body from accelerometer  - Magnitude - Average "                         
[33] "Frequency domain signal of body from accelerometer  - Jerk signal  - Magnitude - Average "          
[34] "Frequency domain signal of body from gyroscope - Magnitude - Average "                              
[35] "Frequency domain signal of body from gyroscope - Jerk signal  - Magnitude - Average "               
[36] "Time of body acceleration signal from accelerometer standard deviation -X"                          
[37] "Time of body acceleration signal from accelerometer standard deviation -Y"                          
[38] "Time of body acceleration signal from accelerometer standard deviation -Z"                          
[39] "Time of gravity acceleration signal from accelerometer standard deviation -X"                       
[40] "Time of gravity acceleration signal from accelerometer standard deviation -Y"                       
[41] "Time of gravity acceleration signal from accelerometer standard deviation -Z"                       
[42] "Time of body acceleration signal from accelerometer  - Jerk signal standard deviation -X"           
[43] "Time of body acceleration signal from accelerometer  - Jerk signal standard deviation -Y"           
[44] "Time of body acceleration signal from accelerometer  - Jerk signal standard deviation -Z"           
[45] "Time of body acceleration signal from gyroscopestandard deviation -X"                               
[46] "Time of body acceleration signal from gyroscopestandard deviation -Y"                               
[47] "Time of body acceleration signal from gyroscopestandard deviation -Z"                               
[48] "Time of body acceleration signal from gyroscope - Jerk signal standard deviation -X"                
[49] "Time of body acceleration signal from gyroscope - Jerk signal standard deviation -Y"                
[50] "Time of body acceleration signal from gyroscope - Jerk signal standard deviation -Z"                
[51] "Time of body acceleration signal from accelerometer  - Magnitude standard deviation "               
[52] "Time of gravity acceleration signal from accelerometer  - Magnitude standard deviation "            
[53] "Time of body acceleration signal from accelerometer  - Jerk signal  - Magnitude standard deviation "
[54] "Time of body acceleration signal from gyroscope - Magnitude standard deviation "                    
[55] "Time of body acceleration signal from gyroscope - Jerk signal  - Magnitude standard deviation "     
[56] "Frequency domain signal of body from accelerometer standard deviation -X"                           
[57] "Frequency domain signal of body from accelerometer standard deviation -Y"                           
[58] "Frequency domain signal of body from accelerometer standard deviation -Z"                           
[59] "Frequency domain signal of body from accelerometer  - Jerk signal standard deviation -X"            
[60] "Frequency domain signal of body from accelerometer  - Jerk signal standard deviation -Y"            
[61] "Frequency domain signal of body from accelerometer  - Jerk signal standard deviation -Z"            
[62] "Frequency domain signal of body from gyroscopestandard deviation -X"                                
[63] "Frequency domain signal of body from gyroscopestandard deviation -Y"                                
[64] "Frequency domain signal of body from gyroscopestandard deviation -Z"                                
[65] "Frequency domain signal of body from accelerometer  - Magnitude standard deviation "                
[66] "Frequency domain signal of body from accelerometer  - Jerk signal  - Magnitude standard deviation " 
[67] "Frequency domain signal of body from gyroscope - Magnitude standard deviation "                     
[68] "Frequency domain signal of body from gyroscope - Jerk signal  - Magnitude standard deviation " 


