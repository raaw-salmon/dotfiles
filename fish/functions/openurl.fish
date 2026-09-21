function openurl
    if test (count $argv) -eq 0
        echo "[ERROR]: Usage: openurl <URL>"
        return 1
    end

    set url $argv[1]
    echo "[INFO]: opening '$url'..."
    /mnt/c/Windows/System32/cmd.exe /C "start $url" > /dev/null 2>&1
end
