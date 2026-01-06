.class public Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;
.super Lcom/google/uwb/support/fira/FiraParams;
.source "FiraDataTransferPhaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;,
        Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_BUNDLE_VERSION:Ljava/lang/String; = "bundle_version"

.field private static final KEY_DATA_TRANSFER_CONTROL:Ljava/lang/String; = "data_transfer_control"

.field private static final KEY_DTPCM_REPETITION:Ljava/lang/String; = "dtpcm_repetition"

.field private static final KEY_MAC_ADDRESS_LIST:Ljava/lang/String; = "mac_address"

.field private static final KEY_SLOT_BITMAP:Ljava/lang/String; = "slot_bitmap"

.field private static final KEY_STOP_DATA_TRANSFER:Ljava/lang/String; = "stop_data_transfer"

.field private static final SHORT_MAC_ADDRESS:I


# instance fields
.field private final mDataTransferControl:B

.field private final mDataTransferPhaseManagementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;",
            ">;"
        }
    .end annotation
.end field

.field private final mDtpcmRepetition:B


# direct methods
.method private constructor <init>(BBLjava/util/List;)V
    .locals 0
    .param p1, "dtpcmRepetition"    # B
    .param p2, "dataTransferControl"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p3, "dataTransferPhaseManagementList":Ljava/util/List;, "Ljava/util/List<Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;>;"
    invoke-direct {p0}, Lcom/google/uwb/support/fira/FiraParams;-><init>()V

    .line 66
    iput-byte p1, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->mDtpcmRepetition:B

    .line 67
    iput-byte p2, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->mDataTransferControl:B

    .line 68
    iput-object p3, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->mDataTransferPhaseManagementList:Ljava/util/List;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(BBLjava/util/List;Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$1;)V
    .locals 0
    .param p1, "x0"    # B
    .param p2, "x1"    # B
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$1;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;-><init>(BBLjava/util/List;)V

    return-void
.end method

