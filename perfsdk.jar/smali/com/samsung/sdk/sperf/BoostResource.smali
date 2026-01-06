.class Lcom/samsung/sdk/sperf/BoostResource;
.super Ljava/lang/Object;
.source "BoostResource.java"


# static fields
.field protected static final NO_RESOURCE:I = 0x3d8aee6

.field protected static final TIMEOUT_INF:I = 0x5f5e0ff


# instance fields
.field private defaultLevel:I

.field private levelTable:[I

.field private maxTimeout:I


# direct methods
.method public constructor <init>([II)V
    .locals 3
    .param p1, "levelTable"    # [I
    .param p2, "maxTimeout"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sdk/sperf/BoostResource;->levelTable:[I

    .line 7
    const v0, 0x3d8aee6

    iput v0, p0, Lcom/samsung/sdk/sperf/BoostResource;->maxTimeout:I

    .line 8
    iput v0, p0, Lcom/samsung/sdk/sperf/BoostResource;->defaultLevel:I

    .line 11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timeout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/samsung/sdk/sperf/BoostResource;->levelTable:[I

    .line 16
    iput p2, p0, Lcom/samsung/sdk/sperf/BoostResource;->maxTimeout:I

    .line 17
    return-void
.end method


# virtual methods
.method public adjustLevel(I)I
    .locals 3
    .param p1, "level"    # I

    .line 42
    iget-object v0, p0, Lcom/samsung/sdk/sperf/BoostResource;->levelTable:[I

    array-length v0, v0

    const/4 v1, 0x1

    const v2, 0x3d8aee6

    if-ge v0, v1, :cond_0

    .line 43
    return v2

    .line 46
    :cond_0
    if-gez p1, :cond_1

    .line 47
    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 48
    return v2

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/samsung/sdk/sperf/BoostResource;->levelTable:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 50
    return v2

    .line 53
    :cond_2
    return p1
.end method

.method public adjustTimeout(I)I
    .locals 1
    .param p1, "timeout"    # I

    .line 58
    if-gez p1, :cond_0

    .line 59
    const v0, 0x3d8aee6

    return v0

    .line 60
    :cond_0
    iget v0, p0, Lcom/samsung/sdk/sperf/BoostResource;->maxTimeout:I

    if-le p1, v0, :cond_1

    .line 61
    iget v0, p0, Lcom/samsung/sdk/sperf/BoostResource;->maxTimeout:I

    return v0

    .line 63
    :cond_1
    return p1
.end method

.method public check(II)Z
    .locals 4
    .param p1, "level"    # I
    .param p2, "timeout"    # I

    .line 23
    const/4 v0, 0x0

    if-lez p2, :cond_4

    iget v1, p0, Lcom/samsung/sdk/sperf/BoostResource;->maxTimeout:I

    if-le p2, v1, :cond_0

    goto :goto_2

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    .local v1, "isExist":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostResource;->levelTable:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 29
    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostResource;->levelTable:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_1

    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 35
    return v0

    .line 38
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 24
    .end local v1    # "isExist":Z
    .end local v2    # "i":I
    :cond_4
    :goto_2
    return v0
.end method

.method public getDefaultLevel()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/samsung/sdk/sperf/BoostResource;->defaultLevel:I

    return v0
.end method

.method public getRealBoostLevel(I)I
    .locals 2
    .param p1, "level"    # I

    .line 68
    iget-object v0, p0, Lcom/samsung/sdk/sperf/BoostResource;->levelTable:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 69
    return v1

    .line 71
    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/sdk/sperf/BoostResource;->levelTable:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/samsung/sdk/sperf/BoostResource;->levelTable:[I

    aget v0, v0, p1

    return v0

    .line 72
    :cond_2
    :goto_0
    return v1
.end method

.method public setDefaultLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 78
    iput p1, p0, Lcom/samsung/sdk/sperf/BoostResource;->defaultLevel:I

    .line 79
    return-void
.end method
