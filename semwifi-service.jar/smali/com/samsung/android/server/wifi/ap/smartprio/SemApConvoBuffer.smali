.class public Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemApConvoBuffer"

.field public static ppParams:[I


# instance fields
.field private final mBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBufferCapacity:I

.field private final mConvoKey:Ljava/lang/String;

.field private final mNumSerCat:I

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mVersion:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mConvoKey:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 15
    .line 16
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mBufferCapacity:I

    .line 17
    .line 18
    iput p3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mNumSerCat:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    const/16 p2, 0xa

    .line 22
    .line 23
    filled-new-array {p1, p2}, [I

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sput-object p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->ppParams:[I

    .line 28
    .line 29
    iput p4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mVersion:I

    .line 30
    .line 31
    return-void
.end method

.method private argMax([I)I
    .locals 6

    .line 1
    const/4 p0, 0x0

    .line 2
    aget v0, p1, p0

    .line 3
    .line 4
    int-to-double v0, v0

    .line 5
    const/4 v2, 0x1

    .line 6
    :goto_0
    array-length v3, p1

    .line 7
    if-ge v2, v3, :cond_1

    .line 8
    .line 9
    aget v3, p1, v2

    .line 10
    .line 11
    int-to-double v4, v3

    .line 12
    cmpg-double v4, v0, v4

    .line 13
    .line 14
    if-gez v4, :cond_0

    .line 15
    .line 16
    int-to-double v0, v3

    .line 17
    move p0, v2

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return p0
.end method

.method private biasVoting([I)I
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    aget p1, p1, p0

    .line 3
    .line 4
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->ppParams:[I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    return v1
.end method

.method private countFrequency(Ljava/util/LinkedList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mNumSerCat:I

    .line 2
    .line 3
    new-array p0, p0, [I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    aget v1, p0, v0

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    aput v1, p0, v0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object p0
.end method

.method private postProcessing([I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->ppParams:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->biasVoting([I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->biasVoting([I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method private vote()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->countFrequency(Ljava/util/LinkedList;)[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/stream/IntStream;->sum()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mBufferCapacity:I

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->postProcessing([I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method


# virtual methods
.method public getSerPred()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->vote()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public getVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mVersion:I

    .line 2
    .line 3
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Convo Key: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mConvoKey:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ": "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " --- ser: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->vote()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    const-string v1, "; "

    .line 33
    .line 34
    invoke-static {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public update(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mBufferCapacity:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApConvoBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
