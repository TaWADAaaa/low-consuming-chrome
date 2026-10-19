# Low Consuming Chrome

A small Windows tool with one main button. It finds a supported installation, checks compatibility, saves a backup and applies the project's resource-saving changes. While it works, the same button becomes **Stop**.

**Experimental release.** This is a local optimization tool, not a replacement client. The combined 2 GiB memory target has not been demonstrated. Chrome's main button now configures an installed Google Chrome browser using four native performance policies.

[Download](https://github.com/TaWADAaaa/low-consuming-chrome/releases/tag/v0.5.0-experimental) · [Beginner guide](docs/USER_GUIDE.en.md) · [Source code](https://github.com/TaWADAaaa/low-consuming-chrome) · [Donations](DONATIONS.md) · [Privacy](PRIVACY.md)

## Start here

1. Open the [v0.5.0 download page](https://github.com/TaWADAaaa/low-consuming-chrome/releases/tag/v0.5.0-experimental).
2. Download **low-consuming-chrome-v0.5.0-experimental.zip**. Right-click it and choose **Extract All**.
3. Open the extracted folder and double-click **ChromeTawop.exe**. You do not need the CMD files, Node or a development tool.
4. Save your work and finish calls, downloads or updates. Click the large button. After checks pass, it asks Discord or Steam to close, applies changes and reopens a client that was running. If it stays in the tray, use its Quit/Exit menu and retry.
5. Wait for the result. To cancel, click **Stop**. If files were already changed, let the tool finish restoring them. **Undo changes** returns a completed installation to its verified originals.

Most users do not need to select a folder. If detection cannot find an unambiguous supported installation, use **Choose a different folder**. Discord's parent folder, such as %LOCALAPPDATA%\Discord, is accepted for detection. Chrome requires official Google Chrome 126 or later. It is not closed by the tool; reload chrome://policy or restart Chrome normally when convenient. Existing managed performance policies are preserved.

## What it changes

The main button now configures installed Google Chrome 126 or later using four supported current-user policies: HighEfficiencyModeEnabled=1, MemorySaverModeSavings=2 (Maximum), BackgroundModeEnabled=0 and NetworkPredictionOptions=2. It does not close Chrome, read account profiles or patch the browser executable. Inactive tabs can reload more often; predictive loading and background apps after the last window closes are disabled. Existing managed performance policies are preserved, and Undo changes restores only this tool's verified changes. Chrome may show Managed by your organization while these policies are present. Advanced CLI commands still provide the separate Chromium source patch; no rebuilt browser is included.

The Discord and Steam changes now include supported application logic, alongside simpler styling. Their original browser engines remain. Read the feature tradeoffs in the scope above before applying. A smaller interface does not establish lower engine memory. Original assets stay on disk, and backups need extra space.

The [current-desktop observation](docs/BASELINE.md) found the earlier Discord patch installed while its resident memory remained around 1 GiB. That is an uncontrolled diagnostic snapshot, not a before-and-after benchmark. No measured RAM, CPU or GPU saving is claimed for this release.

Unsupported files, incomplete installations, conflicting backups and unknown integrity requirements are rejected before patching. An explanatory message is a compatibility result; installing the tool does not make every client version supported. See the [beginner guide](docs/USER_GUIDE.en.md) for common messages.

## Windows download messages

The ZIP is a standard archive containing ordinary, unobfuscated Windows executables. The EXE is **unsigned**. Windows SmartScreen or antivirus software may still warn, including for a newly signed application. No packaging format can guarantee zero warnings. This project does not disable or bypass Windows protection.

Use this repository's release downloads. SHA256 files let you check that a download matches a release; they do not certify safety. The [source](src/) and [build instructions](#build-from-source) are available for review. [Microsoft explains application reputation](https://learn.microsoft.com/en-us/windows/apps/package-and-deploy/smartscreen-reputation).

## Build from source

Use Windows 10/11, PowerShell 5.1 and .NET Framework 4.8. Development tests also need Node on PATH. Run BUILD.cmd, or:

~~~powershell
powershell.exe -NoProfile -File .\scripts\Build.ps1 -Product Chrome
~~~

Each repository produces one executable. Sources for the shared backup engine and format modules are included. The standalone executable embeds the original CSS and JavaScript it needs. A complete external assets folder allows customization without recompiling. Developer explanations are in the guides, with clear names and consistent formatting in source instead of inline documentation comments.

| Guide | Contents |
|---|---|
| [Beginner guide](docs/USER_GUIDE.en.md) | Download, automatic operation, undo and common messages. |
| [Architecture](docs/ARQUITECTURA.md) | Detection, integrity checks, backups and limitations. |
| [Performance](docs/RENDIMIENTO.md) | Memory/CPU targets and a repeatable measurement procedure. |
| [Diagnostic observation](docs/BASELINE.md) | What was observed before this revision, with measurement limits. |
| [Patcher benchmark](docs/PATCHER-BENCHMARK.md) | Reduced allocation in the patch tool; separate from client RAM. |
| [Validation](docs/VALIDACION.md) | Automated checks and outstanding real client tests. |
| [Chromium build](README_CHROMIUM.md) | Separate native browser compilation for developers. |
| [Contributing](CONTRIBUTING.md) | Code layout, checks and private-data-free issue reports. |

## License and support

[MIT](LICENSE) covers original project code, tools, tests and artwork. The original Discord, Steam, Google Chrome and Chromium components retain their licenses. Complete proprietary clients are not distributed here. [Third-party notices](THIRD_PARTY_NOTICES.md).

Optional [donations](DONATIONS.md) support development. Downloading and using the tools is free.
