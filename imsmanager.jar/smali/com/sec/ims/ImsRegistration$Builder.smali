.class public Lcom/sec/ims/ImsRegistration$Builder;
.super Ljava/lang/Object;
.source "ImsRegistration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ImsRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDeregiReason:I

.field protected mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomain:Ljava/lang/String;

.field private mEcmpStatus:I

.field private mEpdgOverCellularData:Z

.field private mEpdgStatus:Z

.field protected mHandle:I

.field protected mInstanceId:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkRttSupported:Z

.field private mPAssociatedUri2nd:Ljava/lang/String;

.field protected mPcscf:Ljava/lang/String;

.field protected mPdnType:I

.field protected mPhoneId:I

.field protected mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

.field protected mPrivateUserId:Ljava/lang/String;

.field protected mProfile:Lcom/sec/ims/settings/ImsProfile;

.field private mProhibited:Z

.field protected mPublicUserId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field protected mRat:I

.field private mRegExpiryStatus:I

.field private mRegisterSipResponse:Ljava/lang/String;

.field protected mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

.field mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubscriptionId:I

.field private mUuid:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeregiReason(Lcom/sec/ims/ImsRegistration$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeregiReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEcmpStatus(Lcom/sec/ims/ImsRegistration$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEcmpStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEpdgOverCellularData(Lcom/sec/ims/ImsRegistration$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEpdgOverCellularData:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEpdgStatus(Lcom/sec/ims/ImsRegistration$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEpdgStatus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/sec/ims/ImsRegistration$Builder;)Landroid/net/Network;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkRttSupported(Lcom/sec/ims/ImsRegistration$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mNetworkRttSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPAssociatedUri2nd(Lcom/sec/ims/ImsRegistration$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProhibited(Lcom/sec/ims/ImsRegistration$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mProhibited:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegExpiryStatus(Lcom/sec/ims/ImsRegistration$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegExpiryStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisterSipResponse(Lcom/sec/ims/ImsRegistration$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    .line 527
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mSubscriptionId:I

    const/4 v0, 0x0

    .line 528
    iput v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPhoneId:I

    .line 539
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mNetworkRttSupported:Z

    .line 540
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mProhibited:Z

    const/16 v0, 0xe

    .line 543
    iput v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeregiReason:I

    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 548
    new-instance v0, Lcom/sec/ims/ImsRegistration;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsRegistration;-><init>(Lcom/sec/ims/ImsRegistration$Builder;)V

    return-object v0
.end method

.method public setDeregiReason(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 663
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeregiReason:I

    return-object p0
.end method

.method public setDeviceList(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Lcom/sec/ims/ImsRegistration$Builder;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method public setEcmpStatus(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 633
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEcmpStatus:I

    return-object p0
.end method

.method public setEpdgOverCellularData(Z)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 648
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEpdgOverCellularData:Z

    return-object p0
.end method

.method public setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 643
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEpdgStatus:Z

    return-object p0
.end method

.method public setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 552
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mHandle:I

    return-object p0
.end method

.method public setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method public setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method public setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public setNetworkRttSupported(Z)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 653
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mNetworkRttSupported:Z

    return-object p0
.end method

.method public setPAssociatedUri2nd(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object p0
.end method

.method public setPcscf(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPcscf:Ljava/lang/String;

    return-object p0
.end method

.method public setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 623
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPdnType:I

    return-object p0
.end method

.method public setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 613
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPhoneId:I

    return-object p0
.end method

.method public setPreferredPublicUserId(Lcom/sec/ims/util/NameAddr;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    return-object p0
.end method

.method public setPrivateUserId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPrivateUserId:Ljava/lang/String;

    return-object p0
.end method

.method public setProhibited(Z)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 658
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mProhibited:Z

    return-object p0
.end method

.method public setPublicUserId(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Lcom/sec/ims/ImsRegistration$Builder;"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setRegExpiryStatus(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 638
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegExpiryStatus:I

    return-object p0
.end method

.method public setRegiRat(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 568
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRat:I

    return-object p0
.end method

.method public setRegisterSipResponse(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    return-object p0
.end method

.method public setRegisteredPublicUserId(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/ims/ImsRegistration$Builder;"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 563
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setSubscriptionId(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 608
    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mSubscriptionId:I

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mUuid:Ljava/lang/String;

    return-object p0
.end method
