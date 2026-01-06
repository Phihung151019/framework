.class public Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RateStat;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RateStat"
.end annotation


# instance fields
.field public bitRateInKbps:I

.field public bw:I

.field public mpduLost:I

.field public nss:I

.field public preamble:I

.field public rateMcsIdx:I

.field public retries:I

.field public rxMpdu:I

.field public txMpdu:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
