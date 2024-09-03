include $(TOPDIR)/rules.mk

PKG_NAME:=ViZible
PKG_VERSION:=1.0
PKG_RELEASE:=1


include $(INCLUDE_DIR)/package.mk

PKG_FIXUP:=autoreconf
PKG_FIXUP:=patch-libtool
PKG_FIXUP:=gettext-version

define Package/ViZible
	SECTION:=GUI
	CATEGORY:=GUI
	TITLE:=GUI for OpenWrt by xfox111
endef

define Package/ViZible/description
	A fully selfmade custom GUI, doesn't use or based on LuCI(except few packages)
endef

define Package/ViZible/install
	$(INSTALL_DIR) $(1)/www2
	$(INSTALL_DATA) ./dist/* $(1)/www2/
endef

$(eval $(call BuildPackage,ViZible))
