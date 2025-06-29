# jigs
path+=("$HOME/jigs/ubuntu")

# tools
path+=("$HOME/tools/exiftool/")

# sdks
export VULKAN_SDK="$HOME/sdks/vulkan_sdk"
source "$VULKAN_SDK/setup-env.sh"

# other packages

# cargo
source "$HOME/.cargo/env"

# cuda
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/cuda/lib64
path+=(/usr/local/cuda/bin)
