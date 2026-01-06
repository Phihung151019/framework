.class public final Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;
.super Ljava/lang/Object;
.source "TestConfigParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mTestConfigSet:Ljava/util/HashSet;
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

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->mTestConfigSet:Ljava/util/HashSet;

    .line 132
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

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->mTestConfigSet:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setNumOfPackets(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;
    .locals 6
    .param p1, "numOfPackets"    # I

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "tag":B
    const/4 v1, 0x4

    .line 137
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 138
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 139
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->mTestConfigSet:Ljava/util/HashSet;

    new-instance v4, Lcom/samsung/uwb/support/data/param/testconfig/NumPackets;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v4, v0, v1, v5}, Lcom/samsung/uwb/support/data/param/testconfig/NumPackets;-><init>(BI[B)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    return-object p0
.end method

.method public setPhrRangingBit(B)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;
    .locals 6
    .param p1, "phrRangingBit"    # B

    .line 180
    const/4 v0, 0x5

    .line 181
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 182
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 183
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 184
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->mTestConfigSet:Ljava/util/HashSet;

    new-instance v4, Lcom/samsung/uwb/support/data/param/testconfig/PhrRangingBit;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v4, v0, v1, v5}, Lcom/samsung/uwb/support/data/param/testconfig/PhrRangingBit;-><init>(BI[B)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    return-object p0
.end method

.method public setRandomPsduSize(B)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;
    .locals 6
    .param p1, "randomPsduSize"    # B

    .line 171
    const/4 v0, 0x4

    .line 172
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 173
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 174
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 175
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->mTestConfigSet:Ljava/util/HashSet;

    new-instance v4, Lcom/samsung/uwb/support/data/param/testconfig/RandomizePsdu;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v4, v0, v1, v5}, Lcom/samsung/uwb/support/data/param/testconfig/RandomizePsdu;-><init>(BI[B)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    return-object p0
.end method

.method public setRmarkerRxStart(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;
    .locals 6
    .param p1, "rmarkerRxStart"    # I

    .line 198
    const/4 v0, 0x7

    .line 199
    .local v0, "tag":B
    const/4 v1, 0x4

    .line 200
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 201
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 202
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->mTestConfigSet:Ljava/util/HashSet;

    new-instance v4, Lcom/samsung/uwb/support/data/param/testconfig/RmarkerRxStart;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v4, v0, v1, v5}, Lcom/samsung/uwb/support/data/param/testconfig/RmarkerRxStart;-><init>(BI[B)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 203
    return-object p0
.end method

.method public setRmarkerTxStart(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;
    .locals 6
    .param p1, "rmarkerTxStart"    # I

    .line 189
    const/4 v0, 0x6

    .line 190
    .local v0, "tag":B
    const/4 v1, 0x4

    .line 191
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 192
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 193
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->mTestConfigSet:Ljava/util/HashSet;

    new-instance v4, Lcom/samsung/uwb/support/data/param/testconfig/RmarkerTxStart;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v4, v0, v1, v5}, Lcom/samsung/uwb/support/data/param/testconfig/RmarkerTxStart;-><init>(BI[B)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    return-object p0
.end method

.method public setStsIndexAutoInc(B)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;
    .locals 6
    .param p1, "stsIndexAutoInc"    # B

    .line 208
    const/16 v0, 0x8

    .line 209
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 210
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 211
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 212
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->mTestConfigSet:Ljava/util/HashSet;

    new-instance v4, Lcom/samsung/uwb/support/data/param/testconfig/StsIndexAutoIncrease;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v4, v0, v1, v5}, Lcom/samsung/uwb/support/data/param/testconfig/StsIndexAutoIncrease;-><init>(BI[B)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 213
    return-object p0
.end method

.method public setTGap(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;
    .locals 6
    .param p1, "tGap"    # I

    .line 144
    const/4 v0, 0x1

    .line 145
    .local v0, "tag":B
    const/4 v1, 0x4

    .line 146
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 147
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 148
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->mTestConfigSet:Ljava/util/HashSet;

    new-instance v4, Lcom/samsung/uwb/support/data/param/testconfig/Tgap;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v4, v0, v1, v5}, Lcom/samsung/uwb/support/data/param/testconfig/Tgap;-><init>(BI[B)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    return-object p0
.end method

.method public setTStart(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;
    .locals 6
    .param p1, "tStart"    # I

    .line 153
    const/4 v0, 0x2

    .line 154
    .local v0, "tag":B
    const/4 v1, 0x4

    .line 155
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 156
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 157
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->mTestConfigSet:Ljava/util/HashSet;

    new-instance v4, Lcom/samsung/uwb/support/data/param/testconfig/Tstart;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v4, v0, v1, v5}, Lcom/samsung/uwb/support/data/param/testconfig/Tstart;-><init>(BI[B)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    return-object p0
.end method

.method public setTWin(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;
    .locals 6
    .param p1, "tWin"    # I

    .line 162
    const/4 v0, 0x3

    .line 163
    .local v0, "tag":B
    const/4 v1, 0x4

    .line 164
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 165
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 166
    iget-object v3, p0, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->mTestConfigSet:Ljava/util/HashSet;

    new-instance v4, Lcom/samsung/uwb/support/data/param/testconfig/Twin;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v4, v0, v1, v5}, Lcom/samsung/uwb/support/data/param/testconfig/Twin;-><init>(BI[B)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    return-object p0
.end method
