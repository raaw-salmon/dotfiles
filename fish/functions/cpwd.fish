function cpwd --wraps='pwd | clip.exe' --description 'alias cpwd=pwd | clip.exe'
  pwd | clip.exe $argv
        
end
