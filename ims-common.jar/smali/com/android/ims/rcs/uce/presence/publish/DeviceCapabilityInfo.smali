.class public Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
.super Ljava/lang/Object;
.source "DeviceCapabilityInfo.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mLastRegistrationFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastRegistrationOverrideFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastSuccessfulCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Landroid/util/LocalLog;

.field private blacklist mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

.field private blacklist mMmtelAssociatedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMmtelNetworkRegType:I

.field private blacklist mMmtelRegistered:Z

.field private blacklist mMobileData:Z

.field private final blacklist mOverrideAddFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOverrideRemoveFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingPublishCapabilities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPresenceCapable:Z

.field private blacklist mRcsAssociatedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRcsNetworkRegType:I

.field private blacklist mRcsRegistered:Z

.field private blacklist mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

.field private final blacklist mSubId:I

.field private blacklist mTtyPreferredMode:I

.field private blacklist mVtSetting:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceCapabilityInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "capToRegistrationMap"    # [Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    .line 70
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationOverrideFeatureTags:Ljava/util/Set;

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    .line 111
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    .line 116
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mSubId:I

    .line 117
    invoke-static {p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->fromCarrierConfig([Ljava/lang/String;)Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 118
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->reset()V

    .line 119
    return-void
.end method

.method private blacklist addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V
    .locals 1
    .param p1, "presenceBuilder"    # Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    .param p2, "tupleBuilder"    # Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    .param p3, "contactUri"    # Landroid/net/Uri;

    .line 666
    invoke-virtual {p2, p3}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setContactUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->addCapabilityTuple(Landroid/telephony/ims/RcsContactPresenceTuple;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 667
    return-void
.end method

.method private declared-synchronized blacklist deepCopyCapabilities(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 3
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    monitor-enter p0

    .line 705
    :try_start_0
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    .line 706
    .local v0, "mmTelCapabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 709
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 710
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 712
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 713
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 715
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 716
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 718
    :cond_3
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 719
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    :cond_4
    monitor-exit p0

    return-object v0

    .line 704
    .end local v0    # "mmTelCapabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .end local p1    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private blacklist getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    .locals 2
    .param p1, "reference"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            "Ljava/util/Set<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            ">;)",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;"
        }
    .end annotation

    .line 643
    .local p2, "refSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;>;"
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 644
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 643
    return-object v0
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .locals 2

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 741
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 742
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    return-object v0
.end method

.method private blacklist getOptionsCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 649
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mSubId:I

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getDeviceContactUri(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Z)Landroid/net/Uri;

    move-result-object v0

    .line 650
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 651
    const-string v1, "getOptionsCapabilities: uri is empty"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logw(Ljava/lang/String;)V

    .line 652
    const/4 v1, 0x0

    return-object v1

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationFeatureTags()Ljava/util/Set;

    move-result-object v7

    .line 657
    .local v7, "capableFromReg":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    const/4 v1, 0x1

    invoke-direct {v2, v0, v1}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;-><init>(Landroid/net/Uri;I)V

    .line 658
    .local v2, "optionsBuilder":Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->setRequestResult(I)Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;

    .line 659
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVolteCapability()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVtCapability()Z

    move-result v4

    .line 660
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isPresenceCapable()Z

    move-result v5

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasCallComposerCapability()Z

    move-result v6

    .line 659
    invoke-static/range {v2 .. v7}, Lcom/android/ims/rcs/uce/util/FeatureTags;->addFeatureTags(Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;ZZZZLjava/util/Set;)V

    .line 661
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability$OptionsBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getPresenceCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 588
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mSubId:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getDeviceContactUri(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Z)Landroid/net/Uri;

    move-result-object v0

    .line 589
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 590
    const-string v1, "getPresenceCapabilities: uri is empty"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logw(Ljava/lang/String;)V

    .line 591
    const/4 v1, 0x0

    return-object v1

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 594
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationCapabilities()Ljava/util/Set;

    move-result-object v2

    .line 596
    .local v2, "capableFromReg":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;>;"
    new-instance v3, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v1, v4}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;-><init>(Landroid/net/Uri;II)V

    .line 600
    .local v3, "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_PRESENCE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {p0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    move-result-object v1

    .line 602
    .local v1, "presDescription":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v4

    invoke-direct {p0, v3, v4, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V

    .line 603
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 606
    sget-object v4, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_MMTEL_VOICE:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {p0, v4, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    move-result-object v4

    .line 608
    .local v4, "voiceDescription":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    sget-object v5, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_MMTEL_VOICE_VIDEO:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {p0, v5, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    move-result-object v5

    .line 610
    .local v5, "vtDescription":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVolteCapability()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVtCapability()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 611
    move-object v6, v5

    goto :goto_0

    :cond_1
    move-object v6, v4

    .line 612
    .local v6, "descToUse":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    :goto_0
    new-instance v7, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    .line 613
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVolteCapability()Z

    move-result v8

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasVtCapability()Z

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;-><init>(ZZ)V

    .line 614
    const-string v8, "full"

    invoke-virtual {v7, v8}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->addSupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    move-result-object v7

    .line 615
    .local v7, "servCaps":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;
    invoke-virtual {v6}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v8

    .line 616
    invoke-virtual {v8, v7}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setServiceCapabilities(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v8

    .line 615
    invoke-direct {p0, v3, v8, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V

    .line 617
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 618
    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 621
    sget-object v8, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->SERVICE_DESCRIPTION_CALL_COMPOSER_MMTEL:Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    invoke-direct {p0, v8, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getCustomizedDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Ljava/util/Set;)Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    move-result-object v8

    .line 623
    .local v8, "composerDescription":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->hasCallComposerCapability()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 624
    invoke-virtual {v8}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v9

    invoke-direct {p0, v3, v9, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V

    .line 626
    :cond_2
    invoke-interface {v2, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 630
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 631
    .local v10, "capability":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-virtual {v10}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v11

    invoke-direct {p0, v3, v11, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addCapability(Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;Landroid/telephony/ims/RcsContactPresenceTuple$Builder;Landroid/net/Uri;)V

    .line 632
    .end local v10    # "capability":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    goto :goto_1

    .line 634
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v9

    return-object v9
.end method

.method private declared-synchronized blacklist hasCallComposerCapability()Z
    .locals 3

    monitor-enter p0

    .line 683
    :try_start_0
    const-string v0, "+g.gsma.callcomposer"

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 684
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    const/4 v1, 0x0

    .line 683
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->overrideCapability(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 682
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized blacklist hasVolteCapability()Z
    .locals 3

    monitor-enter p0

    .line 671
    :try_start_0
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 672
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    const/4 v2, 0x0

    .line 671
    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->overrideCapability(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 670
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized blacklist hasVtCapability()Z
    .locals 3

    monitor-enter p0

    .line 677
    :try_start_0
    const-string v0, "video"

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 678
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    const/4 v1, 0x0

    .line 677
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->overrideCapability(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 676
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private blacklist isCallComposerAvailable(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .locals 1
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 561
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method private blacklist isViWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .locals 1
    .param p1, "networkRegType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 556
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 557
    invoke-virtual {p2, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 556
    :goto_0
    return v0
.end method

.method private blacklist isVoWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .locals 2
    .param p1, "networkRegType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 546
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 547
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 546
    :goto_0
    return v0
.end method

.method private blacklist isVolteAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .locals 2
    .param p1, "networkRegType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 541
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 542
    invoke-virtual {p2, v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0
.end method

.method private blacklist isVtAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .locals 2
    .param p1, "networkRegType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 551
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 552
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 551
    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getCustomizedDescription$0(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)Z
    .locals 2
    .param p0, "reference"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    .param p1, "s"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 643
    iget-object v0, p1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->version:Ljava/lang/String;

    .line 644
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 643
    :goto_0
    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 725
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[D] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 730
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[I] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .line 735
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method private declared-synchronized blacklist overrideCapability(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "originalCap"    # Z

    monitor-enter p0

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 694
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 697
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 698
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 701
    :cond_1
    monitor-exit p0

    return p2

    .line 692
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "featureTag":Ljava/lang/String;
    .end local p2    # "originalCap":Z
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized blacklist updateImsRegistrationFeatureTags(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 391
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 392
    .local v0, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 393
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-object v0

    .line 390
    .end local v0    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private blacklist updateRegistration(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 377
    .local p1, "baseTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsRegistrationFeatureTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 378
    .local v0, "updatedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationOverrideFeatureTags:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationOverrideFeatureTags:Ljava/util/Set;

    .line 380
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->updateImsRegistration(Ljava/util/Set;)V

    .line 381
    const/4 v1, 0x1

    return v1

    .line 383
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist addLastSuccessfulServiceDescription(Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;)V
    .locals 1
    .param p1, "capability"    # Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 525
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 526
    return-void
.end method

.method public declared-synchronized blacklist addRegistrationOverrideCapabilities(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 349
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "override - add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 351
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 353
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 348
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist clearRegistrationOverrideCapabilities()Z
    .locals 1

    monitor-enter p0

    .line 365
    :try_start_0
    const-string v0, "override - clear"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 367
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 369
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 364
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 747
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 748
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    const-string v1, "DeviceCapabilityInfo :"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 751
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->dump(Ljava/io/PrintWriter;)V

    .line 753
    const-string v1, "Log:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 755
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 756
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 758
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 759
    return-void
.end method

.method public blacklist getChangedPresenceCapability(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 481
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 482
    return-object v0

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 485
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationCapabilities()Ljava/util/Set;

    move-result-object v1

    .line 486
    .local v1, "capableFromReg":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;>;"
    invoke-virtual {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isPresenceCapabilityChanged(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 487
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getPresenceCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    .line 488
    .local v0, "rcsContactUceCapability":Landroid/telephony/ims/RcsContactUceCapability;
    if-eqz v0, :cond_1

    .line 489
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationCapabilities()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;

    .line 491
    :cond_1
    return-object v0

    .line 493
    .end local v0    # "rcsContactUceCapability":Landroid/telephony/ims/RcsContactUceCapability;
    :cond_2
    return-object v0
.end method

.method public declared-synchronized blacklist getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 2
    .param p1, "mechanism"    # I
    .param p2, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 570
    packed-switch p1, :pswitch_data_0

    .line 581
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_0

    .line 579
    .restart local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getOptionsCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 572
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getPresenceCapabilities(Landroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    .line 573
    .local v0, "rcsContactUceCapability":Landroid/telephony/ims/RcsContactUceCapability;
    if-eqz v0, :cond_0

    .line 574
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 575
    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationCapabilities()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :cond_0
    monitor-exit p0

    return-object v0

    .line 569
    .end local v0    # "rcsContactUceCapability":Landroid/telephony/ims/RcsContactUceCapability;
    .end local p1    # "mechanism":I
    .end local p2    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 581
    .restart local p1    # "mechanism":I
    .restart local p2    # "context":Landroid/content/Context;
    :goto_0
    :try_start_2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceCapabilities: invalid mechanism "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logw(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 582
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 569
    .end local p1    # "mechanism":I
    .end local p2    # "context":Landroid/content/Context;
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized blacklist getImsAssociatedUri(Z)Landroid/net/Uri;
    .locals 4
    .param p1, "preferTelUri"    # Z

    monitor-enter p0

    .line 320
    if-eqz p1, :cond_3

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 323
    .local v1, "rcsAssociatedUri":Landroid/net/Uri;
    const-string v2, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 324
    monitor-exit p0

    return-object v1

    .line 326
    .end local v1    # "rcsAssociatedUri":Landroid/net/Uri;
    :cond_0
    goto :goto_0

    .line 328
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 330
    .local v1, "mmtelAssociatedUri":Landroid/net/Uri;
    const-string v2, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 331
    monitor-exit p0

    return-object v1

    .line 333
    .end local v1    # "mmtelAssociatedUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_2
    goto :goto_1

    .line 339
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 340
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 341
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 342
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 344
    :cond_5
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 319
    .end local p1    # "preferTelUri":Z
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getImsAssociatedUrisAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 302
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 305
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 299
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist getLastSuccessfulPresenceTuplesWithoutContactUri()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v0, "presenceTuples":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactPresenceTuple;>;"
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    return-object v0

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;

    .line 518
    .local v2, "capability":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;->getTupleBuilder()Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    .end local v2    # "capability":Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;
    goto :goto_0

    .line 520
    :cond_1
    return-object v0
.end method

.method public declared-synchronized blacklist getMmtelAssociatedUri()Landroid/net/Uri;
    .locals 2

    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 217
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist getRcsAssociatedUri()Landroid/net/Uri;
    .locals 2

    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 291
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 287
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist isImsRegistered()Z
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 155
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist isPresenceCapabilityChanged(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;",
            ">;)Z"
        }
    .end annotation

    .line 530
    .local p1, "capableFromReg":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ims/rcs/uce/presence/publish/ServiceDescription;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 531
    return v1

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    const/4 v0, 0x0

    return v0

    .line 537
    :cond_1
    return v1
.end method

.method public declared-synchronized blacklist isPresenceCapable()Z
    .locals 1

    monitor-enter p0

    .line 476
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPresenceCapable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 476
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist removeRegistrationOverrideCapabilities(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 357
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "override - remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideAddFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 359
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mOverrideRemoveFeatureTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 361
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 356
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist reset()V
    .locals 2

    monitor-enter p0

    .line 125
    :try_start_0
    const-string v0, "reset"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    .line 127
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    .line 128
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    .line 129
    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    .line 130
    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mTtyPreferredMode:I

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMobileData:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mVtSetting:Z

    .line 133
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 134
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    .line 135
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    .line 136
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 124
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist resetPresenceCapability()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;

    .line 509
    return-void
.end method

.method public blacklist setPresencePublishResult(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z

    .line 497
    if-eqz p1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 499
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 503
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;

    .line 504
    return-void
.end method

.method public declared-synchronized blacklist updateCapabilityRegistrationTrackerMap([Ljava/lang/String;)Z
    .locals 3
    .param p1, "newMap"    # [Ljava/lang/String;

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationFeatureTags()Ljava/util/Set;

    move-result-object v0

    .line 147
    .local v0, "oldTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->fromCarrierConfig([Ljava/lang/String;)Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    .line 148
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationOverrideFeatureTags:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->updateImsRegistration(Ljava/util/Set;)V

    .line 149
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mServiceCapRegTracker:Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->copyRegistrationFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 150
    .local v1, "changed":Z
    if-eqz v1, :cond_0

    const-string v2, "Carrier Config Change resulted in associated FT list change"

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    monitor-exit p0

    return v1

    .line 145
    .end local v0    # "oldTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "changed":Z
    .end local p1    # "newMap":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist updateImsMmtelRegistered(I)V
    .locals 3
    .param p1, "type"    # I

    monitor-enter p0

    .line 162
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "IMS MMTEL registered: original state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", changes type from "

    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V

    .line 168
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    if-nez v1, :cond_0

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    .line 172
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    if-eq v1, p1, :cond_1

    .line 173
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_1
    monitor-exit p0

    return-void

    .line 161
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local p1    # "type":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist updateImsMmtelUnregistered()Z
    .locals 2

    monitor-enter p0

    .line 181
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS MMTEL unregistered: original state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelRegistered:Z

    .line 185
    const/4 v0, 0x1

    .line 187
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    .line 188
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return v0

    .line 180
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist updateImsRcsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)Z
    .locals 4
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    monitor-enter p0

    .line 225
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "IMS RCS registered: original state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", changes type from "

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "changed":Z
    iget-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    if-nez v2, :cond_0

    .line 233
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    .line 234
    const/4 v1, 0x1

    .line 237
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 238
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v2

    iput v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    .line 239
    const/4 v1, 0x1

    .line 242
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    .line 243
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v1, v2

    .line 245
    monitor-exit p0

    return v1

    .line 224
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "changed":Z
    .end local p1    # "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist updateImsRcsUnregistered()Z
    .locals 2

    monitor-enter p0

    .line 252
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMS RCS unregistered: original state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logi(Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    if-eqz v1, :cond_0

    .line 255
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsRegistered:Z

    .line 256
    const/4 v0, 0x1

    .line 259
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    .line 260
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastRegistrationFeatureTags:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRegistration(Ljava/util/Set;)Z

    .line 261
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsNetworkRegType:I

    .line 262
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mLastSuccessfulCapabilities:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPendingPublishCapabilities:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return v0

    .line 251
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist updateMmTelAssociatedUri([Landroid/net/Uri;)V
    .locals 4
    .param p1, "uris"    # [Landroid/net/Uri;

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 198
    .local v0, "originalSize":I
    if-eqz p1, :cond_0

    .line 199
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 200
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 201
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    goto :goto_0

    .line 203
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelAssociatedUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 206
    .local v1, "currentSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMmTelAssociatedUri: size from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 196
    .end local v0    # "originalSize":I
    .end local v1    # "currentSize":I
    .end local p1    # "uris":[Landroid/net/Uri;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist updateMmtelCapabilitiesChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z
    .locals 13
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    monitor-enter p0

    .line 441
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 442
    monitor-exit p0

    return v0

    .line 444
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVolteAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v1

    .line 445
    .local v1, "oldVolteAvailable":Z
    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVoWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v2

    .line 446
    .local v2, "oldVoWifiAvailable":Z
    iget v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVtAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v3

    .line 447
    .local v3, "oldVtAvailable":Z
    iget v4, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v4, v5}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isViWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v4

    .line 448
    .local v4, "oldViWifiAvailable":Z
    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {p0, v5}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isCallComposerAvailable(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v5

    .line 450
    .local v5, "oldCallComposerAvailable":Z
    iget v6, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-direct {p0, v6, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVolteAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v6

    .line 451
    .local v6, "volteAvailable":Z
    iget v7, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-direct {p0, v7, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVoWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v7

    .line 452
    .local v7, "voWifiAvailable":Z
    iget v8, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-direct {p0, v8, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isVtAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v8

    .line 453
    .local v8, "vtAvailable":Z
    iget v9, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmtelNetworkRegType:I

    invoke-direct {p0, v9, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isViWifiAvailable(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v9

    .line 454
    .local v9, "viWifiAvailable":Z
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isCallComposerAvailable(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v10

    .line 456
    .local v10, "callComposerAvailable":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateMmtelCapabilitiesChanged: from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 459
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->deepCopyCapabilities(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v11

    iput-object v11, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMmTelCapabilities:Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    if-ne v1, v6, :cond_2

    if-ne v2, v7, :cond_2

    if-ne v3, v8, :cond_2

    if-ne v4, v9, :cond_2

    if-eq v5, v10, :cond_1

    goto :goto_0

    .line 468
    :cond_1
    monitor-exit p0

    return v0

    .line 466
    :cond_2
    :goto_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 440
    .end local v1    # "oldVolteAvailable":Z
    .end local v2    # "oldVoWifiAvailable":Z
    .end local v3    # "oldVtAvailable":Z
    .end local v4    # "oldViWifiAvailable":Z
    .end local v5    # "oldCallComposerAvailable":Z
    .end local v6    # "volteAvailable":Z
    .end local v7    # "voWifiAvailable":Z
    .end local v8    # "vtAvailable":Z
    .end local v9    # "viWifiAvailable":Z
    .end local v10    # "callComposerAvailable":Z
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist updateMobileData(Z)Z
    .locals 2
    .param p1, "mobileData"    # Z

    monitor-enter p0

    .line 415
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMobileData:Z

    if-eq v0, p1, :cond_0

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile data changes from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMobileData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 417
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mMobileData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 420
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 414
    .end local p1    # "mobileData":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist updatePresenceCapable(Z)V
    .locals 0
    .param p1, "isCapable"    # Z

    monitor-enter p0

    .line 472
    :try_start_0
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mPresenceCapable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 471
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .end local p1    # "isCapable":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist updateRcsAssociatedUri([Landroid/net/Uri;)V
    .locals 4
    .param p1, "uris"    # [Landroid/net/Uri;

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 272
    .local v0, "originalSize":I
    if-eqz p1, :cond_0

    .line 273
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 274
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 275
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    goto :goto_0

    .line 277
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mRcsAssociatedUris:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 280
    .local v1, "currentSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRcsAssociatedUri: size from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 270
    .end local v0    # "originalSize":I
    .end local v1    # "currentSize":I
    .end local p1    # "uris":[Landroid/net/Uri;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist updateTtyPreferredMode(I)Z
    .locals 2
    .param p1, "ttyMode"    # I

    monitor-enter p0

    .line 402
    :try_start_0
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mTtyPreferredMode:I

    if-eq v0, p1, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTY preferred mode changes from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mTtyPreferredMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 404
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mTtyPreferredMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 407
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 401
    .end local p1    # "ttyMode":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist updateVtSetting(Z)Z
    .locals 2
    .param p1, "vtSetting"    # Z

    monitor-enter p0

    .line 428
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mVtSetting:Z

    if-eq v0, p1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT setting changes from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mVtSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->logd(Ljava/lang/String;)V

    .line 430
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->mVtSetting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 433
    .end local p0    # "this":Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 427
    .end local p1    # "vtSetting":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
