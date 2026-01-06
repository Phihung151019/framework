.class Lcom/samsung/android/gesture/VirtualPocketData;
.super Ljava/lang/Object;
.source "PocketProximityManager.java"


# static fields
.field public static final FW_VER_LIGHT_THD:I = 0x16f75ec


# instance fields
.field private baseProxy:I

.field private closeCentroid:I

.field private curProxyCheckTime:J

.field private currentProxy:I

.field private highLuxProxy:I

.field private highLuxProxyTime:J

.field private isAvailableLightDynmTHD:Z

.field private lastCloseProxy:I

.field private lastOpenProxy:I

.field private luxPocket:I

.field private minRecog:I

.field private minRelease:I

.field private openCentroid:I

.field private pocketVer:I

.field private prevProxyCheckTime:J

.field private proxyCallMin:I

.field private reason:I

.field private releaseDiff:I

.field private state:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseProxy()I
    .locals 1

    .line 926
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->baseProxy:I

    return v0
.end method

.method public getCloseCentroid()I
    .locals 1

    .line 1022
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->closeCentroid:I

    return v0
.end method

.method public getCurProxyCheckTime()J
    .locals 2

    .line 986
    iget-wide v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->curProxyCheckTime:J

    return-wide v0
.end method

.method public getCurrentProxy()I
    .locals 1

    .line 932
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->currentProxy:I

    return v0
.end method

.method public getHighLuxProxy()I
    .locals 1

    .line 974
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->highLuxProxy:I

    return v0
.end method

.method public getHighLuxProxyTime()J
    .locals 2

    .line 980
    iget-wide v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->highLuxProxyTime:J

    return-wide v0
.end method

.method public getLastCloseProxy()I
    .locals 1

    .line 968
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->lastCloseProxy:I

    return v0
.end method

.method public getLastOpenProxy()I
    .locals 1

    .line 962
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->lastOpenProxy:I

    return v0
.end method

.method public getLightDynmTHD()Z
    .locals 1

    .line 998
    iget-boolean v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->isAvailableLightDynmTHD:Z

    return v0
.end method

.method public getLuxPocket()I
    .locals 1

    .line 938
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->luxPocket:I

    return v0
.end method

.method public getMinRecog()I
    .locals 1

    .line 956
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->minRecog:I

    return v0
.end method

.method public getMinRelease()I
    .locals 1

    .line 950
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->minRelease:I

    return v0
.end method

.method public getOpenCentroid()I
    .locals 1

    .line 1016
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->openCentroid:I

    return v0
.end method

.method public getPocketVer()I
    .locals 1

    .line 1010
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->pocketVer:I

    return v0
.end method

.method public getPrevProxyCheckTime()J
    .locals 2

    .line 992
    iget-wide v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->prevProxyCheckTime:J

    return-wide v0
.end method

.method public getProxyCallMin()I
    .locals 1

    .line 1004
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->proxyCallMin:I

    return v0
.end method

.method public getReason()I
    .locals 1

    .line 920
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->reason:I

    return v0
.end method

.method public getReleaseDiff()I
    .locals 1

    .line 944
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->releaseDiff:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 914
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->state:I

    return v0
.end method

.method public setBaseProxy(I)V
    .locals 0
    .param p1, "baseProxy"    # I

    .line 929
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->baseProxy:I

    .line 930
    return-void
.end method

.method public setCloseCentroid(I)V
    .locals 0
    .param p1, "closeCentroid"    # I

    .line 1025
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->closeCentroid:I

    .line 1026
    return-void
.end method

.method public setCurProxyCheckTime(J)V
    .locals 0
    .param p1, "curProxyCheckTime"    # J

    .line 989
    iput-wide p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->curProxyCheckTime:J

    .line 990
    return-void
.end method

.method public setCurrentProxy(I)V
    .locals 0
    .param p1, "currentProxy"    # I

    .line 935
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->currentProxy:I

    .line 936
    return-void
.end method

.method public setHighLuxProxy(I)V
    .locals 0
    .param p1, "highLuxProxy"    # I

    .line 977
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->highLuxProxy:I

    .line 978
    return-void
.end method

.method public setHighLuxProxyTime(J)V
    .locals 0
    .param p1, "highLuxProxyTime"    # J

    .line 983
    iput-wide p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->highLuxProxyTime:J

    .line 984
    return-void
.end method

.method public setLastCloseProxy(I)V
    .locals 0
    .param p1, "lastCloseProxy"    # I

    .line 971
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->lastCloseProxy:I

    .line 972
    return-void
.end method

.method public setLastOpenProxy(I)V
    .locals 0
    .param p1, "lastOpenProxy"    # I

    .line 965
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->lastOpenProxy:I

    .line 966
    return-void
.end method

.method public setLightDynmTHD(Z)V
    .locals 0
    .param p1, "en"    # Z

    .line 1001
    iput-boolean p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->isAvailableLightDynmTHD:Z

    .line 1002
    return-void
.end method

.method public setLuxPocket(I)V
    .locals 0
    .param p1, "luxPocket"    # I

    .line 941
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->luxPocket:I

    .line 942
    return-void
.end method

.method public setMinRecog(I)V
    .locals 0
    .param p1, "minRecog"    # I

    .line 959
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->minRecog:I

    .line 960
    return-void
.end method

.method public setMinRelease(I)V
    .locals 0
    .param p1, "minRelease"    # I

    .line 953
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->minRelease:I

    .line 954
    return-void
.end method

.method public setOpenCentroid(I)V
    .locals 0
    .param p1, "openCentroid"    # I

    .line 1019
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->openCentroid:I

    .line 1020
    return-void
.end method

.method public setPocketVer(I)V
    .locals 0
    .param p1, "pocketVer"    # I

    .line 1013
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->pocketVer:I

    .line 1014
    return-void
.end method

.method public setPrevProxyCheckTime(J)V
    .locals 0
    .param p1, "prevProxyCheckTime"    # J

    .line 995
    iput-wide p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->prevProxyCheckTime:J

    .line 996
    return-void
.end method

.method public setProxyCallMin(I)V
    .locals 0
    .param p1, "proxyCallMin"    # I

    .line 1007
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->proxyCallMin:I

    .line 1008
    return-void
.end method

.method public setReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .line 923
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->reason:I

    .line 924
    return-void
.end method

.method public setReleaseDiff(I)V
    .locals 0
    .param p1, "releaseDiff"    # I

    .line 947
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->releaseDiff:I

    .line 948
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 917
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->state:I

    .line 918
    return-void
.end method
