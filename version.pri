PROJECT_NAME = qbittorrent

# Define version numbers here
VER_MAJOR = 3
VER_MINOR = 3
VER_BUGFIX = 11
VER_BUILD = 4
VER_STATUS = # Should be empty for stable releases!

# Don't touch the rest part
PROJECT_VERSION = $${VER_MAJOR}.$${VER_MINOR}.$${VER_BUGFIX}

!equals(VER_BUILD, 0) {
    PROJECT_VERSION = $${PROJECT_VERSION}.$${VER_BUILD}
}

PROJECT_VERSION = $${PROJECT_VERSION}$${VER_STATUS}

DEFINES += VERSION_MAJOR=$${VER_MAJOR}
DEFINES += VERSION_MINOR=$${VER_MINOR}
DEFINES += VERSION_BUGFIX=$${VER_BUGFIX}
DEFINES += VERSION_BUILD=$${VER_BUILD}

os2 {
    DEFINES += VERSION=\'\"v$${PROJECT_VERSION}\"\'
} else {
    DEFINES += VERSION=\\\"v$${PROJECT_VERSION}\\\"
}

