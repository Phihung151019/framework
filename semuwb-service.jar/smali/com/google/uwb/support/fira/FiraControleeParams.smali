.class public Lcom/google/uwb/support/fira/FiraControleeParams;
.super Lcom/google/uwb/support/fira/FiraParams;
.source "FiraControleeParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/fira/FiraControleeParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_ADDRESS_LIST:Ljava/lang/String; = "address_list"

.field private static final KEY_MAC_ADDRESS_MODE:Ljava/lang/String; = "mac_address_mode"

.field private static final KEY_SUB_SESSION_ID_LIST:Ljava/lang/String; = "sub_session_id_list"

.field private static final KEY_SUB_SESSION_KEY_LIST:Ljava/lang/String; = "sub_session_key_list"


# instance fields
.field private final mAction:I

.field private final mAddressList:[Landroid/uwb/UwbAddress;

.field private final mSubSessionIdList:[I

.field private final mSubSessionKeyList:[B


# direct methods
.method private constructor <init>(I[Landroid/uwb/UwbAddress;[I[B)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "addressList"    # [Landroid/uwb/UwbAddress;
    .param p3, "subSessionIdList"    # [I
    .param p4, "subSessionKeyList"    # [B

    .line 53
    invoke-direct {p0}, Lcom/google/uwb/support/fira/FiraParams;-><init>()V

    .line 54
    iput p1, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mAction:I

    .line 55
    iput-object p2, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mAddressList:[Landroid/uwb/UwbAddress;

    .line 56
    iput-object p3, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mSubSessionIdList:[I

    .line 57
    iput-object p4, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mSubSessionKeyList:[B

    .line 58
    return-void
.end method

.method synthetic constructor <init>(I[Landroid/uwb/UwbAddress;[I[BLcom/google/uwb/support/fira/FiraControleeParams$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [Landroid/uwb/UwbAddress;
    .param p3, "x2"    # [I
    .param p4, "x3"    # [B
    .param p5, "x4"    # Lcom/google/uwb/support/fira/FiraControleeParams$1;

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/uwb/support/fira/FiraControleeParams;-><init>(I[Landroid/uwb/UwbAddress;[I[B)V

    return-void
.end method

.method private static byteArrayToIntArray([B)[I
    .locals 3
    .param p0, "bytes"    # [B

    .line 90
    if-nez p0, :cond_0

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 95
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 96
    aget-byte v2, p0, v1

    aput v2, v0, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraControleeParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 136
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraControleeParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraControleeParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/fira/FiraControleeParams;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraControleeParams;

    move-result-object v0

    return-object v0

    .line 137
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

.method private static intArrayToByteArray([I)[B
    .locals 3
    .param p0, "values"    # [I

    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 107
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 108
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraControleeParams;
    .locals 9
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 150
    new-instance v0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;-><init>()V

    .line 151
    .local v0, "builder":Lcom/google/uwb/support/fira/FiraControleeParams$Builder;
    const-string v1, "action"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 152
    .local v1, "action":I
    const-string v2, "mac_address_mode"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 153
    .local v2, "macAddressMode":I
    const/4 v3, 0x2

    .line 154
    .local v3, "addressByteLength":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 155
    const/16 v3, 0x8

    .line 157
    :cond_0
    const-string v4, "address_list"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .line 158
    .local v4, "addresses":[J
    array-length v5, v4

    new-array v5, v5, [Landroid/uwb/UwbAddress;

    .line 159
    .local v5, "addressList":[Landroid/uwb/UwbAddress;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_1

    .line 160
    aget-wide v7, v4, v6

    invoke-static {v7, v8, v3}, Lcom/google/uwb/support/fira/FiraControleeParams;->longToUwbAddress(JI)Landroid/uwb/UwbAddress;

    move-result-object v7

    aput-object v7, v5, v6

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 162
    .end local v6    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->setAction(I)Lcom/google/uwb/support/fira/FiraControleeParams$Builder;

    .line 163
    invoke-virtual {v0, v5}, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->setAddressList([Landroid/uwb/UwbAddress;)Lcom/google/uwb/support/fira/FiraControleeParams$Builder;

    .line 164
    const-string v6, "sub_session_id_list"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->setSubSessionIdList([I)Lcom/google/uwb/support/fira/FiraControleeParams$Builder;

    .line 165
    nop

    .line 166
    const-string v6, "sub_session_key_list"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    invoke-static {v6}, Lcom/google/uwb/support/fira/FiraControleeParams;->intArrayToByteArray([I)[B

    move-result-object v6

    .line 165
    invoke-virtual {v0, v6}, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->setSubSessionKeyList([B)Lcom/google/uwb/support/fira/FiraControleeParams$Builder;

    .line 167
    invoke-virtual {v0}, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->build()Lcom/google/uwb/support/fira/FiraControleeParams;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mAction:I

    return v0
.end method

.method public getAddressList()[Landroid/uwb/UwbAddress;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mAddressList:[Landroid/uwb/UwbAddress;

    return-object v0
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public getSubSessionIdList()[I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mSubSessionIdList:[I

    return-object v0
.end method

.method public getSubSessionKeyList()[B
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mSubSessionKeyList:[B

    return-object v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 11

    .line 115
    invoke-super {p0}, Lcom/google/uwb/support/fira/FiraParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 116
    .local v0, "bundle":Landroid/os/PersistableBundle;
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mAddressList:[Landroid/uwb/UwbAddress;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "action"

    iget v2, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mAction:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 119
    iget-object v1, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mAddressList:[Landroid/uwb/UwbAddress;

    array-length v1, v1

    new-array v1, v1, [J

    .line 120
    .local v1, "addressList":[J
    const/4 v2, 0x0

    .line 121
    .local v2, "i":I
    iget-object v3, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mAddressList:[Landroid/uwb/UwbAddress;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 122
    .local v7, "address":Landroid/uwb/UwbAddress;
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    invoke-static {v7}, Lcom/google/uwb/support/fira/FiraControleeParams;->uwbAddressToLong(Landroid/uwb/UwbAddress;)J

    move-result-wide v9

    aput-wide v9, v1, v2

    .line 121
    .end local v7    # "address":Landroid/uwb/UwbAddress;
    add-int/lit8 v6, v6, 0x1

    move v2, v8

    goto :goto_0

    .line 124
    .end local v8    # "i":I
    .restart local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    .line 125
    .local v3, "macAddressMode":I
    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mAddressList:[Landroid/uwb/UwbAddress;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/uwb/UwbAddress;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 126
    const/4 v3, 0x2

    .line 128
    :cond_1
    const-string v4, "mac_address_mode"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 129
    const-string v4, "address_list"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 130
    const-string v4, "sub_session_id_list"

    iget-object v5, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mSubSessionIdList:[I

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 131
    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraControleeParams;->mSubSessionKeyList:[B

    invoke-static {v4}, Lcom/google/uwb/support/fira/FiraControleeParams;->byteArrayToIntArray([B)[I

    move-result-object v4

    const-string v5, "sub_session_key_list"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 132
    return-object v0
.end method
