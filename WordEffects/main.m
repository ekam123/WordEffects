//
//  main.m
//  WordEffects
//
//  Created by Ekam Singh Dhaliwal on 2019-05-27.
//  Copyright © 2019 ekam-singh. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (TRUE) {
            // 255 unit long array of characters
            char inputChars[255];
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            char *test = strtok(inputChars, "");
            NSLog(@"%c", *test);
        
            // print NSString object
            NSLog(@"Input was: %@", inputString);
        }
       
    }
    return 0;
}
