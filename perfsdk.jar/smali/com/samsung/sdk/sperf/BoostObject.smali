.class Lcom/samsung/sdk/sperf/BoostObject;
.super Ljava/lang/Object;
.source "BoostObject.java"


# static fields
.field public static final NO_ID:I = -0x1

.field private static final PRIO_HIGHER_IDX_IS_BETTER:I = 0x0

.field private static final PRIO_LAST_OVERWRITE:I = 0x2

.field private static final PRIO_LOWER_IDX_IS_BETTER:I = 0x1

.field private static priority:[I


# instance fields
.field private id:I

.field private levels:[I

.field private timeouts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    .line 15
    sget-object v0, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 16
    sget-object v0, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    aput v1, v0, v2

    .line 17
    sget-object v0, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 18
    sget-object v0, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 19
    sget-object v0, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    const/4 v4, 0x4

    aput v2, v0, v4

    .line 20
    sget-object v0, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    const/4 v4, 0x5

    aput v1, v0, v4

    .line 21
    sget-object v0, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    const/4 v4, 0x6

    aput v2, v0, v4

    .line 22
    sget-object v0, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    const/4 v4, 0x7

    aput v1, v0, v4

    .line 23
    sget-object v0, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 24
    sget-object v0, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    const/16 v1, 0x9

    aput v2, v0, v1

    .line 25
    sget-object v0, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sdk/sperf/BoostObject;->id:I

    .line 29
    const/16 v0, 0xb

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    .line 30
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    .line 32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 33
    iget-object v2, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    const v3, 0x3d8aee6

    aput v3, v2, v1

    .line 34
    iget-object v2, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    aput v3, v2, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private constructor <init>([I[I)V
    .locals 3
    .param p1, "levels"    # [I
    .param p2, "timeouts"    # [I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sdk/sperf/BoostObject;->id:I

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "i":I
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    .line 41
    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    .line 42
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    aget v2, p2, v0

    aput v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public combineBoostObject(Lcom/samsung/sdk/sperf/BoostObject;)Z
    .locals 6
    .param p1, "targetObject"    # Lcom/samsung/sdk/sperf/BoostObject;

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "target":I
    const/4 v1, 0x0

    .line 91
    .local v1, "type":I
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 92
    return v2

    .line 94
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_7

    .line 96
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/samsung/sdk/sperf/BoostObject;->getLevel(I)I

    move-result v3

    move v0, v3

    .line 97
    const v3, 0x3d8aee6

    if-ne v0, v3, :cond_1

    .line 98
    goto :goto_3

    .line 100
    :cond_1
    iget-object v5, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    aget v5, v5, v1

    if-eq v5, v3, :cond_5

    iget-object v5, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    aget v5, v5, v1

    if-ne v5, v3, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    sget-object v3, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    aget v3, v3, v1

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    aget v3, v3, v1

    if-ge v3, v0, :cond_3

    .line 104
    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    aput v0, v3, v1

    .line 105
    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    invoke-virtual {p1, v1}, Lcom/samsung/sdk/sperf/BoostObject;->getTimeout(I)I

    move-result v4

    aput v4, v3, v1

    goto :goto_2

    .line 106
    :cond_3
    sget-object v3, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    aget v3, v3, v1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    aget v3, v3, v1

    if-le v3, v0, :cond_4

    .line 107
    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    aput v0, v3, v1

    .line 108
    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    invoke-virtual {p1, v1}, Lcom/samsung/sdk/sperf/BoostObject;->getTimeout(I)I

    move-result v4

    aput v4, v3, v1

    goto :goto_2

    .line 109
    :cond_4
    sget-object v3, Lcom/samsung/sdk/sperf/BoostObject;->priority:[I

    aget v3, v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 110
    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    aput v0, v3, v1

    .line 111
    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    invoke-virtual {p1, v1}, Lcom/samsung/sdk/sperf/BoostObject;->getTimeout(I)I

    move-result v4

    aput v4, v3, v1

    goto :goto_2

    .line 101
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    aput v0, v3, v1

    .line 102
    iget-object v3, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    invoke-virtual {p1, v1}, Lcom/samsung/sdk/sperf/BoostObject;->getTimeout(I)I

    move-result v4

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_6
    :goto_2
    nop

    .line 94
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Combine Boost Object has array out of bounds on type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 116
    return v2

    .line 119
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_7
    return v4
.end method

.method public copyBoostObject()Lcom/samsung/sdk/sperf/BoostObject;
    .locals 3

    .line 84
    new-instance v0, Lcom/samsung/sdk/sperf/BoostObject;

    iget-object v1, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    iget-object v2, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    invoke-direct {v0, v1, v2}, Lcom/samsung/sdk/sperf/BoostObject;-><init>([I[I)V

    .line 85
    .local v0, "copyObject":Lcom/samsung/sdk/sperf/BoostObject;
    return-object v0
.end method

.method public getID()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/samsung/sdk/sperf/BoostObject;->id:I

    return v0
.end method

.method public getLevel(I)I
    .locals 1
    .param p1, "type"    # I

    .line 70
    if-ltz p1, :cond_1

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    aget v0, v0, p1

    return v0

    .line 71
    :cond_1
    :goto_0
    const v0, 0x3d8aee6

    return v0
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "type"    # I

    .line 77
    if-ltz p1, :cond_1

    const/16 v0, 0xb

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    aget v0, v0, p1

    return v0

    .line 78
    :cond_1
    :goto_0
    const v0, 0x3d8aee6

    return v0
.end method

.method public setID(I)V
    .locals 0
    .param p1, "id"    # I

    .line 51
    iput p1, p0, Lcom/samsung/sdk/sperf/BoostObject;->id:I

    .line 52
    return-void
.end method

.method public update(III)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "level"    # I
    .param p3, "timeout"    # I

    .line 60
    const/16 v0, 0xb

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    aput p2, v0, p1

    .line 64
    iget-object v0, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    aput p3, v0, p1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update Boost - type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   level : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sdk/sperf/BoostObject;->levels:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   timeouts : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sdk/sperf/BoostObject;->timeouts:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method
