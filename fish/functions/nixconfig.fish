function nixconfig --wraps='sudo -e nvim /etc/nixos/configuration.nix' --wraps='sudo nvim /etc/nixos/configuration.nix' --wraps='nvim /etc/nixos/configuration.nix' --wraps='sudoedit /etc/nixos/configuration.nix' --description 'alias nixconfig=sudoedit /etc/nixos/configuration.nix'
  sudoedit /etc/nixos/configuration.nix $argv
        
end
