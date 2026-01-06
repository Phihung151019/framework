.class public Lcom/sec/ims/ImsRegistration;
.super Ljava/lang/Object;
.source "ImsRegistration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ImsRegistration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ImsRegistration"

.field public static final NETWORK_TYPE_MOBILE:I = 0x1

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x2

.field public static final SHIP_BUILD:Z


# instance fields
.field private mCurrentRat:I

.field private mDeregiReason:I

.field private final mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field private final mDomain:Ljava/lang/String;

.field private final mEcmpStatus:I

.field private mEpdgOverCellularData:Z

.field private mEpdgStatus:Z

.field private final mHandle:I

.field private mInitialRegistrationRat:I

.field private final mInstanceId:Ljava/lang/String;

.field private final mNetwork:Landroid/net/Network;

.field private mNetworkRttSupported:Z

.field private mPAssociatedUri2nd:Ljava/lang/String;

.field private final mPcscf:Ljava/lang/String;

.field private final mPdnType:I

.field private final mPhoneId:I

.field private final mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

.field private final mPrivateUserId:Ljava/lang/String;

.field private final mProfile:Lcom/sec/ims/settings/ImsProfile;

.field private mProhibited:Z

.field private final mPublicUserId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegExpiryStatus:I

.field private final mRegisterSipResponse:Ljava/lang/String;

.field private final mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

.field private final mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionId:I

