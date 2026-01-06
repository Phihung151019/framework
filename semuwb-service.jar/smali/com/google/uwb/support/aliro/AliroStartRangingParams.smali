.class public Lcom/google/uwb/support/aliro/AliroStartRangingParams;
.super Lcom/google/uwb/support/aliro/AliroParams;
.source "AliroStartRangingParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_ABSOLUTE_INITIATION_TIME_US:Ljava/lang/String; = "absolute_initiation_time_us"

.field private static final KEY_INITIATION_TIME_MS:Ljava/lang/String; = "initiation_time_ms"

.field private static final KEY_RAN_MULTIPLIER:Ljava/lang/String; = "ran_multiplier"

.field private static final KEY_SESSION_ID:Ljava/lang/String; = "session_id"

.field private static final KEY_STS_INDEX:Ljava/lang/String; = "sts_index"


# instance fields
.field private final mAbsoluteInitiationTimeUs:J

.field private final mInitiationTimeMs:J

.field private final mRanMultiplier:I

.field private final mSessionId:I

.field private final mStsIndex:I


# direct methods
.method private constructor <init>(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;

    .line 59
    invoke-direct {p0}, Lcom/google/uwb/support/aliro/AliroParams;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->access$000(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mSessionId:I

    .line 61
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->access$100(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mRanMultiplier:I

    .line 62
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->access$200(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mInitiationTimeMs:J

    .line 63
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->access$300(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mAbsoluteInitiationTimeUs:J

    .line 64
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->access$400(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mStsIndex:I

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;Lcom/google/uwb/support/aliro/AliroStartRangingParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;
    .param p2, "x1"    # Lcom/google/uwb/support/aliro/AliroStartRangingParams$1;

    .line 36
    invoke-direct {p0, p1}, Lcom/google/uwb/support/aliro/AliroStartRangingParams;-><init>(Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroStartRangingParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 84
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroStartRangingParams;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroStartRangingParams;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 118
    new-instance v0, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;-><init>()V

    .line 119
    const-string v1, "session_id"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->setSessionId(I)Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;

    move-result-object v0

    .line 120
    const-string v1, "ran_multiplier"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->setRanMultiplier(I)Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;

    move-result-object v0

    .line 121
    const-string v1, "initiation_time_ms"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->setInitiationTimeMs(J)Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;

    move-result-object v0

    .line 122
    const-string v1, "absolute_initiation_time_us"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->setAbsoluteInitiationTimeUs(J)Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;

    move-result-object v0

    .line 123
    const-string v1, "sts_index"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->setStsIndex(I)Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/google/uwb/support/aliro/AliroStartRangingParams$Builder;->build()Lcom/google/uwb/support/aliro/AliroStartRangingParams;

    move-result-object v0

    .line 118
    return-object v0
.end method


# virtual methods
.method public getAbsoluteInitiationTimeUs()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mAbsoluteInitiationTimeUs:J

    return-wide v0
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public getInitiationTimeMs()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mInitiationTimeMs:J

    return-wide v0
.end method

.method public getRanMultiplier()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mRanMultiplier:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mSessionId:I

    return v0
.end method

.method public getStsIndex()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mStsIndex:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 74
    invoke-super {p0}, Lcom/google/uwb/support/aliro/AliroParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 75
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "session_id"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v1, "ran_multiplier"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mRanMultiplier:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v1, "initiation_time_ms"

    iget-wide v2, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mInitiationTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 78
    const-string v1, "absolute_initiation_time_us"

    iget-wide v2, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mAbsoluteInitiationTimeUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 79
    const-string v1, "sts_index"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroStartRangingParams;->mStsIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    return-object v0
.end method
