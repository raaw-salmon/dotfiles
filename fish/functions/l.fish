function l --wraps='ls -alh' --wraps='lsd -lah' --description 'alias l=lsd -lah'
  lsd -lah $argv
        
end
