//
//  main.m
//  widgetDemo
//
//  Created by Yangyue on 15/3/12.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
//#include <sys/types.h>
//#include <dirent.h>
//#include <string.h>
//#include <sys/stat.h>
//#include <unistd.h>
//
//int Mydir( char *filepath);
//int checkFile( char *filepath);
//
//int  save_FileNameToFile( char *text);
//
//int findNum = 0;
//
//int main(int argc,  char *argv[])
//{
//    @autoreleasepool {
//        Mydir("/Users/mac/Desktop/ConfuseDemo/");//填写自己的工程的根目录路径。
//        
//        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
//    }
//    
//    //此代码的功能是遍历ios的项目的所有。h和。m的文件，把里面的类名，方法名，参数名等都提取出来，
//    //方便用CSDN博主“念茜”的方法来混淆自己的代码用。
//    
//    return 0;
//}
//
//int Mydir( char *filepath)
//{
//    char *fullpath,*filetype,*tmp;
//    struct stat statbuf;
//    DIR *dr;
//    struct dirent *drt;
//
//    if((dr=opendir(filepath))==NULL)
//        return 2;
//    
//    while((drt=readdir(dr))!=NULL)
//    {
//        if(strcmp(drt->d_name,".")==0||strcmp(drt->d_name,"..")==0)
//            continue;
//        fullpath=strdup(filepath);
//        fullpath=strcat(fullpath,"/");
//        fullpath=strcat(fullpath,drt->d_name);
//        
//        if( stat ( fullpath,&statbuf)<0)
//            return 3;
//        
//        if (S_ISREG(statbuf.st_mode))
//        {
//            filetype = "reguler";
//            int a = strlen(drt->d_name);
//            char *pp = drt->d_name;
//            printf("----%d %c 2 %c", a, pp[a - 2], pp[a - 1]);
//            
//            if(pp[a - 2] == '.' && pp[a - 1] == 'm')
//            {
//                pp[a - 2] = '\0';
//                printf("%s\n", drt->d_name);
//                checkFile(fullpath);
//            }
//            if(pp[a - 2] == '.' && pp[a - 1] == 'h')
//            {
//                char *mPath = strdup(filepath);
//                mPath=strcat(mPath,"/");
//                mPath=strcat(mPath,drt->d_name);
//                char *pp = drt->d_name;
//                int a = strlen(mPath);
//                pp[ a - 1] = 'm';//检查m文件是否存在。
//                if((access(mPath,F_OK))==0){
//                    continue;
//                }
//                pp[a - 2] = '\0';
//                printf("%s\n", drt->d_name);
//                checkFile(mPath);
//            }
//        }
//        else if(S_ISDIR(statbuf.st_mode))
//        {
//            filetype="directory";
//            fullpath=strcat(fullpath,"/");
////            printf("%s,%s\n",fullpath,filetype);
//            tmp=strdup(fullpath);
//            Mydir(tmp);
//        }
//        else
//        {
//            filetype="invalid";
////            printf("%s,%s\n",fullpath,filetype);
//        }
////        printf("%s,%s\n",fullpath,filetype);
//        bzero(fullpath,strlen(fullpath));
//    }
//    return 0;
//}
//
//
//int print_Method( char *text)
//{
//    char *p = text;
//    char c;
//    int start = 0;
//    
//    while((c = *p++) !='\n'){//Method
//        if(c == ':' || c == '{' || c == ';'){
//            start = 0;
//            break;
//        }
//        if(start == 1){
////            printf("111 %c ", c);
//            save_FileNameToFile(&c);
//            
//        }
//        
//        if(c == ')')
//            start = 1;
//    }
//    
//    save_FileNameToFile("\n");
////    printf("\n");
//    start = 0;
//    while((c = *p++) !='\n'){//arge
//        if(c == ':'){
//            start = 0;
////            printf("\n");
//        }
//        if(start == 2 && c != '{'){
////            printf("%c", c);
//        }
//        if(c == ' ' && start == 1)
//            start = 2;
//        if(c == ')')
//            start = 1;
//    }
////    printf("\n");
//    return 0;
//}
//int findMethod( char *text)
//{
//    char *p = text;
//    char c;
//    while((c = *p++) !='\n'){
//        if(c == '-' && ((*p == ' ' && *(p + 1) == '(') || *p == '(' )){
//            if( text[0] == '-' )
//            {
////                printf("%d %s\n", findNum++, text);
//                print_Method(text);
////                printf("要写入的的 :%s",text);
//                
//                
//            }else
//                printf("%d %s\n", findNum++, text);
//        }else if (c == '+' && ((*p == ' ' && *(p + 1) == '(') || *p == '(' ))
//        {
//            if( text[0] == '+' )
//            {
////                printf("%d %s\n", findNum++, text);
//                print_Method(text);
////                printf("要写入的的 :%s",text);
//            }
////                else
////                printf("%d %s\n", findNum++, text);
////            
//        }
//    }
//    return 0;
//}
//int  save_FileNameToFile( char *text)
//{
//    printf("写入的char ：%s",text);
//    FILE *file;
//    file=fopen("/Users/mac/Desktop/ConfuseDemo/confuse.text","a");           //打开文本文件（t）文件 ，fopen函数的具体参数可以在网上查
//    if(file==NULL)                        //打开失败
//    {
//        printf("打开失败 抱歉");
//    }
//    
//    else
//        
//    {
//        
//        fwrite(text,1,1,file);//第一个参数为要写入的字符串，第二个为每次写入的字节数，第三个为写入的次数，第四个为文件的指针
//        
//    }
//    
//    fclose(file);//最后别忘了关闭文件！！！
//    return 0;
//}
//int checkFile( char *filepath)
//{
//    printf("＝＝＝＝%s", filepath);
//    FILE *fp1;//定义文件流指针，用于打开读取的文件
//    char text[10241];//定义一个字符串数组，用于存储读取的字符
//    fp1 = fopen(filepath,"r");//只读方式打开文件a.txt
//    while(fgets(text,10240,fp1)!=NULL)//逐行读取fp1所指向文件中的内容到text中
//    {
//        puts(text);//输出到屏幕
//        findMethod(text);
//    }
//    fclose(fp1);//关闭文件a.txt，有打开就要有关闭
//    
//    return 0;
//}