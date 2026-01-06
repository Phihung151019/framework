.class public Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiCandidate"
.end annotation


# instance fields
.field public mBssid:Ljava/lang/String;

.field private mCalculatedThroughputScore:D

.field private final mCarrierOrPrivileged:Z

.field private final mChannelWidth:I

.field private final mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mDebugLogMessage:Ljava/lang/String;

.field private final mEphemeral:Z

.field private final mEstimatedPercentInternetAvailability:I

.field private final mFrequency:I

.field private final mHasNoInternetAccess:Z

.field private final mIpProvisioningTimedOut:Z

.field private final mIsCurrentBssid:Z

.field private final mIsCurrentNetwork:Z

.field private final mIsMetered:Z

.field private final mIsNoInternetAccessExpected:Z

.field private final mIsOpenNetwork:Z

.field private final mKey:Ljava/lang/String;

.field private final mLastSelectionWeight:D

.field public mMloLinkApAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkId:I

.field private final mNumRebootsSinceLastUse:I

.field private final mOemPaid:Z

.field private final mOemPrivate:Z

.field private final mPasspoint:Z

.field private mPredictedMultiLinkThroughputMbps:I

.field private final mPredictedThroughputMbps:I

.field private final mRestricted:Z

.field private final mScanRssi:I

.field private final mSecondaryInternet:Z

.field private final mSemIsNoInternetAccessExpected:Z

