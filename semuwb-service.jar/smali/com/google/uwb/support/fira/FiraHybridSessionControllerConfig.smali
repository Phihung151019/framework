.class public Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;
.super Lcom/google/uwb/support/fira/FiraParams;
.source "FiraHybridSessionControllerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;,
        Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final EXTENDED_MAC_ADDRESS:I = 0x1

.field public static final KEY_BUNDLE_VERSION:Ljava/lang/String; = "bundle_version"

.field public static final KEY_MESSAGE_CONTROL:Ljava/lang/String; = "message_control"

.field public static final KEY_NUMBER_OF_PHASES:Ljava/lang/String; = "number_of_phases"

.field public static final KEY_PHASE_LIST:Ljava/lang/String; = "phase_list"

.field public static final KEY_UPDATE_TIME:Ljava/lang/String; = "update_time"

.field private static final PHASE_LIST_SIZE:I = 0x14

.field private static final SHORT_MAC_ADDRESS:I


# instance fields
.field private final mNumberOfPhases:I

.field private final mPhaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "numberOfPhases"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p2, "phaseList":Ljava/util/List;, "Ljava/util/List<Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;>;"
    invoke-direct {p0}, Lcom/google/uwb/support/fira/FiraParams;-><init>()V

    .line 64
    iput p1, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->mNumberOfPhases:I

    .line 65
    iput-object p2, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->mPhaseList:Ljava/util/List;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(ILjava/util/List;Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$1;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;-><init>(ILjava/util/List;)V

    return-void
.end method

.method private static byteArrayToIntArray([B)[I
    .locals 3
    .param p0, "bytes"    # [B

    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 76
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 77
    aget-byte v2, p0, v1

    aput v2, v0, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 114
    const-string v0, "bundle_version"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static intArrayToByteArray([I)[B
    .locals 3
    .param p0, "values"    # [I

    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 88
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 89
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;
    .locals 14
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 123
    new-instance v0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;-><init>()V

    .line 126
    .local v0, "builder":Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;
    const-string v1, "number_of_phases"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, "numberOfPhases":I
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;->setNumberOfPhases(I)Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;

    .line 129
    const-string v2, "phase_list"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {v2}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->intArrayToByteArray([I)[B

    move-result-object v2

    .line 130
    .local v2, "phaseByteArray":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 131
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 133
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 134
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 135
    .local v6, "sessionId":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 136
    .local v7, "startSlotIndex":S
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 137
    .local v8, "endSlotIndex":S
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-byte v9, v5

    .line 138
    .local v9, "messageControl":B
    and-int/lit8 v5, v9, 0x1

    if-nez v5, :cond_0

    .line 139
    const/4 v5, 0x2

    goto :goto_1

    .line 140
    :cond_0
    const/16 v5, 0x8

    :goto_1
    move v11, v5

    .line 142
    .local v11, "addressLength":I
    new-instance v5, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;

    .line 147
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    invoke-static {v12, v13, v11}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->longToUwbAddress(JI)Landroid/uwb/UwbAddress;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;-><init>(ISSBLandroid/uwb/UwbAddress;)V

    .line 150
    .local v5, "mFiraHybridSessionPhaseList":Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;
    invoke-virtual {v0, v5}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;->addPhaseList(Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;)Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;

    .line 133
    .end local v5    # "mFiraHybridSessionPhaseList":Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;
    .end local v6    # "sessionId":I
    .end local v7    # "startSlotIndex":S
    .end local v8    # "endSlotIndex":S
    .end local v9    # "messageControl":B
    .end local v11    # "addressLength":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v0}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$Builder;->build()Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getBundleVersion()I
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public getNumberOfPhases()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->mNumberOfPhases:I

    return v0
.end method

.method public getPhaseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->mPhaseList:Ljava/util/List;

    return-object v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 6

    .line 95
    invoke-super {p0}, Lcom/google/uwb/support/fira/FiraParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 96
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "bundle_version"

    invoke-virtual {p0}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->getBundleVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v1, "number_of_phases"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->mNumberOfPhases:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    iget v1, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->mNumberOfPhases:I

    mul-int/lit8 v1, v1, 0x14

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 100
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 101
    iget-object v2, p0, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->mPhaseList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;

    .line 102
    .local v3, "phaseList":Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->getSessionId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->getStartSlotIndex()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->getEndSlotIndex()S

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->getMessageControl()B

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;->getMacAddress()Landroid/uwb/UwbAddress;

    move-result-object v4

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->uwbAddressToLong(Landroid/uwb/UwbAddress;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 107
    .end local v3    # "phaseList":Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig$FiraHybridSessionPhaseList;
    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/uwb/support/fira/FiraHybridSessionControllerConfig;->byteArrayToIntArray([B)[I

    move-result-object v2

    const-string v3, "phase_list"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 110
    return-object v0
.end method
