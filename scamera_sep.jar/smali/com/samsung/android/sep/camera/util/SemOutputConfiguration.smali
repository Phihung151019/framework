.class public Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;
.super Ljava/lang/Object;
.source "SemOutputConfiguration.java"


# static fields
.field public static final STREAM_OPTION_NONE:I = 0x0

.field public static final STREAM_OPTION_PICTURE:I = 0x2

.field public static final STREAM_OPTION_PREVIEW:I = 0x1

.field public static final STREAM_OPTION_VIDEO:I = 0x3


# instance fields
.field private mConfig:Landroid/hardware/camera2/params/OutputConfiguration;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;I)V
    .locals 0
    .param p1, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .param p2, "streamType"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;->mConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 46
    iput p2, p0, Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;->mStreamType:I

    .line 47
    return-void
.end method


# virtual methods
.method public getConfig()Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;->mConfig:Landroid/hardware/camera2/params/OutputConfiguration;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;->mStreamType:I

    return v0
.end method
