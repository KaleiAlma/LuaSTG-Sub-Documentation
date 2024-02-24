# LuaSTG Sub update history

* LuaSTG Sub v0.20.16
    * Audio
        * Fix: Fix audio file successfully loaded but still reported load failure
* LuaSTG Sub v0.20.15
    * Engine Basics
        * Update: Update `cjson` library, fix known high-risk vulnerabilities. 
    * Windows
        * Fix: Fix issue where windows would appear in unexpected positions on devices with multiple monitors
* LuaSTG Sub v0.20.14
    * Engine Basics
        * Fix: Fixed unexpected problems with `lstg.DoFile` when executed on a co-program, such as incorrectly formatted error messages on errors, incorrect return values on successful execution, etc. * Modified: Now `lstg.DoFile` can be executed on a co-program in an unexpected location.
        * Changes: `lstg.DoFile` now behaves like `dofile` and no longer has the "forbidden to call in co-programs" restriction.
    * Lua Virtual Machine
        * Fix: Fixed a possible memory leak in some functions of the standard `io` and `os` libraries.
* LuaSTG Sub v0.20.13.
    * Engine Basics
        * New: `config.json` adds a new configuration item `persistent_log_file_max_count` to limit the maximum number of persistent log files to avoid more and more log files * Window.
    * Window
        * Modified: no longer track the windows that grab the focus of the engine window by default, this feature is related to personal privacy and should be enabled manually by the user.
        * New: `config.json` adds a new configuration item `debug_track_window_focus` to enable the debugging function of tracking the window that takes the focus of the engine window, so that we can catch the rogue applications that cause the exclusive full screen to fail and the key inputs to be unresponsive.
    * Game Objects
        * Remove: removes useless warning messages from particle system related APIs on multiple game objects to avoid log files being written with a lot of useless content involving the APIs:
            * `lstg.ParticleStop`
            * `lstg.ParticleFire`
            * `lstg.ParticleGetn`
            * `lstg.ParticleGetEmission`
            * `lstg.ParticleSetEmission`
* LuaSTG Sub v0.20.12
    * Engine Basics
        * Fix: Fix the possibility of accessing a null pointer when the engine is shutting down causing the engine to crash with no error popup or logging
        * Fix: Fix engine crash when throwing an error with `nil` content via `error()`, `error(nil)` or similar, with no error popup or logging.
* LuaSTG Sub v0.20.11
    * Engine Basics
        * New: Add a new configuration item to disable multi-opening of the program, to prevent file read/write conflicts that may cause files such as archives to be unable to be written or corrupted due to simultaneous writes, for details on how to use this, please read `doc/specification/engine-configuration-file.md`.
    * Game Objects
        * New: The `CollisionCheckWithWidth` method is added to the CurveLaser object to enhance the functionality of `CollisionCheckWidth`.
        * Deprecated: The `CollisionCheckWidth` method of the CurveLaser object is deprecated and will be removed in a future update.
    * Documentation
        * Fixed: Fixed the parameter order of the CurveLaserObject `CollisionCheckWidth` method in the API documentation.
* LuaSTG Sub v0.20.10.
    * Resource Management
        * New: Preliminary addition of experimental API set, resource manager API, resource set, resource objectification, see doc/experiment folder for details
    * Graphics/Rendering
        * Changes: restore `lstg.PostEffect` LuaSTG Plus function signature, LuaSTG Sub (brain-dead) function signature is deprecated.
    * Lua extension library
        * New: add `clone`, `serialize`, `deserialize` methods to random number generator in `random` library for copying and persisting.
        * Remove: remove the `sfc` and `jsf` family of random number generators from the `random` library.
* LuaSTG Sub v0.20.9.
    * Engine Basics
        * Update: `dear-imgui` was updated to 1.89.6.
    * Graphics/Rendering
        * Fix: Fixed `lstg.LoadTTF` loading vector fonts not returning `false` if it fails to load them
        * Modification: Improved the way of determining the availability of modern switching chain model and desktop compositing engine features, now it will get more information about the device features through the `D3DKMT` series of APIs and make a determination to further improve the compatibility of the device.
