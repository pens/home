# Cargo.
source "$HOME/.cargo/env"

# CUDA.
path+=(/usr/local/cuda/bin)
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/cuda/lib64

# Ruby (Jekyll).
export GEM_HOME="$HOME/gems"
path+=($GEM_HOME)

