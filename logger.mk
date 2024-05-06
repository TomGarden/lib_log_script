
# Colors
Off_Color := \033[0m
Start_Color := \033[
End_Color := m

Black := 30
Red := 31
Green := 32
Yellow := 33
Blue := 34
Magenta := 35
Cyan := 36
White := 37
Bright_Black := 90
Bright_Red := 91
Bright_Green := 92
Bright_Yellow := 93
Bright_Blue := 94
Bright_Magenta := 95
Bright_Cyan := 96
Bright_White := 97

TAG := TomYeo

# 定义不同级别的日志函数
define LogI
	@echo "$(Off_Color)`date +"%Y-%m-%d %H:%M:%S.%3N %:z"` $(TAG) [I]:  $(1)$(Off_Color)"
endef

define LogD
    @echo "$(Start_Color)$(Green)$(End_Color)`date +"%Y-%m-%d %H:%M:%S.%3N %:z"` $(TAG) [D]:  $(1)$(Off_Color)"
endef

define LogW
    @echo "$(Start_Color)$(Yellow)$(End_Color)`date +"%Y-%m-%d %H:%M:%S.%3N %:z"` $(TAG) [W]:  $(1)$(Off_Color)"
endef

define LogE
    @echo "$(Start_Color)$(Red)$(End_Color)`date +"%Y-%m-%d %H:%M:%S.%3N %:z"` $(TAG) [E]:  $(1)$(Off_Color)"
endef


.PHONY: .TOM_YEO_LOG
.TOM_YEO_LOG:



#.PHONY: .LogI
#	$(call LogI, $(LogMSG))
#.PHONY: .LogD
#	$(call LogD, $(LogMSG))
#.PHONY: .LogW
#	$(call LogW, $(LogMSG))
#.PHONY: .LogE
#	$(call LogE, $(LogMSG))

#example:
#	$(call LogE, "log_e: makefile-日志\\n换行文本")
#	@sleep 1
#	$(call LogW, "log_w: makefile-日志换行文本")
#	@sleep 1
#	$(call LogD, "log_d: makefile-日志\n换行文本")
#	$(call LogI, "log_i: makefile-日志\n换行文本")
