# Engine configuration files

The engine configuration file is used to control some behaviors before the Lua VM starts, such as the logging system, temporary file reads and writes, and so on.

Here is a complete example demonstrating the use of all the fields.

```json
{
    "log_file_enable": true,
    "log_file_path": "engine.log",
    "persistent_log_file_enable": true,
    "persistent_log_file_directory": "userdata/logs/",
    "persistent_log_file_max_count": 10,
    "engine_cache_directory": "userdata/",
    "single_application_instance": true,
    "application_instance_id": "6514C225-EF44-4F9F-B092-A137F469B0A7",
    "debug_track_window_focus": false
}
```

Description of each field:
* `log_file_enable`: Whether to enable the log file, defaults to `true` (enabled).
* `log_file_path`: Path to the log file, defaults to `engine.log`.
* `persistent_log_file_enable`: Whether to enable persistent log file storage,  
  defaults to `false` (not enabled). If enabled, log files will be created in the  
  persistent log file directory with the date and time of engine startup,  
  and will not be deleted or overwritten.
* `persistent_log_file_directory`: Persistent log file storage directory, default  
  is empty, i.e. current working directory.
* `persistent_log_file_max_count`: Maximum number of persistent log files, if the  
  limit is exceeded, the old ones will be deleted automatically.  
* `engine_cache_directory`: Path to store other temporary files or configuration  
  files, such as `imgui.ini` and `dump.txt`. Default is empty, i.e. the current working directory.
* `single_application_instance`: Whether to disable multiple application instances.  
* `application_instance_id`: Used to identify the program instance. **You must generate  
  new GUIDs for different projects, otherwise two completely unrelated projects will  
  block each other from starting!!**
* `debug_track_window_focus`: Debugging function, used to catch rogue apps that  
  grab the window focus, which can lead to exclusive fullscreen failure,  
  unresponsive player keystrokes, etc.

Some of the path fields support special variables at the beginning.
Currently the following special variables are provided:  
* `${AppData}`: Expand to `C:\Users\Username\AppData\Roaming`.
* `${LocalAppData}`: Expands to `C:\Users\Username\AppData\Local`.
* `${Temp}`: Expand to `C:\Users\Username\AppData\Local\Temp`.

The following fields are supported for such expansion:
* `log_file_path`  
* `persistent_log_file_directory`  
* `engine_cache_directory`  

The following is an example of storing all relevant files to ``AppData``.
```json
{
    "log_file_enable": true,
    "log_file_path": "${AppData}/Username/engine.log",
    "persistent_log_file_enable": true,
    "persistent_log_file_directory": "${AppData}/Username/logs/",
    "persistent_log_file_max_count": 10,
    "engine_cache_directory": "${AppData}/Username/",
    "single_application_instance": true,
    "application_instance_id": "6514C225-EF44-4F9F-B092-A137F469B0A7",
    "debug_track_window_focus": false
}
```
