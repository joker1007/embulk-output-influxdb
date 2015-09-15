# InfluxDB output plugin for Embulk

## Overview

* **Plugin type**: output
* **Load all or nothing**: no
* **Resume supported**: no
* **Cleanup supported**: yes
* **Dynamic Database creating**: yes
* **Dynamic Series creating**: yes

## Configuration

- **host**: hostname (string, default: localhost)
- **port**: port number (integer, default: 8086)
- **username**: username (string, default: 'root')
- **password**: password (string, default: 'root')
- **database**: database name (string, required)
- **series**:    series name (string, required) (can use column value placeholder. see example)
- **mode**:     "insert", or "replace". See bellow. (string, default: insert)
- **timestamp_column**: timestamp column (string, default: nil)
- **ignore_columns**: ignore column names (array[string], default: [])
- **default_timezone**: default timezone for column (string, default: 'UTC')

### Modes

* **insert**:
  * Behavior: This mode inserts rows simplly.
* **replace**:
  * Behavior: Same with insert mode excepting that it drops the target series first.

## Example

```yaml
out:
  type: influxdb
  username: root
  password: root
  database: dbname
  series: ${key_name}_series
  timestamp_column: day
  mode: replace
  ignore_columns:
    - key_name
```

## ToDo
- tags support
- column_options support

## Build

```
$ rake
```
