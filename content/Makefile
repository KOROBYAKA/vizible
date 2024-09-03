include $(TOPDIR)/rules.mk

PKG_NAME:=vizible
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

PKG_FIXUP:=autoreconf
PKG_FIXUP:=patch-libtool
PKG_FIXUP:=gettext-version

define Package/vizible
	SECTION:=GUI
	CATEGORY:=GUI
	TITLE:=GUI for OpenWrt by xfox111
endef

define Package/vizible/description
	A fully selfmade custom GUI, doesn't use or based on LuCI(except few packages)
endef

define Package/vizible/install
	$(INSTALL_DIR) $(1)/www/assets
	$(INSTALL_DATA) ./dist/favicon.svg $(1)/www/
	$(INSTALL_DATA) ./dist/index.html $(1)/www/
	$(INSTALL_DATA) ./dist/logo.cvg $(1)/www/
	$(INSTALL_DATA) ./dist/assets/* $(1)/www/assets/
endef

$(eval $(call BuildPackage,vizible))
