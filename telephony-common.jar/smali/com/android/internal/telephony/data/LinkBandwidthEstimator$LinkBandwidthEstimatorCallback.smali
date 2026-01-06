.class public Lcom/android/internal/telephony/data/LinkBandwidthEstimator$LinkBandwidthEstimatorCallback;
.super Lcom/android/internal/telephony/data/DataCallback;
.source "LinkBandwidthEstimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkBandwidthEstimatorCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataCallback;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public blacklist onBandwidthChanged(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onDataActivityChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onDataRetryForScreenOn()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onHighBandwidthDataTransfer(II)V
    .locals 0

    .line 0
    return-void
.end method
