dex是Android虚拟机Dalvik上的可执行文件，而odex是优化过（Optimized）的dex。
我们知道，dex文件，可以通过dex2jar，转化为jar，然后可以通过jd-gui查看其java源码。

那么，odex呢？可以通过baksmali/smali，将其转换为dex，然后再用上述方式即可。

步骤如下：

1. 将odex转smali

	java -jar baksmali.jar -x classes.odex -d framework

2. 将smali转dex

	java -jar smali.jar out -o classes.dex


其中，参数的意义如下：

-o,--output \<DIR>         

the directory where the disassembled files will be placed. Default is out.  

-d,--bootclasspath-dir \<DIR>      

the base folder to look for the bootclasspath files in.
   
-v,--version        prints the version then exits 
 
-x,--deodex         deodex the given odex file.   

使用baksmali时，可能需要Android系统的库文件。如果缺少，会出现如下错误：

```
Error occurred while loading boot class path files. Aborting.  
org.jf.util.ExceptionWithContext: Cannot locate boot class path file /data/dalvik-cache/system@framework@core.jar@classes.dex  
        at org.jf.dexlib2.analysis.ClassPath.loadClassPathEntry(ClassPath.java:217)  
        at org.jf.dexlib2.analysis.ClassPath.fromClassPath(ClassPath.java:161)  
        at org.jf.baksmali.baksmali.disassembleDexFile(baksmali.java:67)  
        at org.jf.baksmali.main.main(main.java:280)  
```


只需用如下命令，将对应的jar，从手机/system/framework目录下，导入到电脑的framework文件夹下即可。

adb pull /system/framework/core.jar ./framework

----
java -jar baksmali-2.0.2.jar  -x ecarx.openapi.impl.odex -d framework

java -jar smali-2.0.2.jar  -o classes.dex out 