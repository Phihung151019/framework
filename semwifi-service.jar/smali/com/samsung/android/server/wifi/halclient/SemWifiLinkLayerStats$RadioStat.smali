.class public Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioStat"
.end annotation


# instance fields
.field public final channelStatsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$ChannelStats;",
            ">;"
        }
    .end annotation
.end field

.field public on_time:I

.field public on_time_background_scan:I

.field public on_time_hs20_scan:I

.field public on_time_nan_scan:I

.field public on_time_pno_scan:I

.field public on_time_roam_scan:I

.field public on_time_scan:I

.field public radio_id:I

.field public rx_time:I

.field public tx_time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats$RadioStat;->channelStatsMap:Landroid/util/SparseArray;

    .line 10
    .line 11
    return-void
.end method
