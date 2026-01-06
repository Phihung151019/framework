.class public Lcom/samsung/android/game/input/InputRedirection$MapInfo;
.super Ljava/lang/Object;
.source "InputRedirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/input/InputRedirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapInfo"
.end annotation


# instance fields
.field needCopy:Z

.field final synthetic this$0:Lcom/samsung/android/game/input/InputRedirection;

.field tx:I

.field ty:I

.field type:I

.field vertexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/game/input/InputRedirection$VPointer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/game/input/InputRedirection;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/game/input/InputRedirection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->this$0:Lcom/samsung/android/game/input/InputRedirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    .line 224
    return-void
.end method


# virtual methods
.method addPointer(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 271
    new-instance v0, Lcom/samsung/android/game/input/InputRedirection$VPointer;

    iget-object v1, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->this$0:Lcom/samsung/android/game/input/InputRedirection;

    invoke-direct {v0, v1, p1, p2}, Lcom/samsung/android/game/input/InputRedirection$VPointer;-><init>(Lcom/samsung/android/game/input/InputRedirection;II)V

    .line 272
    .local v0, "v":Lcom/samsung/android/game/input/InputRedirection$VPointer;
    iget-object v1, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method isInMapArea(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 247
    iget-object v0, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/input/InputRedirection$VPointer;

    iget v0, v0, Lcom/samsung/android/game/input/InputRedirection$VPointer;->x:I

    .line 249
    .local v0, "left":I
    iget-object v2, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/input/InputRedirection$VPointer;

    iget v2, v2, Lcom/samsung/android/game/input/InputRedirection$VPointer;->y:I

    .line 250
    .local v2, "top":I
    iget-object v3, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/game/input/InputRedirection$VPointer;

    iget v3, v3, Lcom/samsung/android/game/input/InputRedirection$VPointer;->x:I

    .line 251
    .local v3, "right":I
    iget-object v5, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/game/input/InputRedirection$VPointer;

    iget v5, v5, Lcom/samsung/android/game/input/InputRedirection$VPointer;->y:I

    .line 252
    .local v5, "bottom":I
    if-le p1, v0, :cond_0

    if-ge p1, v3, :cond_0

    if-le p2, v2, :cond_0

    if-ge p2, v5, :cond_0

    .line 253
    return v4

    .line 255
    :cond_0
    return v1

    .line 256
    .end local v0    # "left":I
    .end local v2    # "top":I
    .end local v3    # "right":I
    .end local v5    # "bottom":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 257
    iget-object v0, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->pnPoly(IFF)Z

    move-result v0

    return v0

    .line 260
    :cond_2
    return v1
.end method

.method pnPoly(IFF)Z
    .locals 11
    .param p1, "vNum"    # I
    .param p2, "tx"    # F
    .param p3, "ty"    # F

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "ret":Z
    const/4 v1, 0x0

    .local v1, "i":I
    add-int/lit8 v2, p1, -0x1

    .local v2, "j":I
    :goto_0
    if-ge v1, p1, :cond_4

    .line 232
    iget-object v3, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/game/input/InputRedirection$VPointer;

    iget v3, v3, Lcom/samsung/android/game/input/InputRedirection$VPointer;->x:I

    int-to-float v3, v3

    .line 233
    .local v3, "x_i":F
    iget-object v4, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/game/input/InputRedirection$VPointer;

    iget v4, v4, Lcom/samsung/android/game/input/InputRedirection$VPointer;->x:I

    int-to-float v4, v4

    .line 234
    .local v4, "x_j":F
    iget-object v5, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/game/input/InputRedirection$VPointer;

    iget v5, v5, Lcom/samsung/android/game/input/InputRedirection$VPointer;->y:I

    int-to-float v5, v5

    .line 235
    .local v5, "y_i":F
    iget-object v6, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->vertexList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/game/input/InputRedirection$VPointer;

    iget v6, v6, Lcom/samsung/android/game/input/InputRedirection$VPointer;->y:I

    int-to-float v6, v6

    .line 237
    .local v6, "y_j":F
    cmpl-float v7, v5, p3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v7, :cond_0

    move v7, v9

    goto :goto_1

    :cond_0
    move v7, v8

    :goto_1
    cmpl-float v10, v6, p3

    if-lez v10, :cond_1

    move v10, v9

    goto :goto_2

    :cond_1
    move v10, v8

    :goto_2
    if-eq v7, v10, :cond_3

    sub-float v7, v4, v3

    sub-float v10, p3, v5

    mul-float/2addr v7, v10

    sub-float v10, v6, v5

    div-float/2addr v7, v10

    add-float/2addr v7, v3

    cmpg-float v7, p2, v7

    if-gez v7, :cond_3

    .line 239
    if-nez v0, :cond_2

    move v8, v9

    :cond_2
    move v0, v8

    .line 231
    :cond_3
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    move v2, v1

    move v1, v7

    goto :goto_0

    .line 242
    .end local v3    # "x_i":F
    .end local v4    # "x_j":F
    .end local v5    # "y_i":F
    .end local v6    # "y_j":F
    .end local v7    # "i":I
    .restart local v1    # "i":I
    :cond_4
    return v0
.end method

.method setData(IIIZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "needCopy"    # Z

    .line 264
    iput p1, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->type:I

    .line 265
    iput p2, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->tx:I

    .line 266
    iput p3, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->ty:I

    .line 267
    iput-boolean p4, p0, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->needCopy:Z

    .line 268
    return-void
.end method
