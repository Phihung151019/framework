.class public Lcom/google/uwb/support/aliro/AliroRangingStartedParams;
.super Lcom/google/uwb/support/aliro/AliroParams;
.source "AliroRangingStartedParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;
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
.method private constructor <init>(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;

    .line 55
    invoke-direct {p0}, Lcom/google/uwb/support/aliro/AliroParams;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->access$000(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mStartingStsIndex:I

    .line 57
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->access$100(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mUwbTime0:J

    .line 58
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->access$200(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mHopModeKey:I

    .line 59
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->access$300(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mSyncCodeIndex:I

    .line 60
    invoke-static {p1}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->access$400(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;)Lcom/google/uwb/support/base/RequiredParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/base/RequiredParam;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mRanMultiplier:I

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;Lcom/google/uwb/support/aliro/AliroRangingStartedParams$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;
    .param p2, "x1"    # Lcom/google/uwb/support/aliro/AliroRangingStartedParams$1;

    .line 39
    invoke-direct {p0, p1}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;-><init>(Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroRangingStartedParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 80
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroRangingStartedParams;

    move-result-object v0

    return-object v0

    .line 81
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

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroRangingStartedParams;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 94
    new-instance v0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;-><init>()V

    .line 95
    const-string v1, "starting_sts_index"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->setStartingStsIndex(I)Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;

    move-result-object v0

    .line 96
    const-string v1, "uwb_time_0"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->setUwbTime0(J)Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;

    move-result-object v0

    .line 97
    const-string v1, "hop_mode_key"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->setHopModeKey(I)Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;

    move-result-object v0

    .line 98
    const-string v1, "sync_code_index"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->setSyncCodeIndex(I)Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;

    move-result-object v0

    .line 99
    const-string v1, "ran_multiplier"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->setRanMultiplier(I)Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/google/uwb/support/aliro/AliroRangingStartedParams$Builder;->build()Lcom/google/uwb/support/aliro/AliroRangingStartedParams;

    move-result-object v0

    .line 94
    return-object v0
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public getHopModeKey()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mHopModeKey:I

    return v0
.end method

.method public getRanMultiplier()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mRanMultiplier:I

    return v0
.end method

.method public getStartingStsIndex()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mStartingStsIndex:I

    return v0
.end method

.method public getSyncCodeIndex()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mSyncCodeIndex:I

    return v0
.end method

.method public getUwbTime0()J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mUwbTime0:J

    return-wide v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 70
    invoke-super {p0}, Lcom/google/uwb/support/aliro/AliroParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 71
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "starting_sts_index"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mStartingStsIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v1, "uwb_time_0"

    iget-wide v2, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mUwbTime0:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 73
    const-string v1, "hop_mode_key"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mHopModeKey:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v1, "sync_code_index"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mSyncCodeIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string v1, "ran_multiplier"

    iget v2, p0, Lcom/google/uwb/support/aliro/AliroRangingStartedParams;->mRanMultiplier:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    return-object v0
.end method
