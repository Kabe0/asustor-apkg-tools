# Asustor APKG-Tools

Handles permission issues around APKG-Tools by utilizing docker to handle the build process in python.

For more details on the build process and app strucure, read this documentation http://developer.asustor.com/document/App_Central_Developer_Guide_2.0.0_0801.pdf.

## Getting Started

Using the container is quite simple and involved invoking a single command. Below is the default structure used when building a asustor project.

```cmd
docker run -v $PWD/src:/src -v $PWD/dest:/dest asustor-apkg-tools
```

## Options

### Volumes

| Docker Path | Description |
| -------| ----------- |
| /src | The location of the the files to build. $PWD is the current directory.|
| /dest | The publishing location for the final package file. |

### Environment Variables

| Name | Description |
| ---- | ----------- |
| DEST_UID | The User ID (default 1000) that the dest files will be owned by |
| DEST_GID | The Group ID (default 1000) that the dest files will be owned by |

### Modifying the Output

The command executed by default is ```./apkg-create.py```. You may pass in additional arguments after the apkg-create.py which will replace the following default arguments ```/src --destination /dest``` with any alternative create configuration. See the apkg-tools.py creeate --help for more details.
