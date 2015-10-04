#### Objective-C 2.0 Mac和iOS 开发实践指南

华章科技 - (美)Robert Clair 著, 李强 等译

#### 第一部分 Objective-C简介
######第一章 C,Objective-C的基础
**Kernighan Ritchie << The C Programming Language >>**

1. 普通的C程序在较长的变量和函数使用下划线来分隔单词
2. OC中通常使用CamelCase命名.

Mac OS X文件名不区分大小写.文件系统会记住你用来命名的一个文件的大小写,但将myfile.c,MYFILE.C和MyFile.c当做相同的文件

指针:

一元运算符 * ("求值"或者"解引用"),通过使用指向一个内存位置的指针变量来设置或获取该内存位置的内容.可以这样来看,把表达式 * pointerVar看做是一个别名,即针对存储在pointerVar的内容中的任何内存位置的另一个名称.表达式 * pointerVar可以用来设置或获取该内存未知的内容.

指针在C中用来引用动态分配的内存.也用来避免将大块的内存从一个程序的一部分复制到另一部分.例如,可以把指向结构的一个指针传递给函数,而不是把一个较大的结构传递给函数.函数随后使用指针来访问结构.

通用指针:
声明为void的指针变量,是一个通用指针.void *genericPointer,可以将通用指针设置为任何变量类型的地址.

```
int a = 9;
void *genericPointer;
genericPointer = &a;
```
然而,试图从一个通用指针获取一个值,将导致一个错误发生,因为编译器没办法知道如何解释通用指针所表示的地址的字节;要通过void* 指针获取一个值,必须将其转换为指向一个已知类型的指针;

```
int a = 9;
int b;
void *genericPointer;
genericPointer = &a;
b = *genericPointer;	//	WRONG - won't complie
b = *((int *)genericPointer);	//	OK
```
**C不会检查一个指针变量是否指向内存的一个有效区域.**

字符串:

当编译器在内存中创建一个常量字符串时,它自动在末尾添加"/0"字节.但是,如果声明了一个用来保存字符串的char数组,在确定需要多少空间时,则必须包含"/0"字节.

char * 类型的变量,可以用一个常量字符串初始化.可以将这样的一个变量设置为指向一个不同的字符串,但是,不能够使用它来修改一个常量字符串.

```
char aString[6] = "Hello";

char *aString = "Hello";
aString = "World";
aString[4] = 'q';	//	WRONG - causes a crash
```
预处理器:

- ######包含文件
	
	"" - 预处理器将首先在要编译的文件所在目录下查找,然后在可以作为参数提交给编译器的位置列表中查找,最后在一系列的系统位置中查找
	<> - 预处理器将只在标准系统位置中查找包含的文件
- #######define
	替换功能
	
	通过在定义中除最后一行以外的所有行的末尾放置反斜杠(\),一个#define可以延续到多行
	
	C中命名的惯例是使用全部大写字母.
	
	Apple中命名惯例是以一个k开始,剩下的名称使用CamelCase法命名
	
#####第二章 C变量

	


 


