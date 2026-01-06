.class Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;
.super Ljava/lang/Object;
.source "UpLinkTdoaMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpLinkTdoaMessageControl"
.end annotation


# instance fields
.field private final deviceIdLength:I

.field private final rxTimeStampLength:I

.field private final txTimeStampLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "control"    # I

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->deviceIdLength:I

    .line 217
    and-int/lit8 v0, p1, 0xc

    iput v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->txTimeStampLength:I

    .line 218
    and-int/lit8 v0, p1, 0x30

    iput v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->rxTimeStampLength:I

    .line 219
    return-void
.end method


# virtual methods
.method public getDeviceIdLength()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->deviceIdLength:I

    return v0
.end method

.method public getRxTimeStampLength()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->rxTimeStampLength:I

    return v0
.end method

.method public getTxTimeStampLength()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->txTimeStampLength:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 235
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 236
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    const-string v1, "INVALID"

    .line 237
    .local v1, "description":Ljava/lang/String;
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->deviceIdLength:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 238
    const-string v1, "Device ID Not Present"

    goto :goto_0

    .line 239
    :cond_0
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->deviceIdLength:I

    if-ne v2, v4, :cond_1

    .line 240
    const-string v1, "Device ID 16 BIT"

    goto :goto_0

    .line 241
    :cond_1
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->deviceIdLength:I

    if-ne v2, v3, :cond_2

    .line 242
    const-string v1, "Device ID 32 BIT"

    goto :goto_0

    .line 243
    :cond_2
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->deviceIdLength:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 244
    const-string v1, "Device ID 64 BIT"

    .line 246
    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 248
    const-string v1, "INVALID"

    .line 249
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->txTimeStampLength:I

    if-nez v2, :cond_4

    .line 250
    const-string v1, "TX timestamp not Present"

    goto :goto_1

    .line 251
    :cond_4
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->txTimeStampLength:I

    if-ne v2, v4, :cond_5

    .line 252
    const-string v1, "40-bit TX timestamp"

    goto :goto_1

    .line 253
    :cond_5
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->txTimeStampLength:I

    if-ne v2, v3, :cond_6

    .line 254
    const-string v1, "64-bit TX timestamp"

    .line 256
    :cond_6
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 258
    const-string v1, "INVALID"

    .line 259
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->rxTimeStampLength:I

    if-nez v2, :cond_7

    .line 260
    const-string v1, "40-bit RX timestamp"

    goto :goto_2

    .line 261
    :cond_7
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->rxTimeStampLength:I

    if-ne v2, v4, :cond_8

    .line 262
    const-string v1, "64-bit RX timestamp"

    .line 264
    :cond_8
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 266
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
