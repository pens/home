# Custom utilities.
path+=(~/jigs/ubuntu)

# Cargo.
source "$HOME/.cargo/env"

# CUDA.
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/cuda/lib64
path+=(/usr/local/cuda/bin)

# ExifTool
# TODO: Eventually, make local bin directory and symlink into different repos instead.
path+=($HOME/repos/exiftool)

# Ruby (Jekyll).
export GEM_HOME="$HOME/gems"
path+=($GEM_HOME)

# Vulkan SDK.
source "$HOME/vulkan_sdk/setup-env.sh"