.method protected static byteArrayToIntArray([B)[I
    .locals 3
    .param p0, "bytes"    # [B

    .line 106
    if-nez p0, :cond_0

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 111
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 112
    aget-byte v2, p0, v1

    aput v2, v0, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 130
    const-string v0, "bundle_version"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected static intArrayToByteArray([I)[B
    .locals 3
    .param p0, "values"    # [I

    .line 119
    if-nez p0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 123
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 124
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;
    .locals 17
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 139
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;

    invoke-direct {v1}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;-><init>()V

    .line 141
    .local v1, "builder":Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;
    const-string v2, "dtpcm_repetition"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->setDtpcmRepetition(B)Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;

    .line 142
    const-string v2, "data_transfer_control"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    .line 143
    .local v2, "dataTransferControl":B
    and-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->setMacAddressMode(B)Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;

    .line 144
    and-int/lit8 v3, v2, 0xf

    const/4 v4, 0x1

    shr-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->setSlotBitmapSize(B)Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;

    .line 146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v3, "mDataTransferPhaseManagementList":Ljava/util/List;, "Ljava/util/List<Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v5, "macAddressList":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/UwbAddress;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v6, "slotBitmapList":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v7, "stopDataTransferList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const-string v8, "mac_address"

    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 152
    .local v8, "macAddress":[J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v8

    if-ge v9, v10, :cond_1

    .line 153
    aget-wide v10, v8, v9

    .line 154
    and-int/lit8 v12, v2, 0x1

    if-nez v12, :cond_0

    .line 155
    const/4 v12, 0x2

    goto :goto_1

    .line 156
    :cond_0
    const/16 v12, 0x8

    .line 153
    :goto_1
    invoke-static {v10, v11, v12}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->longToUwbAddress(JI)Landroid/uwb/UwbAddress;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 159
    .end local v9    # "i":I
    :cond_1
    const-string v9, "slot_bitmap"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    invoke-static {v9}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->intArrayToByteArray([I)[B

    move-result-object v9

    .line 160
    .local v9, "buffer":[B
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 161
    .local v10, "slotBitmapByteBuffer":Ljava/nio/ByteBuffer;
    shr-int/lit8 v11, v2, 0x1

    shl-int/2addr v4, v11

    .line 163
    .local v4, "chunkBufferSize":I
    :goto_2
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 164
    new-array v11, v4, [B

    .line 165
    .local v11, "data":[B
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 166
    .local v12, "bytesToRead":I
    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 167
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v11    # "data":[B
    .end local v12    # "bytesToRead":I
    goto :goto_2

    .line 170
    :cond_2
    const-string v11, "stop_data_transfer"

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v11

    invoke-static {v11}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->intArrayToByteArray([I)[B

    move-result-object v11

    .line 171
    .local v11, "stopBuffer":[B
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    array-length v13, v11

    if-ge v12, v13, :cond_3

    .line 172
    aget-byte v13, v11, v12

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 176
    .end local v12    # "i":I
    :cond_3
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_4

    .line 177
    new-instance v13, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;

    .line 178
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/uwb/UwbAddress;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Byte;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {v13, v14, v15, v0}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;-><init>(Landroid/uwb/UwbAddress;[BB)V

    .line 177
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_4

    .line 181
    .end local v12    # "i":I
    :cond_4
    invoke-virtual {v1, v3}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->setDataTransferPhaseManagementList(Ljava/util/List;)Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;

    .line 183
    invoke-virtual {v1}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$Builder;->build()Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBundleVersion()I
    .locals 1

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public getDataTransferControl()B
    .locals 1

    .line 57
    iget-byte v0, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->mDataTransferControl:B

    return v0
.end method

.method public getDataTransferPhaseManagementList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->mDataTransferPhaseManagementList:Ljava/util/List;

    return-object v0
.end method

.method public getDtpcmRepetition()B
    .locals 1

    .line 53
    iget-byte v0, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->mDtpcmRepetition:B

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 11

    .line 73
    invoke-super {p0}, Lcom/google/uwb/support/fira/FiraParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 74
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "bundle_version"

    invoke-virtual {p0}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->getBundleVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string v1, "dtpcm_repetition"

    iget-byte v2, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->mDtpcmRepetition:B

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v1, "data_transfer_control"

    iget-byte v2, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->mDataTransferControl:B

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->mDataTransferPhaseManagementList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 79
    .local v1, "dataTransferPhaseManagementListSize":I
    new-array v2, v1, [J

    .line 80
    .local v2, "macAddressList":[J
    const/4 v3, 0x0

    .line 81
    .local v3, "i":I
    iget-byte v4, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->mDataTransferControl:B

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x1

    shr-int/2addr v4, v5

    shl-int v4, v5, v4

    mul-int/2addr v4, v1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 84
    .local v4, "slotBitmapByteBuffer":Ljava/nio/ByteBuffer;
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    nop

    .line 86
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 89
    .local v5, "stopDataTransferBuffer":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->mDataTransferPhaseManagementList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;

    .line 90
    .local v7, "dataTransferPhaseManagementList":Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;
    add-int/lit8 v8, v3, 0x1

    .line 91
    .end local v3    # "i":I
    .local v8, "i":I
    invoke-virtual {v7}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;->getUwbAddress()Landroid/uwb/UwbAddress;

    move-result-object v9

    .line 90
    invoke-static {v9}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->uwbAddressToLong(Landroid/uwb/UwbAddress;)J

    move-result-wide v9

    aput-wide v9, v2, v3

    .line 92
    invoke-virtual {v7}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;->getSlotBitMap()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v7}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;->getStopDataTransfer()B

    move-result v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 94
    .end local v7    # "dataTransferPhaseManagementList":Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig$FiraDataTransferPhaseManagementList;
    move v3, v8

    goto :goto_0

    .line 96
    .end local v8    # "i":I
    .restart local v3    # "i":I
    :cond_0
    const-string v6, "mac_address"

    invoke-virtual {v0, v6, v2}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 97
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->byteArrayToIntArray([B)[I

    move-result-object v6

    const-string v7, "slot_bitmap"

    invoke-virtual {v0, v7, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 98
    nop

    .line 99
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 98
    invoke-static {v6}, Lcom/google/uwb/support/fira/FiraDataTransferPhaseConfig;->byteArrayToIntArray([B)[I

    move-result-object v6

    const-string v7, "stop_data_transfer"

    invoke-virtual {v0, v7, v6}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 101
    return-object v0
.end method
