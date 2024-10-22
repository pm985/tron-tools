#!/bin/bash

# m参数: 末尾m位以上数字顺子或末尾m位相同, 范围5～12, 默认值为5
# n参数: n为CPU占用率10～90, 默认值为50
# s参数: 靓号定制参数, 末尾至少5位, 多个靓号用英文逗号隔开(不能有0OIl), 默认值为空, 例如: abcdef,111222333
# 设置靓号定制参数不影响豹子号及顺子号的生成

# 例1: ./nice-trx-linux trx 6 80 abcdef,111222333
# 例2: ./nice-trx-linux trx

# 任务后台执行
chmod +x ./get-tron-address
nohup ./get-tron-address trx 6 90 > /dev/null &