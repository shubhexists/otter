#!/bin/bash
# Start the installation process with a friendly greeting
echo "🎉 Welcome to the Otter Installation Party! 🎉"
echo "We're getting everything ready for you to use Otter with ease. Please hold tight! 🦦💻"

# Reliable method to get Cargo bin directory
CARGO_BIN_DIR="${CARGO_HOME:-$HOME/.cargo}/bin"

# Install the otter_dc binary via cargo (force installation to override any existing version)
echo "🔧 Installing Otter (the cool way)..."
cargo install --force otter_dc

# Check if binary exists after installation
if [ ! -f "$CARGO_BIN_DIR/otter_dc" ]; then
    echo "😱 Oops! The 'otter_dc' binary was not found in $CARGO_BIN_DIR."
    echo "Please check your Cargo installation or try running 'cargo install otter_dc' again."
    exit 1
fi

# For Windows: Custom path handling
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    echo "⚙️ It looks like you're on Windows!"
    echo "✨ The Otter binary should now be available in your Cargo bin directory."
    echo "Please make sure that the following path is added to your system's PATH variable:"
    echo "  $CARGO_BIN_DIR"
else
    # For Linux/macOS/Fish/Bash, we check the shell and modify $PATH accordingly
    if [[ ! ":$PATH:" == *":$CARGO_BIN_DIR:"* ]]; then
        echo "⚠️ Uh-oh! It looks like Cargo's bin directory isn't in your PATH."
        
        if [ -n "$BASH_VERSION" ]; then
            echo "Adding to ~/.bashrc"
            echo "export PATH=\"$CARGO_BIN_DIR:\$PATH\"" >> ~/.bashrc
            source ~/.bashrc
        elif [ -n "$FISH_VERSION" ]; then
            fish_add_path "$CARGO_BIN_DIR"
        else
            echo "Please manually add the Cargo bin directory to your PATH."
            echo "  export PATH=\"$CARGO_BIN_DIR:\$PATH\""
        fi
    fi
fi

# Rename otter_dc to otter
echo "🎨 Renaming 'otter_dc' to just 'otter' so it's even easier for you to use!"
mv "$CARGO_BIN_DIR/otter_dc" "$CARGO_BIN_DIR/otter"

# Installation complete, give the user a nice, happy conclusion
echo "🎉 Hooray! Otter is now ready to go!"
echo "You can now use the 'otter' command anytime to add some fun to your discord avatar! 🎨"
echo "Feel free to enjoy and share the otter goodness! 🦦💖"

# End with a cute note
echo "Thanks for installing Otter! You're officially an Otter user now! 🦦🌟"