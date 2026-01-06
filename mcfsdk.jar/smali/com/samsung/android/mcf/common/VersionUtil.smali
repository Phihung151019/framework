.class public Lcom/samsung/android/mcf/common/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildSDKVersion()I
    .locals 1

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
