
##  [English] [中文版](README.md)

# TRON TRX generation tools（Support custom）

### 1. Software Introduction

• The powerful fancy number generator helps users generate TRX addresses with specific ending patterns. The higher the CPU performance, the more efficient the generation. It can generate tens of thousands of TRX addresses per second:

• Repeating Number Addresses: Supports generating addresses where the last ‘n’ digits are the same (e.g., …AAAAA, …aaaaa, …88888, …99999, etc.).

• Sequential Number Addresses: Supports generating addresses where the last digits form a sequence (either ascending or descending, e.g., …123456, …654321), making your wallet address more unique.

• Lucky Number Addresses: Supports generating addresses with popular Chinese lucky numbers (e.g., …5211314, …1314521, …516888, …168888).

• Custom Addresses: Allows users to generate custom fancy numbers, keeping the above rules and adding your own (e.g., …abcdef, …123123, …888999).

### 2. Additional Features:

• Generate Wallet Addresses and Private Keys

• Convert Mnemonics to TRX or ETH Wallet Addresses

• Convert Private Key to TRX or ETH Wallet Addresses

### 3. User Guide

This program supports Linux, Mac, and Windows platforms. Use the appropriate version based on your system. Please run the program in the terminal/command line.

If you are using Linux or Mac and cannot execute the program after downloading, please grant executable permissions using the following commands:

```shell
# macOS terminal command
chmod +x get-tron-address-mac

# Linux terminal command
chmod +x get-tron-address-linux
```

Using Linux as an example, please run the equivalent program for your platform:

• **Generating TRX Fancy Number Addresses**

```shell
# m parameter: the number of trailing digits for sequential or repeating numbers, range: 5-12, default is 5
# n parameter: CPU usage percentage, range: 10-90, default is 50
# s parameter: custom fancy number string, with at least 5 trailing characters. Multiple numbers can be separated by commas (must not include 0, O, I, l). Default is empty. Example: abcdef,888999
# Setting a custom string will not affect repeating and sequential number generation.
./get-tron-address-linux trx m n s

# Custom example: ./get-tron-address-linux trx 6 90 abcdef,888999
# Default example: ./get-tron-address-linux trx

# To run the task in the background, allowing you to close the terminal:
nohup ./get-tron-address-linux trx 6 90 abcdef,888999,88889999 > /dev/null &
```

• **Generate Wallet Address and Private Key**

```shell
./get-tron-address-linux one
```

• **Convert Mnemonics to Wallet Address**

```shell
# Separate mnemonics by comma or space
./get-tron-address-linux trans must,injury,diagram,when,chest,collect,spray,sketch,beauty,tree,patch,robot
./get-tron-address-linux trans 'must injury diagram when chest collect spray sketch beauty tree patch robot'
```

• **Convert Private Key to Wallet Address**

```shell
./get-tron-address-linux trans f94e24a093fd4d4a5064af495cc8e23a85cd87ffc2b5414170965dcdf53e6b21

# Run the command and input mnemonics or private key for conversion
./get-tron-address-linux
```

• **Help**

```shell
./get-tron-address-linux help
```