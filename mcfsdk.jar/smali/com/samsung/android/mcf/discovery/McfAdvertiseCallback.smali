.class public abstract Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
.super Ljava/lang/Object;
.source "McfAdvertiseCallback.java"


# static fields
.field public static final ADV_STOPPED_BY_TIMEOUT:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertiseStarted(I)V
    .locals 0
    .param p1, "status"    # I

    .line 15
    return-void
.end method

.method public onAdvertiseStopped(I)V
    .locals 0
    .param p1, "status"    # I

    .line 18
    return-void
.end method
