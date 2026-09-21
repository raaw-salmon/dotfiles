function copy
    if test -f "$argv[1]"
        clip.exe < "$argv[1]"
        echo "[Fish]: file '$argv[1]' copied to clipboard"
    else
        echo "[Fish]: file '$argv[1]' not found"
    end
end
