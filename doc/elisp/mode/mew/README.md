Mew
===

## 情境分析

### 多个邮箱,如何进行切换

在`summary`下,`C` 后会让你切换,然后`mew`会输入密码

### 邮箱更新

在`summary`下, `s` 然后`update`


## 关于Address

所有的address保存在`~/Mail/Addrbook`文件夹内

### 如何保存联系人

C-c C-a



## 如何写邮件


由三种快捷方式会到草稿模式

- `M-x mew-send`

- `C-x m`

- summary mode 下`w`

```
To:
Subject:
From: leozhang@augmentum.com.cn <leozhang@augmentum.com.cn@augmentum.com.cn>
Fcc: +outbox
X-Mailer: Mew version 6.6 on Emacs 24.3 / Mule 6.0 (HANACHIRUSATO)
----

### 添加附件


```


------------------------------ attachments ------------------------------
      Multipart/Mixed                                           1/
     1  Text/Plain(guess)                                         Cover.txt
B    2  Image/Png                                                 apple.png
     3  Text/Plain(guess)                                         h.txt
     4  Multipart/Mixed                                           f/
     4.1  Text/Plain(guess)                                         print.txt
     4.2                                                            .
B    5  Image/Png                                                 dog.png
B    6  Image/Png                                                 cat.png
     7                                                            .
--------0-1-2-3-4-5-6-7-8-9----------------------------------------------

```

可以看到`attachment`是一个目录结构,当你的光标移到这上面时,是以文件夹的形式在文件之间移动的

`C-p` Go to the previous file in the current directory. 走到当前文件夹下第一个文件

`C-n` Go to the next file in the current directory. 走到当前文件夹下的下一个文件

`C-f` Go to the first subdirectory.  一层的文件夹

`C-b` go to the parent directory. 走到当前文件夹层

`c` Copy a file (possibly via networks) on ".". To copy a remote file, use the "/[user@]hostname:/filepath" syntax.复制文件,可以是网络协议的形式

`l`  Link a file with a symbolic link on ".". If you want to edit the attached file, you should `c' instead of `l' so that you do not edit the original file.

`d` Delete this file or this directory.

`m` Create a subdirectory (i.e. multipart) on ". 新建一个文件夹

`f` Open this file into a buffer. 打开这个文件

`F` Open a new file into a buffer on ".". 新建一个文件

`y` Link the message which is displayed in Message mode on ".".

`e` Input external-body on ".".

`a` Sampling voice and insert as audio file on ".".

`p` Extract the PGP key for the specified user on ".".

`D1 Input a description (Content-Description:).

`T` Change the data type (Content-Type:).

`t` Toggle text and binary for the data type.

`I` Specify input coding-system for a Text/* object.

`C` Specify output coding-system for a Text/* object.

`P` Specify a file name (Content-Disposition:) to save this part in the receiver side. If you type just `RET` without any string, its value is cleared. Then the file name in the sender side is displayed with `*'. 重命名




## 如何删除

以`d` 标记要删除的文件,随后 `x`.
