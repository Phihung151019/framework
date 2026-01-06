.class public Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningStatistics"
.end annotation


# instance fields
.field public runningTimeS:D

.field public rxBytes:J

.field public txBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->rxBytes:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->txBytes:J

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 13
    .line 14
    return-void
.end method