.field private mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const-string v0, "ro.product_ship"

    const-string v1, "false"

    .line 77
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/ims/ImsRegistration;->SHIP_BUILD:Z

    .line 333
    new-instance v0, Lcom/sec/ims/ImsRegistration$1;

    invoke-direct {v0}, Lcom/sec/ims/ImsRegistration$1;-><init>()V

    sput-object v0, Lcom/sec/ims/ImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    const/16 v1, 0xe

    .line 69
    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 70
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    .line 348
    new-instance v1, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 349
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    .line 350
    invoke-direct {p0, p1}, Lcom/sec/ims/ImsRegistration;->readServices(Landroid/os/Parcel;)V

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    goto :goto_0

    .line 359
    :cond_0
    iput-object v2, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    .line 361
    :goto_0
    const-class v1, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v4, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 363
    sget-object v4, Lcom/sec/ims/util/NameAddr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    .line 365
    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    goto :goto_3

    .line 379
    :cond_3
    iput-object v2, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 381
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_4

    move v0, v3

    :cond_4
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    .line 382
    const-class v0, Landroid/net/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/ImsRegistration-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/ims/ImsRegistration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/ImsRegistration$Builder;)V
    .locals 1

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    const/16 v0, 0xe

    .line 69
    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    .line 429
    iget v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mHandle:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    .line 430
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 431
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    .line 432
    iget v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mRat:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    .line 433
    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    .line 434
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    .line 435
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mPrivateUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 436
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    .line 437
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    .line 438
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 439
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    .line 440
    iget v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mSubscriptionId:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    .line 441
    iget v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mPhoneId:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    .line 442
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mInstanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 443
    iget v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mPdnType:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    .line 444
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration$Builder;->mPcscf:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    .line 445
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmEcmpStatus(Lcom/sec/ims/ImsRegistration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    .line 446
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmRegExpiryStatus(Lcom/sec/ims/ImsRegistration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    .line 447
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmEpdgStatus(Lcom/sec/ims/ImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    .line 448
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmEpdgOverCellularData(Lcom/sec/ims/ImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    .line 449
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmNetworkRttSupported(Lcom/sec/ims/ImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    .line 450
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmProhibited(Lcom/sec/ims/ImsRegistration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    .line 451
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmRegisterSipResponse(Lcom/sec/ims/ImsRegistration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 452
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmNetwork(Lcom/sec/ims/ImsRegistration$Builder;)Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    .line 453
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmDeregiReason(Lcom/sec/ims/ImsRegistration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 454
    invoke-static {p1}, Lcom/sec/ims/ImsRegistration$Builder;->-$$Nest$fgetmPAssociatedUri2nd(Lcom/sec/ims/ImsRegistration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    const/16 v0, 0xe

    .line 69
    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    .line 400
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mHandle:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    .line 401
    new-instance v0, Lcom/sec/ims/settings/ImsProfile;

    iget-object v1, p1, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 402
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    .line 403
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    .line 404
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    .line 405
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    .line 406
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 407
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    .line 408
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    .line 411
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    .line 412
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    .line 413
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 414
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    .line 415
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    .line 416
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    .line 417
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    .line 418
    iget-boolean v0, p1, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    .line 419
    iget-boolean v0, p1, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    .line 420
    iget-boolean v0, p1, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    .line 421
    iget-boolean v0, p1, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    .line 422
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 423
    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    .line 424
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 425
    iget-object p1, p1, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/ImsRegistration;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/ImsRegistration;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    const/16 v0, 0xe

    .line 69
    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    .line 458
    iget v0, p1, Lcom/sec/ims/ImsRegistration;->mHandle:I

    iput v0, p0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    .line 459
    new-instance v0, Lcom/sec/ims/settings/ImsProfile;

    iget-object v1, p1, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 460
    iput-object p2, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    .line 461
    iget p2, p1, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    iput p2, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    .line 462
    iget p2, p1, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    iput p2, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    .line 463
    iget-object p2, p1, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    .line 464
    iget-object p2, p1, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    .line 465
    iget-object p2, p1, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    iput-object p2, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    .line 466
    iget-object p2, p1, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    iput-object p2, p0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    .line 467
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    .line 468
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    .line 469
    iget p2, p1, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    iput p2, p0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    .line 470
    iget p2, p1, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    iput p2, p0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    .line 471
    iget-object p2, p1, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    .line 472
    iget p2, p1, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    iput p2, p0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    .line 473
    iget-object p2, p1, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    .line 474
    iget p2, p1, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    iput p2, p0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    .line 475
    iget p2, p1, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    iput p2, p0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    .line 476
    iget-boolean p2, p1, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    iput-boolean p2, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    .line 477
    iget-boolean p2, p1, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    iput-boolean p2, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    .line 478
    iget-boolean p2, p1, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    iput-boolean p2, p0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    .line 479
    iget-boolean p2, p1, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    iput-boolean p2, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    .line 480
    iget-object p2, p1, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    .line 481
    iget-object p2, p1, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    iput-object p2, p0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    .line 482
    iget p2, p1, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    iput p2, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    .line 483
    iget-object p1, p1, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    return-void
.end method

.method public static getBuilder()Lcom/sec/ims/ImsRegistration$Builder;
    .locals 1

    .line 511
    new-instance v0, Lcom/sec/ims/ImsRegistration$Builder;

    invoke-direct {v0}, Lcom/sec/ims/ImsRegistration$Builder;-><init>()V

    return-object v0
.end method

.method private readServices(Landroid/os/Parcel;)V
    .locals 1

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 396
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private writeServices(Landroid/os/Parcel;)V
    .locals 1

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentRat()I
    .locals 0

    .line 268
    iget p0, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    return p0
.end method

.method public getDeregiReason()I
    .locals 0

    .line 252
    iget p0, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    return p0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getEcmpStatus()I
    .locals 0

    .line 176
    iget p0, p0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    return p0
.end method

.method public getEpdgStatus()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    return p0
.end method

.method public getHandle()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    return p0
.end method

.method public getImpi()Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    return-object p0
.end method

.method public getImpuList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getImsProfile()Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public getNetworkType()I
    .locals 0

    .line 211
    iget p0, p0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    return p0
.end method

.method public getOwnNumber()Ljava/lang/String;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPAssociatedUri2nd()Ljava/lang/String;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object p0
.end method

.method public getPcscf()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    return p0
.end method

.method public getPreferredImpu()Lcom/sec/ims/util/NameAddr;
    .locals 1

    .line 148
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sec/ims/util/NameAddr;

    const-string v0, ""

    invoke-direct {p0, v0, v0}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getRegiRat()I
    .locals 0

    .line 260
    iget p0, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    return p0
.end method

.method public getRegisterSipResponse()Ljava/lang/String;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    return-object p0
.end method

.method public getRegisteredImpu()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getServices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSubscriptionId()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    return p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public hasRcsService()Z
    .locals 2

    .line 125
    new-instance v0, Ljava/util/HashSet;

    .line 126
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 128
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public hasService(Ljava/lang/String;)Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasVolteService()Z
    .locals 2

    .line 117
    new-instance v0, Ljava/util/HashSet;

    .line 118
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 119
    const-string v1, "cdpn"

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public isEpdgOverCellularData()Z
    .locals 0

    .line 195
    iget-boolean p0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    return p0
.end method

.method public isImsiBased(Ljava/lang/String;)Z
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNetworkRttSupported()Z
    .locals 0

    .line 203
    iget-boolean p0, p0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    return p0
.end method

.method public isProhibited()Z
    .locals 0

    .line 225
    iget-boolean p0, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    return p0
.end method

.method public setCurrentRat(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    return-void
.end method

.method public setDeregiReason(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    return-void
.end method

.method public setEpdgOverCellularData(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    return-void
.end method

.method public setEpdgStatus(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    return-void
.end method

.method public setNetworkRttSupported(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    return-void
.end method

.method public setPAssociatedUri2nd(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    return-void
.end method

.method public setProhibited(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    return-void
.end method

.method public setRegiRat(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    .line 488
    sget-boolean v1, Lcom/sec/ims/ImsRegistration;->SHIP_BUILD:Z

    const-string v2, "]"

    const-string v3, ", mDeregiReason ="

    const-string v4, ", mNetwork="

    const-string v5, ", mNetworkRttSupported="

    const-string v6, ", mProhibited="

    const-string v7, ", mEpdgOverCellularData="

    const-string v8, ", mEpdgStatus="

    const-string v9, ", mRegExpiryStatus="

    const-string v10, ", mEcmpStatus="

    const-string v11, ", mPcscf="

    const-string v12, ", mPdnType="

    const-string v13, ", mPhoneId="

    const-string v14, ", mSubscriptionId="

    const-string v15, ", mDeviceList="

    move/from16 v16, v1

    const-string v1, ", mDomain="

    move-object/from16 v17, v2

    const-string v2, ", mServices="

    const-string v18, "null"

    move-object/from16 v19, v3

    const-string v3, ", mProfile="

    move-object/from16 v20, v4

    const-string v4, "ImsRegistration [mHandle="

    if-eqz v16, :cond_1

    move-object/from16 v16, v5

    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v18

    :cond_0
    move-object/from16 v3, v18

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v16, v5

    .line 497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v18

    :cond_2
    move-object/from16 v3, v18

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/ims/ImsRegistration;->mServices:Ljava/util/Set;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrivateUserId="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRegisteredPublicUserId="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreferredPublicUserId="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPublicUserId="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInstanceId="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/ims/ImsRegistration;->mProhibited:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/sec/ims/ImsRegistration;->mDeregiReason:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 294
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/sec/ims/ImsRegistration;->writeServices(Landroid/os/Parcel;)V

    .line 297
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mInitialRegistrationRat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mCurrentRat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mSubscriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPrivateUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    :goto_0
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 309
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPublicUserId:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 310
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDeviceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 312
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mPcscf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mInstanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mPdnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mEcmpStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Lcom/sec/ims/ImsRegistration;->mRegExpiryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mEpdgOverCellularData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 322
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 324
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mRegisterSipResponse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    :goto_1
    iget-boolean v0, p0, Lcom/sec/ims/ImsRegistration;->mNetworkRttSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget-object v0, p0, Lcom/sec/ims/ImsRegistration;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 329
    iget-object p2, p0, Lcom/sec/ims/ImsRegistration;->mPAssociatedUri2nd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object p0, p0, Lcom/sec/ims/ImsRegistration;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
