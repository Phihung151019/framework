.class Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;
.super Ljava/lang/Object;
.source "LmsAssemblyTrackerCTC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LmsPartCollector"
.end annotation


# instance fields
.field private blacklist mDestPort:I

.field private final blacklist mIsCdmaWapPush:Z

.field private final blacklist mMessageCount:I

.field private final blacklist mPdus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(IZ)V
    .locals 1

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mPdus:Ljava/util/Map;

    const/4 v0, -0x1

    .line 464
    iput v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mDestPort:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 470
    iput p1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mMessageCount:I

    .line 471
    iput-boolean p2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mIsCdmaWapPush:Z

    return-void

    .line 468
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "messageCount should be >= 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method blacklist add(I[BLjava/lang/Integer;)V
    .locals 1

    .line 476
    iget-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mIsCdmaWapPush:Z

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-ltz p1, :cond_2

    .line 480
    iget v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mMessageCount:I

    if-ge p1, v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mPdus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 487
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mDestPort:I

    :cond_1
    return-void

    .line 481
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Illegal sequence number"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist addAllFromCursor(Landroid/database/Cursor;III)V
    .locals 3

    .line 492
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 494
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 496
    invoke-interface {p1, p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 500
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->add(I[BLjava/lang/Integer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method blacklist getDestPort()I
    .locals 0

    .line 517
    iget p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mDestPort:I

    return p0
.end method

.method blacklist getPdusSequence()[[B
    .locals 4

    .line 509
    iget v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mMessageCount:I

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 510
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mMessageCount:I

    if-ge v1, v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mPdus:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method blacklist isEmpty()Z
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mPdus:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method
