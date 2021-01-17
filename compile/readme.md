Usage:

Make the file executable:  
`chmod +x compile.sh`

Execute the script:  
`./compile.sh command rom_device-buildType`

Choose between the following commands:  
`build` - normal build  
`clean` - clean the out directory  
`dirty` - dirty build, doesn't run 'installclean'  
`kernel` - compile the bootimage  
`lunch` - lunch the desired device  
`package` - builds a specific package `./compile.sh command rom_device-buildType packageName`