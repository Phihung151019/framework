.class Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;
.super Ljava/lang/Object;
.source "DownLinkTdoaMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownLinkTdoaMessageControl"
.end annotation


# instance fields
.field private final anchorlocation:I

.field private final numOfActiveRangingRoundIndexes:I

.field private final rxTimeStampLength:I

.field private final txTimeStampLength:I

.field private final txTimeStampType:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "control"    # I

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 289
    iput v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->txTimeStampType:I

    goto :goto_0

    .line 291
    :cond_0
    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->txTimeStampType:I

    .line 294
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 295
    iput v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->txTimeStampLength:I

    goto :goto_1

    .line 297
    :cond_1
    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->txTimeStampLength:I

    .line 300
    :goto_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2

    .line 301
    iput v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->rxTimeStampLength:I

    goto :goto_2

    .line 303
    :cond_2
    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->rxTimeStampLength:I

    .line 306
    :goto_2
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_3

    .line 307
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->anchorlocation:I

    goto :goto_3

    .line 308
    :cond_3
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_4

    .line 309
    iput v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->anchorlocation:I

    goto :goto_3

    .line 311
    :cond_4
    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->anchorlocation:I

    .line 313
    :goto_3
    and-int/lit16 v0, p1, 0x780

    shr-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->numOfActiveRangingRoundIndexes:I

    .line 314
    return-void
.end method


# virtual methods
.method public getAnchorlocation()I
    .locals 1

    .line 329
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->anchorlocation:I

    return v0
.end method

.method public getNumOfActiveRangingRoundIndexes()I
    .locals 1

    .line 333
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->numOfActiveRangingRoundIndexes:I

    return v0
.end method

.method public getRxTimeStampLength()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->rxTimeStampLength:I

    return v0
.end method

.method public getTxTimeStampLength()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->txTimeStampLength:I

    return v0
.end method

.method public getTxTimeStampType()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->txTimeStampType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 338
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 339
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    const-string v1, "INVALID"

    .line 340
    .local v1, "description":Ljava/lang/String;
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->txTimeStampType:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 341
    const-string v1, "Local Time Based"

    goto :goto_0

    .line 342
    :cond_0
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->txTimeStampType:I

    if-ne v2, v3, :cond_1

    .line 343
    const-string v1, "Common Time Based"

    .line 345
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 347
    const-string v1, "INVALID"

    .line 348
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->txTimeStampLength:I

    if-nez v2, :cond_2

    .line 349
    const-string v1, "40-bit TX timestamp"

    goto :goto_1

    .line 350
    :cond_2
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->txTimeStampLength:I

    if-ne v2, v3, :cond_3

    .line 351
    const-string v1, "64-bit TX timestamp"

    .line 353
    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 355
    const-string v1, "INVALID"

    .line 356
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->rxTimeStampLength:I

    if-nez v2, :cond_4

    .line 357
    const-string v1, "40-bit RX timestamp"

    goto :goto_2

    .line 358
    :cond_4
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->rxTimeStampLength:I

    if-ne v2, v3, :cond_5

    .line 359
    const-string v1, "64-bit RX timestamp"

    .line 361
    :cond_5
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 363
    const-string v1, "INVALID"

    .line 364
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->anchorlocation:I

    if-nez v2, :cond_6

    .line 365
    const-string v1, "No DT-Anchor location"

    goto :goto_3

    .line 366
    :cond_6
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->anchorlocation:I

    if-ne v2, v3, :cond_7

    .line 367
    const-string v1, "DT-Anchor location WGS84 coordinate system"

    goto :goto_3

    .line 368
    :cond_7
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->anchorlocation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 369
    const-string v1, "DT-Anchor location relative coordinate system"

    .line 371
    :cond_8
    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 373
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->numOfActiveRangingRoundIndexes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d Active RR indexes"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 374
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
