.class public Lorg/apache/commons/math3/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<+TK;+TV;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/math3/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/apache/commons/math3/util/Pair<",
            "TK;TV;>;"
        }
    .end annotation

    .line 154
    .local p0, "k":Ljava/lang/Object;, "TK;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 105
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 106
    return v0

    .line 108
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/util/Pair;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 109
    return v2

    .line 111
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    .line 112
    .local v1, "oP":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<**>;"
    iget-object v3, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    if-nez v3, :cond_2

    iget-object v3, v1, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    iget-object v4, v1, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    if-nez v3, :cond_3

    iget-object v3, v1, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    iget-object v4, v1, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 128
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 130
    .local v0, "result":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 131
    .local v1, "h":I
    :goto_1
    mul-int/lit8 v2, v0, 0x25

    add-int/2addr v2, v1

    ushr-int/lit8 v3, v1, 0x10

    xor-int v0, v2, v3

    .line 133
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
