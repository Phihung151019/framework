.class public Lcom/google/uwb/support/ccc/CccRangingStartedParams;
.super Lcom/google/uwb/support/ccc/CccParams;
.source "CccRangingStartedParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_HOP_MODE_KEY:Ljava/lang/String; = "hop_mode_key"

.field private static final KEY_RAN_MULTIPLIER:Ljava/lang/String; = "ran_multiplier"

.field private static final KEY_STARTING_STS_INDEX:Ljava/lang/String; = "starting_sts_index"

.field private static final KEY_SYNC_CODE_INDEX:Ljava/lang/String; = "sync_code_index"

.field private static final KEY_UWB_TIME_0:Ljava/lang/String; = "uwb_time_0"


# instance fields
.field private final mHopModeKey:I

.field private final mRanMultiplier:I

.field private final mStartingStsIndex:I

.field private final mSyncCodeIndex:I

.field private final mUwbTime0:J


# direct methods
.method private constructor <init>(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;

    .line 52
    invoke-direct {p0}, Lcom/google/uwb/support/ccc/CccParams;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->access$000(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mStartingStsIndex:I

    .line 54
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->access$100(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mUwbTime0:J

    .line 55
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->access$200(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mHopModeKey:I

    .line 56
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->access$300(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mSyncCodeIndex:I

    .line 57
    invoke-static {p1}, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->access$400(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mRanMultiplier:I

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;Lcom/google/uwb/support/ccc/CccRangingStartedParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;
    .param p2, "x1"    # Lcom/google/uwb/support/ccc/CccRangingStartedParams$1;

    .line 36
    invoke-direct {p0, p1}, Lcom/google/uwb/support/ccc/CccRangingStartedParams;-><init>(Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccRangingStartedParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 77
    invoke-static {p0}, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccRangingStartedParams;

    move-result-object v0

    return-object v0

    .line 78
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

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccRangingStartedParams;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 91
    new-instance v0, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;-><init>()V

    .line 92
    const-string v1, "starting_sts_index"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->setStartingStsIndex(I)Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;

    move-result-object v0

    .line 93
    const-string v1, "uwb_time_0"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->setUwbTime0(J)Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;

    move-result-object v0

    .line 94
    const-string v1, "hop_mode_key"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->setHopModeKey(I)Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;

    move-result-object v0

    .line 95
    const-string v1, "sync_code_index"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->setSyncCodeIndex(I)Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;

    move-result-object v0

    .line 96
    const-string v1, "ran_multiplier"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->setRanMultiplier(I)Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/uwb/support/ccc/CccRangingStartedParams$Builder;->build()Lcom/google/uwb/support/ccc/CccRangingStartedParams;

    move-result-object v0

    .line 91
    return-object v0
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public getHopModeKey()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mHopModeKey:I

    return v0
.end method

.method public getRanMultiplier()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mRanMultiplier:I

    return v0
.end method

.method public getStartingStsIndex()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mStartingStsIndex:I

    return v0
.end method

.method public getSyncCodeIndex()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mSyncCodeIndex:I

    return v0
.end method

.method public getUwbTime0()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mUwbTime0:J

    return-wide v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 67
    invoke-super {p0}, Lcom/google/uwb/support/ccc/CccParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 68
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "starting_sts_index"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mStartingStsIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v1, "uwb_time_0"

    iget-wide v2, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mUwbTime0:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 70
    const-string v1, "hop_mode_key"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mHopModeKey:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v1, "sync_code_index"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mSyncCodeIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v1, "ran_multiplier"

    iget v2, p0, Lcom/google/uwb/support/ccc/CccRangingStartedParams;->mRanMultiplier:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 73
    return-object v0
.end method
