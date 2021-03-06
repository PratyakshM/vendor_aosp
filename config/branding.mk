# Versioning System
ATOM_BASE_VERSION = 2.6.3
ATOM_CODENAME := Stormbreaker

# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 10.0

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

ATOM_VERSION := $(ATOM_CODENAME)-v$(ATOM_BASE_VERSION)-$(TARGET_PRODUCT_SHORT)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)

CUSTOM_VERSION := Atom-AOSP$(ATOM_BASE_VERSION)_$(CUSTOM_BUILD)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD_DATE)-BETA-$(CUSTOM_BUILD_TYPE)
CUSTOM_VERSION_PROP := 10

CUSTOM_PROPERTIES := \
    org.atom.version=$(CUSTOM_VERSION_PROP) \
    org.atom.version=$(ATOM_VERSION) \
    org.atom.version.prop=$(CUSTOM_VERSION_PROP) \
    org.atom.version.display=$(CUSTOM_VERSION) \
    org.atom.build_version=$(ATOM_BASE_VERSION) \
    org.atom.version.display=$(ATOM_VERSION) \
    org.atom.build_date=$(CUSTOM_BUILD_DATE) \
    org.atom.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.atom.build_type=$(CUSTOM_BUILD_TYPE) \
    org.atom.build_codename=$(ATOM_CODENAME)
