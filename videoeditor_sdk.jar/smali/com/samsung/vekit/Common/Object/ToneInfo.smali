.class public Lcom/samsung/vekit/Common/Object/ToneInfo;
.super Ljava/lang/Object;
.source "ToneInfo.java"


# instance fields
.field private maxToneType:Ljava/lang/Integer;

.field private toneArray:[F


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ToneType;->values()[Lcom/samsung/vekit/Common/Type/ToneType;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->maxToneType:Ljava/lang/Integer;

    .line 17
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->maxToneType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->toneArray:[F

    .line 18
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ToneType;->values()[Lcom/samsung/vekit/Common/Type/ToneType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 19
    .local v3, "type":Lcom/samsung/vekit/Common/Type/ToneType;
    iget-object v4, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->toneArray:[F

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Type/ToneType;->ordinal()I

    move-result v5

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 18
    .end local v3    # "type":Lcom/samsung/vekit/Common/Type/ToneType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public getTone(Lcom/samsung/vekit/Common/Type/ToneType;)F
    .locals 2
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ToneType;

    .line 33
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->toneArray:[F

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ToneType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getToneArray()[F
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->toneArray:[F

    return-object v0
.end method

.method public setTone(Lcom/samsung/vekit/Common/Type/ToneType;I)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/vekit/Common/Type/ToneType;
    .param p2, "intensity"    # I

    .line 23
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->toneArray:[F

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ToneType;->ordinal()I

    move-result v1

    int-to-float v2, p2

    aput v2, v0, v1

    .line 24
    return-void
.end method

.method public setToneInfo(Lcom/samsung/vekit/Common/Object/ToneInfo;)V
    .locals 8
    .param p1, "srcToneInfo"    # Lcom/samsung/vekit/Common/Object/ToneInfo;

    .line 27
    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ToneInfo;->getToneArray()[F

    move-result-object v0

    .line 28
    .local v0, "srcToneArray":[F
    invoke-static {}, Lcom/samsung/vekit/Common/Type/ToneType;->values()[Lcom/samsung/vekit/Common/Type/ToneType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 29
    .local v4, "type":Lcom/samsung/vekit/Common/Type/ToneType;
    iget-object v5, p0, Lcom/samsung/vekit/Common/Object/ToneInfo;->toneArray:[F

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Type/ToneType;->ordinal()I

    move-result v6

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Type/ToneType;->ordinal()I

    move-result v7

    aget v7, v0, v7

    aput v7, v5, v6

    .line 28
    .end local v4    # "type":Lcom/samsung/vekit/Common/Type/ToneType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
