.class public Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiManager$WifiConnectedNetworkScorer;


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.WifiScoreMediator"


# instance fields
.field private mActivated:Z

.field private mDesinatedScore:I

.field public scoreUpdateObserver:Landroid/net/wifi/WifiManager$ScoreUpdateObserver;

.field public startSessionId:I

.field public stopSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->scoreUpdateObserver:Landroid/net/wifi/WifiManager$ScoreUpdateObserver;

    .line 6
    .line 7
    const/16 v0, 0x3c

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->mDesinatedScore:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->mActivated:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getActivated()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->mActivated:Z

    .line 2
    .line 3
    return p0
.end method

.method public getWifiNetworkEnabled()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->mDesinatedScore:I

    .line 2
    .line 3
    const/16 v0, 0x3c

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public onSetScoreUpdateObserver(Landroid/net/wifi/WifiManager$ScoreUpdateObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->scoreUpdateObserver:Landroid/net/wifi/WifiManager$ScoreUpdateObserver;

    .line 2
    .line 3
    return-void
.end method

.method public onStart(I)V
    .locals 2

    .line 1
    const-string v0, "WifiScoreMediator onStart with sessionId : "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "WifiConnectivityMonitor.WifiScoreMediator"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->startSessionId:I

    .line 13
    .line 14
    return-void
.end method

.method public onStop(I)V
    .locals 2

    .line 1
    const-string v0, "WifiScoreMediator onStop with sessionId : "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "WifiConnectivityMonitor.WifiScoreMediator"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->stopSessionId:I

    .line 13
    .line 14
    return-void
.end method

.method public setActivated(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->mActivated:Z

    .line 2
    .line 3
    return-void
.end method

.method public setWifiNetworkEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->scoreUpdateObserver:Landroid/net/wifi/WifiManager$ScoreUpdateObserver;

    .line 2
    .line 3
    const-string v1, "WifiConnectivityMonitor.WifiScoreMediator"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v2, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->startSessionId:I

    .line 8
    .line 9
    invoke-interface {v0, v2, p1}, Landroid/net/wifi/WifiManager$ScoreUpdateObserver;->notifyStatusUpdate(IZ)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/16 p1, 0x3c

    .line 15
    .line 16
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->mDesinatedScore:I

    .line 17
    .line 18
    const-string p0, "Set Wifi network that it can be default network"

    .line 19
    .line 20
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/16 p1, 0x1e

    .line 25
    .line 26
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->mDesinatedScore:I

    .line 27
    .line 28
    const-string p0, "Set Wifi network not to be default network"

    .line 29
    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-string p0, "mWifiScoreMediator.scoreUpdateObserver not assigned properly"

    .line 35
    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public updateWifiScore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->scoreUpdateObserver:Landroid/net/wifi/WifiManager$ScoreUpdateObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->startSessionId:I

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->mDesinatedScore:I

    .line 8
    .line 9
    invoke-interface {v0, v1, p0}, Landroid/net/wifi/WifiManager$ScoreUpdateObserver;->notifyScoreUpdate(II)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
