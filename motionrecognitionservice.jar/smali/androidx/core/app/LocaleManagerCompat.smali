.class public final Landroidx/core/app/LocaleManagerCompat;
.super Ljava/lang/Object;
.source "LocaleManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/LocaleManagerCompat$Api33Impl;,
        Landroidx/core/app/LocaleManagerCompat$Api24Impl;,
        Landroidx/core/app/LocaleManagerCompat$Api21Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationLocales(Landroid/content/Context;)Landroidx/core/os/LocaleListCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    nop

    .line 80
    invoke-static {p0}, Landroidx/core/app/LocaleManagerCompat;->getLocaleManagerForApplication(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "localeManager":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 82
    invoke-static {v0}, Landroidx/core/app/LocaleManagerCompat$Api33Impl;->localeManagerGetApplicationLocales(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    return-object v1

    .line 85
    :cond_0
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    return-object v1
.end method

.method static getConfigurationLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;
    .locals 1
    .param p0, "conf"    # Landroid/content/res/Configuration;

    .line 102
    nop

    .line 103
    invoke-static {p0}, Landroidx/core/app/LocaleManagerCompat$Api24Impl;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method private static getLocaleManagerForApplication(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 97
    const-string v0, "locale"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemLocales(Landroid/content/Context;)Landroidx/core/os/LocaleListCompat;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 55
    .local v0, "systemLocales":Landroidx/core/os/LocaleListCompat;
    nop

    .line 57
    invoke-static {p0}, Landroidx/core/app/LocaleManagerCompat;->getLocaleManagerForApplication(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, "localeManager":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 59
    invoke-static {v1}, Landroidx/core/app/LocaleManagerCompat$Api33Impl;->localeManagerGetSystemLocales(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 62
    .end local v1    # "localeManager":Ljava/lang/Object;
    :cond_0
    nop

    .line 65
    return-object v0
.end method
