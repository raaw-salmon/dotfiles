function homeconfig --wraps='nvim ~/.config/home-manager/home.nix' --description 'alias homeconfig=nvim ~/.config/home-manager/home.nix'
  nvim ~/.config/home-manager/home.nix $argv
        
end
