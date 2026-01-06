.class public final Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;
.super Ljava/lang/Object;
.source "VendorAppConfigParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mVendorConfigSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->mVendorConfigSet:Ljava/util/HashSet;

    .line 115
    return-void
.end method


# virtual methods
.method public build()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->mVendorConfigSet:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setAntennaConfigurationRx(B[B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;
    .locals 7
    .param p1, "rxMode"    # B
    .param p2, "rxAntennas"    # [B

    .line 147
    const/4 v0, 0x3

    .line 148
    .local v0, "tag":B
    array-length v1, p2

    mul-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    .line 150
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 151
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 152
    array-length v3, p2

    int-to-byte v3, v3

    .line 153
    .local v3, "numOfRxAntennas":B
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 156
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 158
    .local v4, "payload":[B
    iget-object v5, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->mVendorConfigSet:Ljava/util/HashSet;

    new-instance v6, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;

    invoke-direct {v6, v0, v1, v4}, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationRx;-><init>(BI[B)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    return-object p0
.end method

.method public setAntennaConfigurationTx([B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;
    .locals 7
    .param p1, "txAntennas"    # [B

    .line 131
    const/4 v0, 0x2

    .line 132
    .local v0, "tag":B
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 134
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 135
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    array-length v3, p1

    int-to-byte v3, v3

    .line 136
    .local v3, "numOfTxAntennas":B
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 139
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 141
    .local v4, "payload":[B
    iget-object v5, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->mVendorConfigSet:Ljava/util/HashSet;

    new-instance v6, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;

    invoke-direct {v6, v0, v1, v4}, Lcom/samsung/uwb/support/data/param/vendorappconfig/AntennaConfigurationTx;-><init>(BI[B)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    return-object p0
.end method

.method public setCirLogNotification(B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;
    .locals 6
    .param p1, "cirLogNtfMode"    # B

    .line 164
    const/16 v0, 0x30

    .line 165
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 167
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 168
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 169
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 171
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->mVendorConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/vendorappconfig/CirLogNotification;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/vendorappconfig/CirLogNotification;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    return-object p0
.end method

.method public setMacPayloadEncryption(B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;
    .locals 6
    .param p1, "encryptMode"    # B

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 122
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 123
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 124
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 126
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->mVendorConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/vendorappconfig/MacPayloadEncryption;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/vendorappconfig/MacPayloadEncryption;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    return-object p0
.end method

.method public setPsduLogNotification(B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;
    .locals 6
    .param p1, "psduLogNtfMode"    # B

    .line 177
    const/16 v0, 0x31

    .line 178
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 180
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 181
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 182
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 184
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->mVendorConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/vendorappconfig/PsduLogNotification;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/vendorappconfig/PsduLogNotification;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    return-object p0
.end method

.method public setRssiAverageFilterCount(I)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;
    .locals 6
    .param p1, "filterCount"    # I

    .line 189
    const/16 v0, 0x40

    .line 190
    .local v0, "tag":B
    const/4 v1, 0x4

    .line 192
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 193
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 194
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 196
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->mVendorConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/vendorappconfig/RssiAverageFilterCount;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/vendorappconfig/RssiAverageFilterCount;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    return-object p0
.end method
