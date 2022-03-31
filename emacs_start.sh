###
 # @Author: Yaaprogrammer
 # @Date: 2022-03-31 20:35:07
 # @LastEditors: Yaaprogrammer
 # @LastEditTime: 2022-03-31 20:38:19
 # 
 # Copyright (c) 2022 by Yaaprogrammer, All Rights Reserved.
### 

# Set some environment variables for the X server, and finally start Emacs 

echo "shell path arg: $1"
export DISPLAY=$(ip route | awk '{print $3; exit}'):0
export LIBGL_ALWAYS_INDIRECT=1
export GDK_SCALE=2
emacs $1
