<!--
SPDX-FileCopyrightText: 2025 Nextcloud GmbH and Nextcloud contributors
SPDX-License-Identifier: GPL-2.0-or-later
-->

# ZTOneCloudDISK Branding - Logo Replacement Guide

This repository has been customized to rebrand the Nextcloud Desktop client as **ZTOneCloudDISK**.

## Logo Files to Replace

The following logo files contain placeholder graphics and should be replaced with your actual ZTOneCloudDISK branding:

### Main Logo Files
- `theme/colored/wizard_logo.svg` - Main wizard logo (SVG format)
- `theme/colored/wizard_logo.png` - Main wizard logo (PNG format)
- `theme/colored/wizard_logo@2x.png` - High-DPI wizard logo

### Application Icons
- `theme/colored/ZTOneCloudDISK-icon.svg` - Main application icon
- `theme/colored/ZTOneCloudDISK-icon-square.svg` - Square application icon

### Platform-Specific Icons
- `theme/colored/ZTOneCloudDISK-macOS-icon.svg` - macOS-specific icon
- `theme/colored/ZTOneCloudDISK-macOS-sidebar.svg` - macOS sidebar icon
- `theme/colored/ZTOneCloudDISK-w10startmenu.svg` - Windows 10 start menu icon
- `theme/colored/ZTOneCloudDISK-w10starttile.png` - Windows 10 start tile
- `theme/colored/icons/ZTOneCloudDISK-icon-win-folder.svg` - Windows folder icon

### Theme Variants
- `theme/white/wizard-ztonecloud.png` - White theme wizard logo
- `theme/white/wizard-ztonecloud@2x.png` - White theme wizard logo (high-DPI)
- `theme/black/wizard-ztonecloud.png` - Black theme wizard logo  
- `theme/black/wizard-ztonecloud@2x.png` - Black theme wizard logo (high-DPI)
- `theme/colored/wizard-ztonecloud.png` - Colored theme wizard logo
- `theme/colored/wizard-ztonecloud@2x.png` - Colored theme wizard logo (high-DPI)

## Visual Elements Manifest
- `theme/ztoneclouddisk.VisualElementsManifest.xml` - Windows visual elements configuration

## Branding Configuration
The branding has been updated in the following configuration files:
- `NEXTCLOUD.cmake` - Main application configuration
- `VERSION.cmake` - Version set to 1.0.0  
- `src/libsync/theme.cpp` - Theme source code updates

## Build Instructions
After replacing the logo files with your actual ZTOneCloudDISK branding:
1. Follow the standard build instructions for the Nextcloud Desktop client
2. The resulting executable will be named `ztoneclouddisk.exe` on Windows
3. The installer package will display as "ZTOneCloudDISK" with version 1.0
4. Vendor information will show as "中国中铁科学研究院"

## Logo Specifications
- SVG files should be scalable vector graphics for best quality at all sizes
- PNG files should be high resolution (recommend at least 256x256 for icons)
- Wizard logos should have a 2:1 or 3:1 aspect ratio to fit the wizard layout
- Icons should be square (1:1 aspect ratio) for platform compatibility