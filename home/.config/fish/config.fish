set fish_greeting ""

# in ~/.config/fish/config.fish
# Load the default rubies

if test -z $rvm_bin_path
  exec bash --login -c "exec fish" ^&1
end