.field private final mTrusted:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmConfig(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            "IIIDZZZZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 2
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mCalculatedThroughputScore:D

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mDebugLogMessage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPredictedMultiLinkThroughputMbps:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mMloLinkApAddresses:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mBssid:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mKey:Ljava/lang/String;

    .line 8
    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mNetworkId:I

    .line 9
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 10
    iput p3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mScanRssi:I

    .line 11
    iput p4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mFrequency:I

    .line 12
    iput p5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mChannelWidth:I

    .line 13
    iput-wide p6, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mLastSelectionWeight:D

    .line 14
    iput-boolean p8, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsCurrentNetwork:Z

    .line 15
    iput-boolean p9, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsCurrentBssid:Z

    .line 16
    iput-boolean p10, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsMetered:Z

    .line 17
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mHasNoInternetAccess:Z

    .line 18
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isNoInternetAccessExpected()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsNoInternetAccessExpected:Z

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mSemIsNoInternetAccessExpected:Z

    .line 20
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConfigurationUtil;->isConfigForOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsOpenNetwork:Z

    .line 21
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPasspoint:Z

    .line 22
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mEphemeral:Z

    .line 23
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mTrusted:Z

    .line 24
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mOemPaid:Z

    .line 25
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mOemPrivate:Z

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mSecondaryInternet:Z

    .line 27
    iput-boolean p11, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mCarrierOrPrivileged:Z

    .line 28
    iput p12, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPredictedThroughputMbps:I

    .line 29
    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->numRebootsSinceLastUse:I

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mNumRebootsSinceLastUse:I

    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mEstimatedPercentInternetAvailability:I

    .line 31
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mRestricted:Z

    .line 32
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isIpProvisioningTimedOut()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIpProvisioningTimedOut:Z

    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mMloLinkApAddresses:Ljava/util/List;

    move-object/from16 p1, p13

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            "IIIDZZZZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 35
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mCalculatedThroughputScore:D

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mDebugLogMessage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPredictedMultiLinkThroughputMbps:I

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mMloLinkApAddresses:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mBssid:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mKey:Ljava/lang/String;

    .line 41
    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mNetworkId:I

    .line 42
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 43
    iput p3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mScanRssi:I

    .line 44
    iput p4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mFrequency:I

    .line 45
    iput p5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mChannelWidth:I

    .line 46
    iput-wide p6, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mLastSelectionWeight:D

    .line 47
    iput-boolean p8, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsCurrentNetwork:Z

    .line 48
    iput-boolean p9, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsCurrentBssid:Z

    .line 49
    iput-boolean p10, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsMetered:Z

    .line 50
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mHasNoInternetAccess:Z

    .line 51
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isNoInternetAccessExpected()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsNoInternetAccessExpected:Z

    move/from16 p1, p14

    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mSemIsNoInternetAccessExpected:Z

    .line 53
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConfigurationUtil;->isConfigForOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsOpenNetwork:Z

    .line 54
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPasspoint:Z

    .line 55
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mEphemeral:Z

    .line 56
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mTrusted:Z

    .line 57
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mOemPaid:Z

    .line 58
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mOemPrivate:Z

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mSecondaryInternet:Z

    .line 60
    iput-boolean p11, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mCarrierOrPrivileged:Z

    .line 61
    iput p12, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPredictedThroughputMbps:I

    .line 62
    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->numRebootsSinceLastUse:I

    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mNumRebootsSinceLastUse:I

    .line 63
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mEstimatedPercentInternetAvailability:I

    .line 64
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mRestricted:Z

    .line 65
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isIpProvisioningTimedOut()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIpProvisioningTimedOut:Z

    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mMloLinkApAddresses:Ljava/util/List;

    move-object/from16 p1, p13

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getCalculatedThroughputScore()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mCalculatedThroughputScore:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getChannelWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mChannelWidth:I

    .line 2
    .line 3
    return p0
.end method

.method public getDebugLogMessage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mDebugLogMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEstimatedPercentInternetAvailability()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mEstimatedPercentInternetAvailability:I

    .line 2
    .line 3
    return p0
.end method

.method public getFrequency()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mFrequency:I

    .line 2
    .line 3
    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLastSelectionWeight()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mLastSelectionWeight:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNetworkConfigId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mNetworkId:I

    .line 2
    .line 3
    return p0
.end method

.method public getNumRebootsSinceLastUse()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mNumRebootsSinceLastUse:I

    .line 2
    .line 3
    return p0
.end method

.method public getPredictedMultiLinkThroughputMbps()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPredictedMultiLinkThroughputMbps:I

    .line 2
    .line 3
    return p0
.end method

.method public getPredictedThroughputMbps()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPredictedThroughputMbps:I

    .line 2
    .line 3
    return p0
.end method

.method public getScanRssi()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mScanRssi:I

    .line 2
    .line 3
    return p0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasNoInternetAccess()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mHasNoInternetAccess:Z

    .line 2
    .line 3
    return p0
.end method

.method public isCarrierOrPrivileged()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mCarrierOrPrivileged:Z

    .line 2
    .line 3
    return p0
.end method

.method public isCurrentBssid()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsCurrentBssid:Z

    .line 2
    .line 3
    return p0
.end method

.method public isCurrentNetwork()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsCurrentNetwork:Z

    .line 2
    .line 3
    return p0
.end method

.method public isEphemeral()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mEphemeral:Z

    .line 2
    .line 3
    return p0
.end method

.method public isIpProvisioningTimedOut()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIpProvisioningTimedOut:Z

    .line 2
    .line 3
    return p0
.end method

.method public isMetered()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsMetered:Z

    .line 2
    .line 3
    return p0
.end method

.method public isNoInternetAccessExpected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsNoInternetAccessExpected:Z

    .line 2
    .line 3
    return p0
.end method

.method public isOemPaid()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mOemPaid:Z

    .line 2
    .line 3
    return p0
.end method

.method public isOemPrivate()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mOemPrivate:Z

    .line 2
    .line 3
    return p0
.end method

.method public isOpenNetwork()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mIsOpenNetwork:Z

    .line 2
    .line 3
    return p0
.end method

.method public isPasspoint()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPasspoint:Z

    .line 2
    .line 3
    return p0
.end method

.method public isRestricted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mRestricted:Z

    .line 2
    .line 3
    return p0
.end method

.method public isSecondaryInternet()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mSecondaryInternet:Z

    .line 2
    .line 3
    return p0
.end method

.method public isTrusted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mTrusted:Z

    .line 2
    .line 3
    return p0
.end method

.method public semIsNoInternetAccessExpected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mSemIsNoInternetAccessExpected:Z

    .line 2
    .line 3
    return p0
.end method

.method public setCalculatedThroughputScore(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mCalculatedThroughputScore:D

    .line 2
    .line 3
    return-void
.end method

.method public setDebugLogMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mDebugLogMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPredictedMultiLinkThroughputMbps(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mPredictedMultiLinkThroughputMbps:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getLastSelectionWeight()D

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmpl-double v1, v1, v3

    .line 12
    .line 13
    const-string v2, ", "

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v4, "lastSelectionWeight = "

    .line 22
    .line 23
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getLastSelectionWeight()D

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    mul-double/2addr v4, v6

    .line 36
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    long-to-double v4, v4

    .line 41
    div-double/2addr v4, v6

    .line 42
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v1, v3

    .line 54
    :goto_0
    new-instance v4, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 55
    .line 56
    invoke-direct {v4}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v6, "Candidate { configId = "

    .line 62
    .line 63
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getNetworkConfigId()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v6, ", key = "

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, ", freq = "

    .line 86
    .line 87
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, ", rssi = "

    .line 98
    .line 99
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getScanRssi()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v0, ", Mbps = "

    .line 110
    .line 111
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedThroughputMbps()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mMloLinkApAddresses:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_1

    .line 131
    .line 132
    move-object v0, v3

    .line 133
    goto :goto_1

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v6, "ML Mbps = "

    .line 137
    .line 138
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getPredictedMultiLinkThroughputMbps()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v7, ", MLO Links: "

    .line 151
    .line 152
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v7, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mMloLinkApAddresses:Ljava/util/List;

    .line 156
    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v4, v6}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v0, "Score = "

    .line 179
    .line 180
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getCalculatedThroughputScore()D

    .line 184
    .line 185
    .line 186
    move-result-wide v6

    .line 187
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v0, ", pInternet = "

    .line 191
    .line 192
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getEstimatedPercentInternetAvailability()I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v0, ", numRebootsSinceLastUse = "

    .line 203
    .line 204
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getNumRebootsSinceLastUse()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isCurrentBssid()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_2

    .line 225
    .line 226
    const-string v0, "connected, "

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_2
    move-object v0, v3

    .line 230
    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isCurrentNetwork()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_3

    .line 238
    .line 239
    const-string v0, "current, "

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_3
    move-object v0, v3

    .line 243
    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 251
    .line 252
    if-eqz v0, :cond_4

    .line 253
    .line 254
    const-string v0, "hidden, "

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_4
    move-object v0, v3

    .line 258
    :goto_4
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isEphemeral()Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_5

    .line 266
    .line 267
    const-string v0, "ephemeral"

    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_5
    const-string v0, "saved"

    .line 271
    .line 272
    :goto_5
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isTrusted()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_6

    .line 283
    .line 284
    const-string v0, "trusted, "

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_6
    move-object v0, v3

    .line 288
    :goto_6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isRestricted()Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_7

    .line 296
    .line 297
    const-string v0, "restricted, "

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_7
    move-object v0, v3

    .line 301
    :goto_7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isOemPaid()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_8

    .line 309
    .line 310
    const-string v0, "oemPaid, "

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_8
    move-object v0, v3

    .line 314
    :goto_8
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isOemPrivate()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_9

    .line 322
    .line 323
    const-string v0, "oemPrivate, "

    .line 324
    .line 325
    goto :goto_9

    .line 326
    :cond_9
    move-object v0, v3

    .line 327
    :goto_9
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isSecondaryInternet()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_a

    .line 335
    .line 336
    const-string v0, "secondaryInternet, "

    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_a
    move-object v0, v3

    .line 340
    :goto_a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isCarrierOrPrivileged()Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_b

    .line 348
    .line 349
    const-string v0, "priv, "

    .line 350
    .line 351
    goto :goto_b

    .line 352
    :cond_b
    move-object v0, v3

    .line 353
    :goto_b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isMetered()Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_c

    .line 361
    .line 362
    const-string v0, "metered, "

    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_c
    move-object v0, v3

    .line 366
    :goto_c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->hasNoInternetAccess()Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_d

    .line 374
    .line 375
    const-string v0, "noInternet, "

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_d
    move-object v0, v3

    .line 379
    :goto_d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isNoInternetAccessExpected()Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-eqz v0, :cond_e

    .line 387
    .line 388
    const-string v0, "noInternetExpected, "

    .line 389
    .line 390
    goto :goto_e

    .line 391
    :cond_e
    move-object v0, v3

    .line 392
    :goto_e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->semIsNoInternetAccessExpected()Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_f

    .line 400
    .line 401
    const-string v0, "semNoInternetExpected, "

    .line 402
    .line 403
    goto :goto_f

    .line 404
    :cond_f
    move-object v0, v3

    .line 405
    :goto_f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isPasspoint()Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_10

    .line 413
    .line 414
    const-string v3, "passpoint, "

    .line 415
    .line 416
    :cond_10
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->isOpenNetwork()Z

    .line 420
    .line 421
    .line 422
    move-result p0

    .line 423
    if-eqz p0, :cond_11

    .line 424
    .line 425
    const-string p0, "open"

    .line 426
    .line 427
    goto :goto_10

    .line 428
    :cond_11
    const-string p0, "secure"

    .line 429
    .line 430
    :goto_10
    const-string v0, " }"

    .line 431
    .line 432
    invoke-static {v5, p0, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    return-object p0
.end method