* LuaSTG Sub v0.20.8
    * Engine Basics
        * New: If supported by the system (Windows 10 1803+), a new stabilized frame rate controller will be enabled instead of the original rate-limiting frame rate controller (only limiting the frame rate, not compensating for it), the goal of the new frame rate controller is to compensate for the time error of each frame to make the screen display as stable as possible, and to minimize the jitter of the screen.
    * Graphics/Rendering
        * Fix: Sometimes when switching to another window and back, there would be dropped frames, increased latency, etc., which is now theoretically fixed (Microsoft: I fixed most of the frame-latency issues, but I kept some of them, and I'm not sure how much of them I'm going to fix. (Microsoft: I fixed most of the frame delay issues, but I kept some of them, I think keeping some of the features is how you know you're using Windows 10+)
* LuaSTG Sub v0.20.7
    * Resource management
        * Modification: use the higher performance, higher quality `xxhash` library to compute resource name hash values.
    * Game Objects
        * Removal: remove the `pause` and `rmove` attributes added to game objects by LuaSTG Ex Plus, which were used sparingly but could be easily misused and lead to unnoticeable problems.
    * Lua extension library
        * Fix: Fix an uncaught exception in the `lfs` filesystem library.
* LuaSTG Sub v0.20.6
    * Engine Basics
        * Update: Updated `luajit` library, now `luajit` supports catching errors in `__gc` metamethods.
    * Graphics/Rendering
        * Fixed: now if the program does not detect available graphics hardware at startup, a popup window will report the error and show a clear reason why.
        * Fixed: Now allow to run LuaSTG Sub with a software display adapter (without graphics hardware), you need to specify the `--allow-soft-adapter` command line parameter, note that the software display adapter is not powerful enough to run the program smoothly, it is only used for development, testing, temporary or emergency situations.
        * Modify: When the width or height of the window and canvas are equal, and the window size is greater than or equal to the canvas size, use faster direct copy instead of regular rendering to display the screen.
    * Lua extension library
        * New: add `luasocket` network library, please note that only `socket.core` module is included, please get the lua script part from `luasocket` official repository.
* LuaSTG Sub v0.20.5.
    * Platform
        * Changed: Windows 7 is now required to have patch `KB2533623` (or a successor to this patch) installed.
    * Graphics/Rendering
        * Changed: Shaders used by the built-in base renderer are precompiled into bytecode and are no longer dynamically compiled at runtime.
        * Modification: the shader compilation library `d3dcompiler_47.dll` has been changed to be loaded on-demand, so that it will not be loaded if the developer does not use the model rendering feature or the post-processing effects feature.
    * Audio
        * Fixed: background music does not continue to play after switching audio devices.
    * Lua Virtual Machine
        * Fix: For (unknown) historical reasons, only `? /init.lua` search path was not provided by default * Audio * Fix: For (unknown) historical reasons, only the `? /init.lua` search path, the missing `? /init.lua` search path has been added.
    * Game objects
        * Fix: Fixed undefined behavior where `dx`, `dy` values could be computed incorrectly on frame 1 after game object creation, triggered by the fact that recording `lastx`, `lasty` on frame 0 generation before the return of the `lstg.New` function call would result in the recorded `lastx`, `lasty` values not being the expected values if the `x`, `y` coordinates of the game object were subsequently modified. lasty` were not the expected values
        * Fix: Fixed `lstg.BoxCheck` not containing bounds, and removed unintended single-argument overloading.
* LuaSTG Sub v0.20.4
    * Audio
        * Modification: the audio system now supports recovering from an error or continuing to run in blank mode on a computer without an audio device
* LuaSTG Sub v0.20.3
    * Engine Basics
        * Changed: It is now possible to specify where the `log` log file is stored via a configuration file, see the `doc/specification/engine-configuration-file.md` document for details.
    * Math
        * Changed: The random number generator `lstg.Rand:Int` and `lstg.Rand:Float` methods no longer require the second argument to be greater than or equal to the first.
* LuaSTG Sub v0.20.2.
    * Windows
        * Fix: Fixed the problem where holding down the `Alt` key while switching to another window would cause the engine to keep thinking the `Alt` key was pressed.
    * Graphics/Rendering
        * Fix: Fixed `lstg.Render`, `lstg.RenderRect`, `lstg.Render4V`, and `lstg.RenderAnimation` not throwing an error when a resource was not found.
* LuaSTG Sub v0.20.1
    * Engine Basics
        * Removed: `fancylib` library is no longer used.