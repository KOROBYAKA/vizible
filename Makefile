include $(TOPDIR)/rules.mk

PKG_NAME:=ViZible
PKG_VERSION:=1.0
PKG_RELEASE:=1


include $(INCLUDE_DIR)/package.mk

PKG_FIXUP:=autoreconf
PKG_FIXUP:=patch-libtool
PKG_FIXUP:=gettext-version

define Package/ViZible
	SECTION:=ViZible GUI
	CATEGORY:=Category
	TITLE:=GUI for OpenWrt by xfox111

endef

define Build/Compile

endef

define Package/ViZible/install
	$(INSTALL_DIR) $(1)/www
	$(INSTALL_DATA) ./dist/* $(1)/www/
endef

$(eval $(call BuildPackage,ViZible))
