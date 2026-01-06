.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAppData:[B

.field private final mBtMac:Ljava/lang/String;

.field private mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

.field private mDisplayName:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mModelCode:Ljava/lang/String;

.field private mModelName:Ljava/lang/String;

.field private mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

.field private mProximityConfigData:[B

.field private mResponseData:[B

.field private mSessionKey:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mBtMac:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mModelName:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mIp:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mBtMac:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final setAppData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mAppData:[B

    .line 2
    .line 3
    return-void
.end method

.method public final setCurContinuityDeviceState(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mCurContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    .line 2
    .line 3
    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mDisplayName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mIp:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setModelCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mModelCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setModelName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mModelName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPrevContinuityDeviceState(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mPrevContinuityDeviceState:Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    .line 2
    .line 3
    return-void
.end method

.method public final setProximityConfigData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mProximityConfigData:[B

    .line 2
    .line 3
    return-void
.end method

.method public final setResponseData([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mResponseData:[B

    .line 2
    .line 3
    return-void
.end method

.method public final setSessionKey([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->mSessionKey:[B

    .line 2
    .line 3
    return-void
.end method
