.class public Lcom/android/internal/telephony/data/CidManager;
.super Ljava/lang/Object;
.source "CidManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/CidManager$ConnectionId;
    }
.end annotation


# static fields
.field private static final blacklist mConnectionIdLock:Ljava/lang/Object;


# instance fields
.field private blacklist LOG_TAG:Ljava/lang/String;

.field private blacklist mAttachDataProfile:Landroid/telephony/data/DataProfile;

.field private blacklist mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

.field private blacklist mEndVal:I

.field private blacklist mInitialVal:I

.field private final blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mLastAllocatedCid:[I

.field private blacklist mMaxInterfaceCount:I

.field private blacklist mMaxInterfaceCountForSlot:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneId:I

.field private blacklist mSimCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetLOG_TAG(Lcom/android/internal/telephony/data/CidManager;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxInterfaceCountForSlot(Lcom/android/internal/telephony/data/CidManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCountForSlot:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/data/CidManager;->mConnectionIdLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 6

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v1, Lcom/android/internal/telephony/data/CidManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/CidManager$1;-><init>(Lcom/android/internal/telephony/data/CidManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/CidManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/data/CidManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 125
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/CidManager;->mPhoneId:I

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CidManager"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/CidManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/data/CidManager;->mAttachDataProfile:Landroid/telephony/data/DataProfile;

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/CidManager;->init()V

    .line 130
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    const-string p1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/android/internal/telephony/data/CidManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/data/CidManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private blacklist updateInitialValue()V
    .locals 4

    .line 141
    const-string v0, "ril.max_interface0"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCountForSlot:I

    .line 143
    iget v2, p0, Lcom/android/internal/telephony/data/CidManager;->mSimCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-ne v0, v1, :cond_0

    add-int/2addr v0, v3

    .line 144
    iput v0, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCountForSlot:I

    .line 146
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCountForSlot:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCount:I

    .line 147
    sget-object v0, Lcom/android/internal/telephony/data/CidManager;->mConnectionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iput v3, p0, Lcom/android/internal/telephony/data/CidManager;->mInitialVal:I

    .line 149
    iget v1, p0, Lcom/android/internal/telephony/data/CidManager;->mPhoneId:I

    if-eqz v1, :cond_1

    .line 150
    iget v2, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCountForSlot:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/data/CidManager;->mInitialVal:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 152
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget v0, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCountForSlot:I

    iput v0, p0, Lcom/android/internal/telephony/data/CidManager;->mEndVal:I

    if-eqz v1, :cond_2

    add-int/2addr v1, v3

    mul-int/2addr v0, v1

    .line 155
    iput v0, p0, Lcom/android/internal/telephony/data/CidManager;->mEndVal:I

    :cond_2
    return-void

    .line 152
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist allocateCid(Landroid/telephony/data/DataProfile;IIII)I
    .locals 8

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager;->mAttachDataProfile:Landroid/telephony/data/DataProfile;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 210
    invoke-virtual {p1, v0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p1, v1}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object p1, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    const-string p2, "allocateCid: attach apn not loaded, return mMaxInterfaceCount"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget p0, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCount:I

    return p0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocateCid: profile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", requestReason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", transport : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", phoneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/android/internal/telephony/data/CidManager;->updateInitialValue()V

    .line 222
    sget-object v0, Lcom/android/internal/telephony/data/CidManager;->mConnectionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/data/CidManager;->mEndVal:I

    iget-object v3, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    array-length v3, v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    .line 225
    iget v2, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCount:I

    new-array v3, v2, [Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    move v5, v4

    .line 226
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    array-length v7, v6

    if-ge v5, v7, :cond_1

    .line 227
    aget-object v6, v6, v5

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_e

    .line 231
    :cond_1
    array-length v5, v6

    :goto_1
    if-ge v5, v2, :cond_2

    .line 232
    new-instance v6, Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    invoke-direct {v6}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;-><init>()V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 235
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    .line 237
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    iget v0, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCount:I

    .line 241
    sget-object v2, Lcom/android/internal/telephony/data/CidManager;->mConnectionIdLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x3

    const/4 v5, 0x1

    if-ne p2, v3, :cond_6

    .line 243
    :try_start_1
    iget p2, p0, Lcom/android/internal/telephony/data/CidManager;->mInitialVal:I

    :goto_2
    iget p4, p0, Lcom/android/internal/telephony/data/CidManager;->mEndVal:I

    if-gt p2, p4, :cond_11

    if-ne p3, v5, :cond_4

    .line 246
    iget-object p4, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object p4, p4, p2

    const/4 v1, 0x2

    invoke-virtual {p4, v1}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->getDataProfile(I)Landroid/telephony/data/DataProfile;

    move-result-object p4

    goto :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_d

    .line 249
    :cond_4
    iget-object p4, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object p4, p4, p2

    invoke-virtual {p4, v5}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->getDataProfile(I)Landroid/telephony/data/DataProfile;

    move-result-object p4

    .line 255
    :goto_3
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p4, :cond_5

    .line 256
    invoke-virtual {p4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 257
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-virtual {p4}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p4

    invoke-virtual {p4}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p4

    .line 257
    invoke-static {v1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 259
    iget-object p4, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allocateCid: handover, use already allocated cid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p4, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object p4, p4, p2

    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager;->mAttachDataProfile:Landroid/telephony/data/DataProfile;

    .line 262
    invoke-virtual {p1, v0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 261
    invoke-virtual {p4, p5, p3, p1, v0}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->allocate(IILandroid/telephony/data/DataProfile;Z)V

    move v0, p2

    goto/16 :goto_c

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 267
    :cond_6
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/data/CidManager;->is1xEvdo(I)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "LGT"

    .line 268
    invoke-static {p5}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    if-ne p3, v5, :cond_7

    .line 270
    iget-object p2, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    const-string p4, "allocateCid: cdma cid is next attach Cid "

    invoke-static {p2, p4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p2, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    iget p4, p0, Lcom/android/internal/telephony/data/CidManager;->mInitialVal:I

    add-int/2addr p4, v5

    aget-object p2, p2, p4

    invoke-virtual {p2, p5, p3, p1, v4}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->allocate(IILandroid/telephony/data/DataProfile;Z)V

    .line 272
    iget p2, p0, Lcom/android/internal/telephony/data/CidManager;->mInitialVal:I

    add-int/2addr p2, v5

    :goto_4
    move p4, v4

    goto/16 :goto_a

    .line 275
    :cond_7
    iget-object p2, p0, Lcom/android/internal/telephony/data/CidManager;->mAttachDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1, p2}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_5

    .line 277
    :cond_8
    iget-object p2, p0, Lcom/android/internal/telephony/data/CidManager;->mAttachDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz p2, :cond_9

    .line 278
    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/internal/telephony/data/CidManager;->mAttachDataProfile:Landroid/telephony/data/DataProfile;

    .line 279
    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 280
    invoke-virtual {p1, v1}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 284
    :goto_5
    iget-object p2, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allocateCid: attach apn cid "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/data/CidManager;->mInitialVal:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p2, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    iget p4, p0, Lcom/android/internal/telephony/data/CidManager;->mInitialVal:I

    aget-object p2, p2, p4

    invoke-virtual {p2, p5, p3, p1, v5}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->allocate(IILandroid/telephony/data/DataProfile;Z)V

    .line 286
    iget v0, p0, Lcom/android/internal/telephony/data/CidManager;->mInitialVal:I

    goto :goto_7

    .line 288
    :cond_9
    iget p2, p0, Lcom/android/internal/telephony/data/CidManager;->mInitialVal:I

    add-int/2addr p2, v5

    :goto_6
    iget p4, p0, Lcom/android/internal/telephony/data/CidManager;->mEndVal:I

    if-gt p2, p4, :cond_b

    .line 289
    iget-object p4, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object p4, p4, p2

    invoke-virtual {p4, p3}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->getDataProfile(I)Landroid/telephony/data/DataProfile;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object p4, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object p4, p4, p2

    .line 290
    invoke-virtual {p4, p3}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->getSlotId(I)I

    move-result p4

    if-ne p4, p5, :cond_a

    iget-object p4, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object p4, p4, p2

    .line 291
    invoke-virtual {p4, p3}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->isAllocated(I)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 292
    iget-object p4, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allocateCid: re-use allocated cid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p2

    goto :goto_7

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 300
    :cond_b
    :goto_7
    iget p2, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCount:I

    if-ne v0, p2, :cond_f

    .line 301
    iget p2, p0, Lcom/android/internal/telephony/data/CidManager;->mInitialVal:I

    add-int/2addr p2, v5

    move p4, v4

    :goto_8
    iget v1, p0, Lcom/android/internal/telephony/data/CidManager;->mEndVal:I

    if-gt p2, v1, :cond_e

    .line 302
    iget-object v1, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->isAllocated()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_9

    .line 306
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/data/CidManager;->mLastAllocatedCid:[I

    aget v1, v1, p5

    if-ne v1, p2, :cond_d

    move p4, v5

    :goto_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 311
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocateCid: use free cid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object v0, v0, p2

    invoke-virtual {v0, p5, p3, p1, v4}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->allocate(IILandroid/telephony/data/DataProfile;Z)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager;->mLastAllocatedCid:[I

    aput p2, v0, p5

    goto :goto_a

    :cond_e
    move p2, v0

    goto :goto_a

    :cond_f
    move p2, v0

    goto/16 :goto_4

    .line 320
    :goto_a
    iget v0, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCount:I

    if-ne p2, v0, :cond_10

    if-eqz p4, :cond_10

    .line 321
    iget-object p4, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager;->mLastAllocatedCid:[I

    aget v0, v0, p5

    aget-object p4, p4, v0

    invoke-virtual {p4, p3}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->isAllocated(I)Z

    move-result p4

    if-nez p4, :cond_10

    iget-object p4, p0, Lcom/android/internal/telephony/data/CidManager;->mLastAllocatedCid:[I

    aget p4, p4, p5

    .line 322
    invoke-virtual {p0, p4, p3}, Lcom/android/internal/telephony/data/CidManager;->isAttachCid(II)Z

    move-result p4

    if-nez p4, :cond_10

    .line 323
    iget-object p2, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allocateCid: use mLastAllocatedCid"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager;->mLastAllocatedCid:[I

    aget v0, v0, p5

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object p2, p0, Lcom/android/internal/telephony/data/CidManager;->mLastAllocatedCid:[I

    aget p2, p2, p5

    .line 326
    iget-object p4, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object p4, p4, p2

    invoke-virtual {p4, p5, p3, p1, v4}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->allocate(IILandroid/telephony/data/DataProfile;Z)V

    :cond_10
    move v0, p2

    .line 330
    iget p1, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCount:I

    if-ne v0, p1, :cond_11

    .line 331
    iget-object p1, p0, Lcom/android/internal/telephony/data/CidManager;->mLastAllocatedCid:[I

    const/4 p2, -0x1

    aput p2, p1, p5

    .line 332
    iget-object p1, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    const-string p2, "allocateCid: No free cid, dump cids"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_b
    iget p1, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCount:I

    if-ge v5, p1, :cond_11

    .line 334
    iget-object p1, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "allocateCid: mConnectionId["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object p3, p3, v5

    .line 335
    invoke-virtual {p3}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 334
    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 339
    :cond_11
    :goto_c
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 341
    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "allocateCid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 339
    :goto_d
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 237
    :goto_e
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public blacklist dispose()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public blacklist getAttachDataProfile()Landroid/telephony/data/DataProfile;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager;->mAttachDataProfile:Landroid/telephony/data/DataProfile;

    return-object p0
.end method

.method public blacklist init()V
    .locals 5

    .line 160
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/CidManager;->mSimCount:I

    .line 161
    invoke-direct {p0}, Lcom/android/internal/telephony/data/CidManager;->updateInitialValue()V

    .line 162
    iget v0, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCount:I

    new-array v0, v0, [Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    iput-object v0, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    const/4 v0, 0x0

    move v1, v0

    .line 163
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCount:I

    if-ge v1, v2, :cond_0

    .line 164
    sget-object v2, Lcom/android/internal/telephony/data/CidManager;->mConnectionIdLock:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    new-instance v4, Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;-><init>()V

    aput-object v4, v3, v1

    .line 166
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 168
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/data/CidManager;->mSimCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/data/CidManager;->mLastAllocatedCid:[I

    .line 169
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/data/CidManager;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 170
    sget-object v1, Lcom/android/internal/telephony/data/CidManager;->mConnectionIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/data/CidManager;->mLastAllocatedCid:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 172
    monitor-exit v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_1
    return-void
.end method

.method public blacklist is1xEvdo(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_1

    const/16 p0, 0xc

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isAttachCid(II)Z
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->isAttachCid(I)Z

    move-result p0

    return p0
.end method

.method public blacklist releaseCid(I)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/data/CidManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseCid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    .line 182
    iget v0, p0, Lcom/android/internal/telephony/data/CidManager;->mMaxInterfaceCount:I

    if-ge p1, v0, :cond_0

    .line 183
    sget-object v0, Lcom/android/internal/telephony/data/CidManager;->mConnectionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->release(I)V

    .line 185
    iget-object p0, p0, Lcom/android/internal/telephony/data/CidManager;->mConnectionId:[Lcom/android/internal/telephony/data/CidManager$ConnectionId;

    aget-object p0, p0, p1

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/CidManager$ConnectionId;->release(I)V

    .line 186
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public blacklist updateInitialAttachDataProfile(Landroid/telephony/data/DataProfile;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/internal/telephony/data/CidManager;->mAttachDataProfile:Landroid/telephony/data/DataProfile;

    return-void
.end method
