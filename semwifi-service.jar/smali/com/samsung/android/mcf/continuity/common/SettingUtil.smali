.class public final Lcom/samsung/android/mcf/continuity/common/SettingUtil;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# direct methods
.method public static isContinuitySettingEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/Utils;->isWatch()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "mcf_watch_continuity"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isSystemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const-string v0, "mcf_continuity"

    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isSystemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static isHardwareShareSettingEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "hwrs_service"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isSystemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static isMultiControlSettingEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "multi_control_enabled"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isSystemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static isSystemEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 p1, 0x1

    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    return v0
.end method

.method public static isVideoCallContinuityEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "vcc_continuity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/SettingUtil;->isSystemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
