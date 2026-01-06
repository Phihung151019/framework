.class public Lcom/samsung/android/knox/ucm/plugin/UcmPluginUtil;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# static fields
.field public static final greylist UCM_VERSION_1:Ljava/lang/String; = "v1"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist getUCMVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "v1"

    return-object v0
.end method
