.class final Lcom/stanfy/gsonxml/Stack;
.super Ljava/lang/Object;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    .local p0, "this":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    return-void
.end method

.method private ensureStack()V
    .locals 4

    .line 58
    .local p0, "this":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<TT;>;"
    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    iget-object v1, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 59
    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    .local v0, "newStack":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iput-object v0, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    .line 63
    .end local v0    # "newStack":[Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup(I)I
    .locals 1
    .param p1, "count"    # I

    .line 33
    .local p0, "this":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<TT;>;"
    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    invoke-virtual {p0, p1, v0}, Lcom/stanfy/gsonxml/Stack;->cleanup(II)I

    move-result v0

    return v0
.end method

.method public cleanup(II)I
    .locals 5
    .param p1, "count"    # I
    .param p2, "oldStackSize"    # I

    .line 37
    .local p0, "this":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<TT;>;"
    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    .line 38
    .local v0, "curStackSize":I
    if-ge p2, v0, :cond_1

    .line 39
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    iget-object v2, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    sub-int v3, v1, p1

    iget-object v4, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v2, v3

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    goto :goto_1

    .line 44
    :cond_1
    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    sub-int v2, p1, p2

    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    .line 46
    :goto_1
    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    if-gez v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    .line 47
    :cond_2
    sub-int v1, p2, p1

    return v1
.end method

.method public drop()V
    .locals 1

    .line 29
    .local p0, "this":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<TT;>;"
    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    .line 30
    return-void
.end method

.method public fix(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<TT;>;"
    .local p1, "check":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    .line 52
    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 53
    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    .line 55
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<TT;>;"
    iget-object v0, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 16
    .local p0, "this":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<TT;>;"
    iget-object v0, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/stanfy/gsonxml/Stack;->ensureStack()V

    .line 67
    iget-object v0, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    aput-object p1, v0, v1

    .line 68
    return-void
.end method

.method public pushAt(ILjava/lang/Object;)V
    .locals 5
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<TT;>;"
    .local p2, "scope":Ljava/lang/Object;, "TT;"
    move v0, p1

    .line 71
    .local v0, "pos":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/stanfy/gsonxml/Stack;->ensureStack()V

    .line 73
    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 74
    iget-object v2, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v2, v3

    .line 73
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 77
    iget v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    .line 78
    return-void
.end method

.method public size()I
    .locals 1

    .line 20
    .local p0, "this":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<TT;>;"
    iget v0, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 84
    .local p0, "this":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/stanfy/gsonxml/Stack;->size:I

    if-ge v1, v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/stanfy/gsonxml/Stack;->array:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
