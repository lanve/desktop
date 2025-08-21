# SPDX-FileCopyrightText: 2017 Nextcloud GmbH and Nextcloud contributors
# SPDX-FileCopyrightText: 2012 ownCloud GmbH
# SPDX-License-Identifier: GPL-2.0-or-later
#
# keep the application name and short name the same or different for dev and prod build
# or some migration logic will behave differently for each build
if(NEXTCLOUD_DEV)
    set( APPLICATION_NAME       "ZTOneCloudDISKDev" )
    set( APPLICATION_SHORTNAME  "ZTOneCloudDISKDev" )
    set( APPLICATION_EXECUTABLE "ztoneclouddiskdev" )
    set( APPLICATION_ICON_NAME  "ZTOneCloudDISK" )
else()
    set( APPLICATION_NAME       "ZTOneCloudDISK" )
    set( APPLICATION_SHORTNAME  "ZTOneCloudDISK" )
    set( APPLICATION_EXECUTABLE "ztoneclouddisk" )
    set( APPLICATION_ICON_NAME  "${APPLICATION_SHORTNAME}" )
endif()

set( APPLICATION_CONFIG_NAME "${APPLICATION_EXECUTABLE}" )
set( APPLICATION_DOMAIN     "ztonecloud.com" )
set( APPLICATION_VENDOR     "中国中铁科学研究院" )
set( APPLICATION_UPDATE_URL "https://updates.ztonecloud.com/client/" CACHE STRING "URL for updater" )
set( APPLICATION_HELP_URL   "" CACHE STRING "URL for the help menu" )

if(APPLE AND APPLICATION_NAME STREQUAL "ZTOneCloudDISK" AND EXISTS "${CMAKE_SOURCE_DIR}/theme/colored/ZTOneCloudDISK-macOS-icon.svg")
    set( APPLICATION_ICON_NAME "ZTOneCloudDISK-macOS" )
    message("Using macOS-specific application icon: ${APPLICATION_ICON_NAME}")
endif()

set( APPLICATION_ICON_SET   "SVG" )
set( APPLICATION_SERVER_URL "" CACHE STRING "URL for the server to use. If entered, the UI field will be pre-filled with it" )
set( APPLICATION_SERVER_URL_ENFORCE ON ) # If set and APPLICATION_SERVER_URL is defined, the server can only connect to the pre-defined URL
set( APPLICATION_REV_DOMAIN "com.ztonecloud.desktopclient" )
set( APPLICATION_VIRTUALFILE_SUFFIX "ztonecloud" CACHE STRING "Virtual file suffix (not including the .)")
set( APPLICATION_OCSP_STAPLING_ENABLED OFF )
set( APPLICATION_FORBID_BAD_SSL OFF )

set( LINUX_PACKAGE_SHORTNAME "ztoneclouddisk" )
set( LINUX_APPLICATION_ID "${APPLICATION_REV_DOMAIN}.${LINUX_PACKAGE_SHORTNAME}")

set( THEME_CLASS            "ZTOneCloudDISKTheme" )
set( WIN_SETUP_BITMAP_PATH  "${CMAKE_SOURCE_DIR}/admin/win/nsi" )

set( MAC_INSTALLER_BACKGROUND_FILE "${CMAKE_SOURCE_DIR}/admin/osx/installer-background.png" CACHE STRING "The MacOSX installer background image")

# set( THEME_INCLUDE          "${OEM_THEME_DIR}/mytheme.h" )
# set( APPLICATION_LICENSE    "${OEM_THEME_DIR}/license.txt )

## Updater options
option( BUILD_UPDATER "Build updater" ON )

option( WITH_PROVIDERS "Build with providers list" ON )

option( ENFORCE_VIRTUAL_FILES_SYNC_FOLDER "Enforce use of virtual files sync folder when available" OFF )
option( DISABLE_VIRTUAL_FILES_SYNC_FOLDER "Disable use of virtual files sync folder even when available" OFF )

option(ENFORCE_SINGLE_ACCOUNT "Enforce use of a single account in desktop client" OFF)

option( DO_NOT_USE_PROXY "Do not use system wide proxy, instead always do a direct connection to server" OFF )

## Theming options
set(NEXTCLOUD_BACKGROUND_COLOR "#0082c9" CACHE STRING "Default Nextcloud background color")
set( APPLICATION_WIZARD_HEADER_BACKGROUND_COLOR ${NEXTCLOUD_BACKGROUND_COLOR} CACHE STRING "Hex color of the wizard header background")
set( APPLICATION_WIZARD_HEADER_TITLE_COLOR "#ffffff" CACHE STRING "Hex color of the text in the wizard header")
option( APPLICATION_WIZARD_USE_CUSTOM_LOGO "Use the logo from ':/client/theme/colored/wizard_logo.(png|svg)' else the default application icon is used" ON )

#
## Windows Shell Extensions & MSI - IMPORTANT: Generate new GUIDs for custom builds with "guidgen" or "uuidgen"
#
if(WIN32)
    # Context Menu
    set( WIN_SHELLEXT_CONTEXT_MENU_GUID      "{BB1F5F34-C20E-4129-8D0E-F55B53097F3B}" )

    # Overlays
    set( WIN_SHELLEXT_OVERLAY_GUID_ERROR     "{EC14E519-52EB-4F42-9E8B-CF7BE41CC071}" )
    set( WIN_SHELLEXT_OVERLAY_GUID_OK        "{04306E8B-5497-4900-B7B4-401890D499AD}" )
    set( WIN_SHELLEXT_OVERLAY_GUID_OK_SHARED "{84130E07-B4ED-45CE-B6FF-EFBB5550513B}" )
    set( WIN_SHELLEXT_OVERLAY_GUID_SYNC      "{8832AB13-91C8-47F3-B684-27F23E8FE182}" )
    set( WIN_SHELLEXT_OVERLAY_GUID_WARNING   "{FC6D480A-9D93-479E-BA07-72D1F67CC0DE}" )

    # MSI Upgrade Code (without brackets)
    set( WIN_MSI_UPGRADE_CODE                "66E8DBC5-DB18-4CF9-8143-640E8A4AB473" )

    # Windows build options
    option( BUILD_WIN_MSI "Build MSI scripts and helper DLL" OFF )
    option( BUILD_WIN_TOOLS "Build Win32 migration tools" OFF )
endif()

if (APPLE AND CMAKE_OSX_DEPLOYMENT_TARGET VERSION_GREATER_EQUAL 11.0)
    option( BUILD_FILE_PROVIDER_MODULE "Build the macOS virtual files File Provider module" OFF )
endif()
