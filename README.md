# SKIA Shell Extensions and Lottie Editor [![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

**Latest Version 1.0.0 - 23 Sep 2022**

**A collection of extensions tools for image and animations files, integrated into Microsoft Windows Explorer (Vista, 7, 8, 10 and 11):**

- A [Preview handler][1]  which allows you to see images and animations files in the "Preview Panel".
 
- A [Thumbnail handler][2] which allows you to see images and anomations files (the last last frame of animation) into Windows Explorer.

- A [Lottie Text Editor][12] to manually edit and preview the animation of Lottie files.

### Features

- Supports Windows Vista, 7, 8, 10 and 11 (for 32 bits and 64 bits).

- Themes (Dark and Light) according to user preferences of Windows Theme

## Powered by Skia4Delphi

![Skia4Delphi](/Images/logo-gradient.svg)

Many thanks to the project "Skia4Delphi"

**[Skia4Delphi](https://skia4delphi.org)** is a cross-platform 2D graphics API for Delphi based on [Google's Skia](https://skia.org/) graphics library.

### Setup using the Installer

Click to download the [SKIAShellExtensionsSetup.exe][3] located also in the Release area. The Installer works both for 32 and 64 bit system.

![Lottie Setup_Program](./Images/Setup.png)

***For a clean Setup close all the windows explorer instances which have the preview handler active or the preview handler was used (remember the dll remains in memory until the windows explorer was closed).***

### Preview Panel and Thumbnails in action ###

In Windows 11 with Light theme:

![Preview Thumbnails Light](./Images/PreviewThumbnailsLight.png)

In Windows 11 with Dark theme:

![Preview Thumbnails Dark](./Images/PreviewThumbnailsDark.png)

### Lottie Text Editor

A useful Text editor with preview and animation of Lottie files:

![Lottie Text Editor Dark](./Images/LottieTextEditorDark.png)

### Manual Build and Installation (for Delphi developers) ###

If you have Delphi 11 Alexandria, you can manually build the project:

***Warning: To build the DLL you need also other open-source projects***

- [SVGIconImageList][4]

- [Synedit][5]

- [VCL-Style-Utils][6]

- [Skia4Delphi][13]

To manually install the SKIAShellExtensions.dll follow these steps:

1. Close all the windows explorer instances which have the preview handler active or the preview handler was used (remember the dll remains in memory until the windows explorer was closed).
  
2. If you have already used the installer uninstall the components from system.
     
3. To install manually the dll run the `Setup\Register64bit.bat` (run-as-administrator).

4. If you wanto to uninstall the dll you use the `Setup\UnRegister64Bit.bat`

5. When it's registered, you can continue to change code and rebuild the dll (beware to close all Explorer instances).

## Release Notes ##

24 Set 2022: ver. 1.0.0
- First version

## Credits

Many thanks to **Rodrigo Ruz V.** (author of [theroadtodelphi.com][7] Blog) for his wonderful work on [delphi-preview-handler][8] from which this project has used a lot of code and inspiration.

## License

Licensed under the [Apache License, Version 2.0][9] (the "License");
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

The Initial Developer of the [Original Code][8] is **Rodrigo Ruz V**. Portions created by him are Copyright � 2011-2021 Rodrigo Ruz V.

Third Party libraries and tools used from Ethea:

- [SVGIconImageList][4]

Third Party libraries and tools used:

- [VCLStyles Utils][6]

- [SynEdit][5]

- [Skia4Delphi][13]

![Delphi 11 Alexandria Support](/Setup/SupportingDelphi.jpg)

Related links: [embarcadero.com][10] - [learndelphi.org][11]


[1]: https://docs.microsoft.com/en-us/windows/win32/shell/preview-handlers

[2]: https://docs.microsoft.com/en-us/windows/win32/shell/thumbnail-providers

[3]: https://github.com/EtheaDev/SKIAShellExtensions/releases/latest/download/SKIAShellExtensionsSetup.exe

[4]: https://github.com/EtheaDev/SVGIconImageList

[5]: https://github.com/SynEdit/SynEdit

[6]: https://github.com/RRUZ/vcl-styles-utils

[7]: https://theroadtodelphi.com/

[8]: https://github.com/RRUZ/delphi-preview-handler

[9]: https://opensource.org/licenses/Apache-2.0

[10]: https://www.embarcadero.com/

[11]: https://learndelphi.org/

[12]: https://github.com/EtheaDev/SVGShellExtensions/wiki/Using-The-Lottie-Text-Editor

[13]: https://skia4delphi.org/
