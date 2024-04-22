return {
    mode = "tab",
    filetype = {
        rust = {
            "cd $dir && cargo run -q"
        },
        c = {
            "cd $dir && clang $fileName -g -Wall -o $fileNameWithoutExt && ./$fileNameWithoutExt"
        },
        cpp = {
            "cd $dir && clang++ $fileName -g -Wall -o $fileNameWithoutExt && ./$fileNameWithoutExt"
        }
    }
}

