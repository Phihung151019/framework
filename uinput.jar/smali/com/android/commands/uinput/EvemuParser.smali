.class public Lcom/android/commands/uinput/EvemuParser;
.super Ljava/lang/Object;
.source "EvemuParser.java"

# interfaces
.implements Lcom/android/commands/uinput/EventParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;,
        Lcom/android/commands/uinput/EvemuParser$ParsingException;
    }
.end annotation


# static fields
.field private static final DEVICE_ID:I = 0x1

.field private static final REGISTRATION_DELAY_NANOS:I = 0x1dcd6500

.field private static final TAG:Ljava/lang/String; = "UinputEvemuParser"


# instance fields
.field private mLastEventTimeMicros:J

.field private final mQueuedEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/commands/uinput/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/uinput/EvemuParser;->mLastEventTimeMicros:J

    .line 157
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/commands/uinput/EvemuParser;->mQueuedEvents:Ljava/util/Queue;

    .line 160
    new-instance v0, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, p1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;-><init>(Ljava/io/LineNumberReader;)V

    iput-object v0, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    .line 161
    iget-object v0, p0, Lcom/android/commands/uinput/EvemuParser;->mQueuedEvents:Ljava/util/Queue;

    invoke-direct {p0}, Lcom/android/commands/uinput/EvemuParser;->parseRegistrationEvent()Lcom/android/commands/uinput/Event;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lcom/android/commands/uinput/Event$Builder;

    invoke-direct {v0}, Lcom/android/commands/uinput/Event$Builder;-><init>()V

    .line 168
    .local v0, "delayEb":Lcom/android/commands/uinput/Event$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/commands/uinput/Event$Builder;->setId(I)V

    .line 169
    sget-object v1, Lcom/android/commands/uinput/Event$Command;->DELAY:Lcom/android/commands/uinput/Event$Command;

    invoke-virtual {v0, v1}, Lcom/android/commands/uinput/Event$Builder;->setCommand(Lcom/android/commands/uinput/Event$Command;)V

    .line 170
    const-wide/32 v1, 0x1dcd6500

    invoke-virtual {v0, v1, v2}, Lcom/android/commands/uinput/Event$Builder;->setDurationNanos(J)V

    .line 171
    iget-object v1, p0, Lcom/android/commands/uinput/EvemuParser;->mQueuedEvents:Ljava/util/Queue;

    invoke-virtual {v0}, Lcom/android/commands/uinput/Event$Builder;->build()Lcom/android/commands/uinput/Event;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method private acceptLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    invoke-virtual {v0}, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->peekLine()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "line":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 390
    return-object v1

    .line 392
    :cond_0
    const-string v2, ": "

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "lineParts":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x1

    if-lt v4, v3, :cond_2

    .line 397
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    iget-object v1, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    invoke-virtual {v1}, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->advance()V

    .line 399
    aget-object v1, v2, v5

    return-object v1

    .line 401
    :cond_1
    return-object v1

    .line 394
    :cond_2
    new-instance v1, Lcom/android/commands/uinput/EvemuParser$ParsingException;

    iget-object v3, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    .line 395
    invoke-virtual {v3}, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->getPreviousLineNumber()I

    move-result v3

    add-int/2addr v3, v5

    const-string v4, "Missing type separator \': \'"

    invoke-direct {v1, v4, v0, v3}, Lcom/android/commands/uinput/EvemuParser$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private static bitmapToEventCodes(Ljava/util/List;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 433
    .local p0, "bytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v0, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "iByte":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 435
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 436
    .local v2, "b":I
    const/4 v3, 0x0

    .local v3, "iBit":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 437
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 438
    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    shr-int/lit8 v2, v2, 0x1

    .line 436
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 434
    .end local v2    # "b":I
    .end local v3    # "iBit":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "iByte":I
    :cond_2
    invoke-static {v0}, Lcom/android/commands/uinput/EvemuParser;->unboxIntList(Ljava/util/List;)[I

    move-result-object v1

    return-object v1
.end method

.method private expectLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    invoke-direct {p0, p1}, Lcom/android/commands/uinput/EvemuParser;->acceptLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 376
    return-object v0

    .line 372
    :cond_0
    new-instance v1, Lcom/android/commands/uinput/EvemuParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected line of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. (Lines should be in the order N, I, P, B, A, L, S, E.)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    .line 374
    invoke-virtual {v3}, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->peekLine()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    invoke-virtual {v4}, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->getPreviousLineNumber()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/commands/uinput/EvemuParser$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method private expectParts(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "numParts"    # I

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, p2, :cond_0

    .line 412
    return-object v0

    .line 408
    :cond_0
    new-instance v1, Lcom/android/commands/uinput/EvemuParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a line with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " space-separated parts, but found one with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    invoke-direct {v1, v2, v3}, Lcom/android/commands/uinput/EvemuParser$ParsingException;-><init>(Ljava/lang/String;Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;)V

    throw v1
.end method

.method private parseAbsInfos()Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 332
    .local v0, "absInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lsrc/com/android/commands/uinput/InputAbsInfo;>;"
    const-string v1, "A"

    invoke-direct {p0, v1}, Lcom/android/commands/uinput/EvemuParser;->acceptLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    .line 334
    invoke-virtual {v2}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "parts":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    array-length v4, v3

    const/4 v6, 0x6

    if-gt v4, v6, :cond_1

    .line 341
    const/4 v4, 0x0

    aget-object v6, v3, v4

    const/16 v7, 0x10

    invoke-direct {p0, v6, v7}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 342
    .local v6, "axisCode":I
    new-instance v7, Lsrc/com/android/commands/uinput/InputAbsInfo;

    invoke-direct {v7}, Lsrc/com/android/commands/uinput/InputAbsInfo;-><init>()V

    .line 343
    .local v7, "info":Lsrc/com/android/commands/uinput/InputAbsInfo;
    const/4 v8, 0x1

    aget-object v8, v3, v8

    const/16 v9, 0xa

    invoke-direct {p0, v8, v9}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lsrc/com/android/commands/uinput/InputAbsInfo;->minimum:I

    .line 344
    const/4 v8, 0x2

    aget-object v8, v3, v8

    invoke-direct {p0, v8, v9}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lsrc/com/android/commands/uinput/InputAbsInfo;->maximum:I

    .line 345
    const/4 v8, 0x3

    aget-object v8, v3, v8

    invoke-direct {p0, v8, v9}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lsrc/com/android/commands/uinput/InputAbsInfo;->fuzz:I

    .line 346
    const/4 v8, 0x4

    aget-object v8, v3, v8

    invoke-direct {p0, v8, v9}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lsrc/com/android/commands/uinput/InputAbsInfo;->flat:I

    .line 347
    array-length v8, v3

    if-le v8, v5, :cond_0

    aget-object v4, v3, v5

    invoke-direct {p0, v4, v9}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v4

    :cond_0
    iput v4, v7, Lsrc/com/android/commands/uinput/InputAbsInfo;->resolution:I

    .line 348
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 349
    invoke-direct {p0, v1}, Lcom/android/commands/uinput/EvemuParser;->acceptLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v6    # "axisCode":I
    .end local v7    # "info":Lsrc/com/android/commands/uinput/InputAbsInfo;
    goto :goto_0

    .line 336
    .restart local v3    # "parts":[Ljava/lang/String;
    :cond_1
    new-instance v1, Lcom/android/commands/uinput/EvemuParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsInfo lines should have the format \'A: <index (hex)> <min> <max> <fuzz> <flat> [<resolution>]\'; expected 5 or 6 numbers but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    invoke-direct {v1, v4, v5}, Lcom/android/commands/uinput/EvemuParser$ParsingException;-><init>(Ljava/lang/String;Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;)V

    throw v1

    .line 351
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private parseAxisBitmaps(Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    .local p1, "config":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 282
    .local v0, "axisBitmapParts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const-string v1, "B"

    invoke-direct {p0, v1}, Lcom/android/commands/uinput/EvemuParser;->acceptLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_3

    .line 284
    invoke-virtual {v2}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "parts":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 290
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/16 v5, 0x10

    invoke-direct {p0, v4, v5}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 292
    .local v4, "eventType":I
    if-eqz v4, :cond_1

    .line 293
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 294
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 297
    .local v5, "bitmapParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    array-length v7, v3

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 298
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_1

    .line 299
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    aget-object v8, v3, v6

    invoke-direct {p0, v8, v2}, Lcom/android/commands/uinput/EvemuParser;->parseBitmapPart(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 302
    .end local v5    # "bitmapParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "i":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/commands/uinput/EvemuParser;->acceptLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "eventType":I
    goto :goto_0

    .line 286
    .restart local v3    # "parts":[Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/android/commands/uinput/EvemuParser$ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected event type and at least one bitmap byte on \'B:\' line; only found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " elements"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    invoke-direct {v1, v4, v5}, Lcom/android/commands/uinput/EvemuParser$ParsingException;-><init>(Ljava/lang/String;Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;)V

    throw v1

    .line 304
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v1, "eventTypesToSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 306
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 307
    goto :goto_2

    .line 309
    :cond_4
    nop

    .line 310
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/commands/uinput/Event$UinputControlCode;->forEventType(I)Lcom/android/commands/uinput/Event$UinputControlCode;

    move-result-object v5

    .line 311
    .local v5, "controlCode":Lcom/android/commands/uinput/Event$UinputControlCode;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/android/commands/uinput/EvemuParser;->bitmapToEventCodes(Ljava/util/List;)[I

    move-result-object v6

    .line 312
    .local v6, "eventCodes":[I
    if-eqz v5, :cond_5

    array-length v7, v6

    if-lez v7, :cond_5

    .line 313
    invoke-virtual {v5}, Lcom/android/commands/uinput/Event$UinputControlCode;->getValue()I

    move-result v7

    invoke-virtual {p1, v7, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 314
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v5    # "controlCode":Lcom/android/commands/uinput/Event$UinputControlCode;
    .end local v6    # "eventCodes":[I
    :cond_5
    goto :goto_2

    .line 317
    :cond_6
    sget-object v3, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_EVBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    .line 318
    invoke-virtual {v3}, Lcom/android/commands/uinput/Event$UinputControlCode;->getValue()I

    move-result v3

    invoke-static {v1}, Lcom/android/commands/uinput/EvemuParser;->unboxIntList(Ljava/util/List;)[I

    move-result-object v4

    .line 317
    invoke-virtual {p1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 319
    return-void
.end method

.method private parseBitmapPart(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "part"    # Ljava/lang/String;
    .param p2, "line"    # Ljava/lang/String;

    .line 322
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 323
    .local v0, "b":I
    if-ltz v0, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 327
    return v0

    .line 324
    :cond_0
    new-instance v1, Lcom/android/commands/uinput/EvemuParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bitmap part \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' invalid; parts must be hexadecimal values between 00 and ff."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    invoke-direct {v1, v2, v3}, Lcom/android/commands/uinput/EvemuParser$ParsingException;-><init>(Ljava/lang/String;Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;)V

    throw v1
.end method

.method private parseInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .line 417
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/commands/uinput/EvemuParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a valid integer of base "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    invoke-direct {v1, v2, v3}, Lcom/android/commands/uinput/EvemuParser$ParsingException;-><init>(Ljava/lang/String;Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;)V

    throw v1
.end method

.method private parseLong(Ljava/lang/String;I)J
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .line 426
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/commands/uinput/EvemuParser$ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a valid long of base "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    invoke-direct {v1, v2, v3}, Lcom/android/commands/uinput/EvemuParser$ParsingException;-><init>(Ljava/lang/String;Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;)V

    throw v1
.end method

.method private parseProperties()[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "propBitmapParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "P"

    invoke-direct {p0, v1}, Lcom/android/commands/uinput/EvemuParser;->acceptLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    .line 270
    invoke-virtual {v2}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "parts":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    array-length v5, v3

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 272
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 273
    .local v6, "part":Ljava/lang/String;
    invoke-direct {p0, v6, v2}, Lcom/android/commands/uinput/EvemuParser;->parseBitmapPart(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v6    # "part":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 275
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/commands/uinput/EvemuParser;->acceptLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .end local v3    # "parts":[Ljava/lang/String;
    goto :goto_0

    .line 277
    :cond_1
    invoke-static {v0}, Lcom/android/commands/uinput/EvemuParser;->bitmapToEventCodes(Ljava/util/List;)[I

    move-result-object v1

    return-object v1
.end method

.method private parseRegistrationEvent()Lcom/android/commands/uinput/Event;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/android/commands/uinput/Event$Builder;

    invoke-direct {v0}, Lcom/android/commands/uinput/Event$Builder;-><init>()V

    .line 231
    .local v0, "eb":Lcom/android/commands/uinput/Event$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/commands/uinput/Event$Builder;->setId(I)V

    .line 232
    sget-object v2, Lcom/android/commands/uinput/Event$Command;->REGISTER:Lcom/android/commands/uinput/Event$Command;

    invoke-virtual {v0, v2}, Lcom/android/commands/uinput/Event$Builder;->setCommand(Lcom/android/commands/uinput/Event$Command;)V

    .line 233
    const-string v2, "N"

    invoke-direct {p0, v2}, Lcom/android/commands/uinput/EvemuParser;->expectLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/commands/uinput/Event$Builder;->setName(Ljava/lang/String;)V

    .line 235
    const-string v2, "I"

    invoke-direct {p0, v2}, Lcom/android/commands/uinput/EvemuParser;->expectLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "idsLine":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/android/commands/uinput/EvemuParser;->expectParts(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "idStrings":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/16 v5, 0x10

    invoke-direct {p0, v4, v5}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/commands/uinput/Event$Builder;->setBusId(I)V

    .line 238
    aget-object v1, v3, v1

    invoke-direct {p0, v1, v5}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/commands/uinput/Event$Builder;->setVendorId(I)V

    .line 239
    const/4 v1, 0x2

    aget-object v1, v3, v1

    invoke-direct {p0, v1, v5}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/commands/uinput/Event$Builder;->setProductId(I)V

    .line 240
    const/4 v1, 0x3

    aget-object v1, v3, v1

    invoke-direct {p0, v1, v5}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/commands/uinput/Event$Builder;->setVersionId(I)V

    .line 242
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 243
    .local v1, "config":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    sget-object v4, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_PROPBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    invoke-virtual {v4}, Lcom/android/commands/uinput/Event$UinputControlCode;->getValue()I

    move-result v4

    invoke-direct {p0}, Lcom/android/commands/uinput/EvemuParser;->parseProperties()[I

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 245
    invoke-direct {p0, v1}, Lcom/android/commands/uinput/EvemuParser;->parseAxisBitmaps(Landroid/util/SparseArray;)V

    .line 247
    invoke-virtual {v0, v1}, Lcom/android/commands/uinput/Event$Builder;->setConfiguration(Landroid/util/SparseArray;)V

    .line 248
    sget-object v4, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_FFBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    invoke-virtual {v4}, Lcom/android/commands/uinput/Event$UinputControlCode;->getValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    sget-object v4, Lcom/android/commands/uinput/Event$UinputControlCode;->UI_SET_FFBIT:Lcom/android/commands/uinput/Event$UinputControlCode;

    invoke-virtual {v4}, Lcom/android/commands/uinput/Event$UinputControlCode;->getValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v4, v4

    invoke-virtual {v0, v4}, Lcom/android/commands/uinput/Event$Builder;->setFfEffectsMax(I)V

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/android/commands/uinput/EvemuParser;->parseAbsInfos()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/commands/uinput/Event$Builder;->setAbsInfo(Landroid/util/SparseArray;)V

    .line 260
    const-string v4, "L"

    invoke-direct {p0, v4}, Lcom/android/commands/uinput/EvemuParser;->skipUnsupportedLines(Ljava/lang/String;)V

    .line 261
    const-string v4, "S"

    invoke-direct {p0, v4}, Lcom/android/commands/uinput/EvemuParser;->skipUnsupportedLines(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Lcom/android/commands/uinput/Event$Builder;->build()Lcom/android/commands/uinput/Event;

    move-result-object v4

    return-object v4
.end method

.method private skipUnsupportedLines(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1}, Lcom/android/commands/uinput/EvemuParser;->acceptLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/commands/uinput/EvemuParser;->acceptLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method private static unboxIntList(Ljava/util/List;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 447
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 448
    .local v0, "array":[I
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/commands/uinput/EvemuParser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/commands/uinput/EvemuParser$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    .line 449
    return-object v0
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/uinput/Event;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/android/commands/uinput/EvemuParser;->mQueuedEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/commands/uinput/EvemuParser;->mQueuedEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/uinput/Event;

    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    invoke-virtual {v0}, Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;->isAtEndOfFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 186
    :cond_1
    const-string v0, "E"

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/EvemuParser;->expectLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "line":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/commands/uinput/EvemuParser;->expectParts(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "timeParts":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 193
    aget-object v2, v3, v2

    .line 194
    const/16 v4, 0xa

    invoke-direct {p0, v2, v4}, Lcom/android/commands/uinput/EvemuParser;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    const/4 v2, 0x1

    aget-object v8, v3, v2

    invoke-direct {p0, v8, v4}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 195
    .local v6, "timeMicros":J
    new-instance v8, Lcom/android/commands/uinput/Event$Builder;

    invoke-direct {v8}, Lcom/android/commands/uinput/Event$Builder;-><init>()V

    .line 196
    .local v8, "eb":Lcom/android/commands/uinput/Event$Builder;
    invoke-virtual {v8, v2}, Lcom/android/commands/uinput/Event$Builder;->setId(I)V

    .line 197
    sget-object v9, Lcom/android/commands/uinput/Event$Command;->INJECT:Lcom/android/commands/uinput/Event$Command;

    invoke-virtual {v8, v9}, Lcom/android/commands/uinput/Event$Builder;->setCommand(Lcom/android/commands/uinput/Event$Command;)V

    .line 198
    aget-object v9, v1, v2

    const/16 v10, 0x10

    invoke-direct {p0, v9, v10}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 199
    .local v9, "eventType":I
    aget-object v5, v1, v5

    invoke-direct {p0, v5, v10}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 200
    .local v5, "eventCode":I
    const/4 v10, 0x3

    aget-object v10, v1, v10

    invoke-direct {p0, v10, v4}, Lcom/android/commands/uinput/EvemuParser;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 201
    .local v4, "value":I
    filled-new-array {v9, v5, v4}, [I

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/commands/uinput/Event$Builder;->setInjections([I)V

    .line 203
    iget-wide v10, p0, Lcom/android/commands/uinput/EvemuParser;->mLastEventTimeMicros:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    .line 205
    iput-wide v6, p0, Lcom/android/commands/uinput/EvemuParser;->mLastEventTimeMicros:J

    .line 206
    invoke-virtual {v8}, Lcom/android/commands/uinput/Event$Builder;->build()Lcom/android/commands/uinput/Event;

    move-result-object v2

    return-object v2

    .line 208
    :cond_2
    iget-wide v10, p0, Lcom/android/commands/uinput/EvemuParser;->mLastEventTimeMicros:J

    sub-long v10, v6, v10

    .line 209
    .local v10, "delayMicros":J
    invoke-virtual {v8, v10, v11}, Lcom/android/commands/uinput/Event$Builder;->setTimestampOffsetMicros(J)V

    .line 210
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_3

    .line 211
    invoke-virtual {v8}, Lcom/android/commands/uinput/Event$Builder;->build()Lcom/android/commands/uinput/Event;

    move-result-object v2

    return-object v2

    .line 214
    :cond_3
    iget-object v12, p0, Lcom/android/commands/uinput/EvemuParser;->mQueuedEvents:Ljava/util/Queue;

    invoke-virtual {v8}, Lcom/android/commands/uinput/Event$Builder;->build()Lcom/android/commands/uinput/Event;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 215
    iput-wide v6, p0, Lcom/android/commands/uinput/EvemuParser;->mLastEventTimeMicros:J

    .line 216
    new-instance v12, Lcom/android/commands/uinput/Event$Builder;

    invoke-direct {v12}, Lcom/android/commands/uinput/Event$Builder;-><init>()V

    .line 217
    .local v12, "delayEb":Lcom/android/commands/uinput/Event$Builder;
    invoke-virtual {v12, v2}, Lcom/android/commands/uinput/Event$Builder;->setId(I)V

    .line 218
    sget-object v2, Lcom/android/commands/uinput/Event$Command;->DELAY:Lcom/android/commands/uinput/Event$Command;

    invoke-virtual {v12, v2}, Lcom/android/commands/uinput/Event$Builder;->setCommand(Lcom/android/commands/uinput/Event$Command;)V

    .line 219
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    invoke-virtual {v12, v13, v14}, Lcom/android/commands/uinput/Event$Builder;->setDurationNanos(J)V

    .line 220
    invoke-virtual {v12}, Lcom/android/commands/uinput/Event$Builder;->build()Lcom/android/commands/uinput/Event;

    move-result-object v2

    return-object v2

    .line 190
    .end local v4    # "value":I
    .end local v5    # "eventCode":I
    .end local v6    # "timeMicros":J
    .end local v8    # "eb":Lcom/android/commands/uinput/Event$Builder;
    .end local v9    # "eventType":I
    .end local v10    # "delayMicros":J
    .end local v12    # "delayEb":Lcom/android/commands/uinput/Event$Builder;
    :cond_4
    new-instance v4, Lcom/android/commands/uinput/EvemuParser$ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid timestamp \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v2, v1, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' (should contain a single \'.\')"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/commands/uinput/EvemuParser;->mReader:Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;

    invoke-direct {v4, v2, v5}, Lcom/android/commands/uinput/EvemuParser$ParsingException;-><init>(Ljava/lang/String;Lcom/android/commands/uinput/EvemuParser$CommentAwareReader;)V

    throw v4
.end method
