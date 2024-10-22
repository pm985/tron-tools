
## [中文版] [English](README-en.md)

# 波场trx靓号地址生成器（支持自定义）TRON TRX generation tools（Support custom）

### 一、软件介绍

• 强大的靓号生成器可帮助用户生成末尾满足特定条件的TRX地址，CPU性能越高效率越高，每秒约生成几万个TRX地址：

• **豹子号**：支持生成末尾n位相同的地址（例如：…AAAAA、…aaaaa、…88888、…99999等）。

• **顺子号**：支持生成末尾为连续递增或递减的顺子号（例如：…123456、…654321等），让您的钱包地址更加独特。

• **数字谐音靓号**：支持生成末尾数字谐音靓号地址（例如：…5211314、…1314521、…516888、...168888等）。

• **自定义**：支持自定义靓号，保持以上靓号规则，并新增此规则（例如：...abcdef、...123123、...888999等）

### 二、附加功能：

• **生成钱包地址及私钥**

• **助记词转TRX或ETH钱包地址**

• **私钥转TRX或ETH钱包地址**

### 三、使用教程

1 本程序支持Linux，Mac苹果电脑，Windows三个平台程序，可通过文件名区分，请在命令行终端下使用。

2 如果您是Linux或Mac苹果电脑，下载程序后若无法执行，请给程序增加可执行权限，命令如下：

```shell
# mac苹果电脑终端执行
chmod +x get-tron-address-mac

# Linux电脑终端执行
chmod +x get-tron-address-linux
```

以Linux系统为例，其他系统请使用相应平台应用程序即可：

• **波场trx靓号地址生成**

```shell
# m参数: 末尾m位以上数字顺子或末尾m位相同, 范围5～12, 默认值为5
# n参数: n为CPU占用率10～90, 默认值为50
# s参数: 靓号定制参数, 末尾至少5位, 多个靓号用英文逗号隔开(不能有0OIl), 默认值为空, 例如: abcdef,888999
# 设置靓号定制参数不影响豹子号及顺子号的生成
./get-tron-address-linux trx m n s

# 自定义参数: ./get-tron-address-linux trx 6 90 abcdef,888999
# 默认参数: ./get-tron-address-linux trx

# 任务后台执行，可关闭终端
nohup ./get-tron-address-linux trx 6 90 abcdef,888999,88889999 > /dev/null &
```

• **钱包地址及私钥生成**

```shell
./get-tron-address-linux one
```

• **助记词转钱包地址**

```shell
# 助记词之间以逗号或空格隔开
./get-tron-address-linux trans must,injury,diagram,when,chest,collect,spray,sketch,beauty,tree,patch,robot
./get-tron-address-linux trans 'must injury diagram when chest collect spray sketch beauty tree patch robot'
```

• **私钥转钱包地址**

```shell
./get-tron-address-linux trans f94e24a093fd4d4a5064af495cc8e23a85cd87ffc2b5414170965dcdf53e6b21

# 直接执行命令，输入助记词或私钥回边转换
./get-tron-address-linux
```

• **使用帮助**

```shell
./get-tron-address-linux help
```