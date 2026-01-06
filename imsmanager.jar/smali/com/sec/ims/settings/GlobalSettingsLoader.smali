.class public Lcom/sec/ims/settings/GlobalSettingsLoader;
.super Ljava/lang/Object;
.source "GlobalSettingsLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GlobalSettingsLoader"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadGlobalSettings(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/sec/ims/settings/GlobalSettings;->getInstance(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object p0

    return-object p0
.end method

.method public static loadGlobalSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/ims/settings/GlobalSettings;
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/sec/ims/settings/GlobalSettings;->getInstance(Landroid/content/Context;)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object p0

    return-object p0
.end method
