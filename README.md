# Wordle in C++
A project to recreate the popular word game Wordle in C++. 
Refer to the comments within the Wordle.cpp file for more information about Wordle, the rules for playing, and a walk-through of what each line of code does.

## Usage
### Running as a Docker container
The easiest way to run this project across a wide variety of different environments is to run it as a Docker container using the image I've created for it.

**Get Docker Desktop**
- Head to https://www.docker.com/products/docker-desktop/ and click on _Download Docker Desktop_, making sure to choose the right download for your device.
- Open Docker Desktop and make sure it's running. (The bottom left corner of the Docker Desktop window indicates the status of the Docker Engine).

**Run the image as a container**
- Open up any terminal or shell. On Windows, Mac, or Linux simply search "Terminal" and open it up. You could also search for "Command Prompt" or "PowerShell" instead on Windows.
- Paste the following into the terminal and press enter: `docker run -it ghcr.io/adzzzy/wordle-in-cpp`
- After a few moments for downloading dependencies and the set-up needed to run on your device, the program will start and you're ready to play!

Note: If you're after a specific version of the image, in the above command just add ":<VERSION>" onto the end of the image name. E.g. for version 1.0.0 write `docker run -it ghcr.io/adzzzy/wordle-in-cpp:v1.0.0`.
Available versions can be seen here: https://github.com/Adzzzy/Wordle-in-Cpp/pkgs/container/wordle-in-cpp
---------------------------------------------------------------------------------------------------------------------------------------

### Manual Set-up
If you'd rather set up your environment manually to compile and run C++ code you can do that too.

**Installing a C++ compiler**
- If you're on Linux then just download the desired C++ compiler with the package manager of your Linux distribution. E.g. on Ubuntu using apt to install g++: `sudo apt update && sudo apt install g++`
- On Mac install Xcode with: `xcode-select --install` which comes with the clang++ compiler.
- On Windows head to https://visualstudio.microsoft.com/downloads/ and download the community version of Visual Studio. Then, open up the Visual Studio installer and install Visual Studio along with a workload such as "Desktop Development for C++" which includes the MSVC compiler.

**Compile the C++ file into an executable**
- To compile the file, first open a terminal and navigate to where you've stored the Wordle.cpp file
- To compile with g++ type: `g++ Wordle.cpp` which by default will create an executable file called "a.out"
- To compile with clang++ type: `clang++ Wordle.cpp` which by default will create an executable file called "a.out"
- To compile the file in windows with MSVC, first make sure you're using the Developer Command Prompt for Visual studio, then type: `cl Wordle.cpp` which by default will create an executable file called "Wordle.exe"
- If you want to name the output executable something specific you can do that with `g++ Wordle.cpp -o output_name`, `clang++ Wordle.cpp -o output_name`, or `cl Wordle.cpp /Fe:output_name.exe` where "output_name" is the desired file name.

**Run the compiled executable**
- To run the compiled executable you can either type the full filepath to the executable in the terminal, or navigate to the same folder as the executable file and type `./executable`, where _executable_ is the compiled executable from the previous step called "a.out", "Wordle.exe", or whatever name you've given it.

